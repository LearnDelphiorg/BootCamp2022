Unit SlidingPuzzle8;

Interface

Uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Platform;

Type
  TForm1 = Class(TForm)
             Text1: TText;
             Text2: TText;
             Text3: TText;
             Procedure FormCreate(Sender : TObject);
             Procedure OnClick (Sender : TObject);
           End;

  TCellState = (Empty, Occupied);

  TEdge = (CTop, CBottom, CLeft, CRight);

  TNumber = Class(TText)

            End;
  { -------- x
    |
    |
    |
    y
  }
  TCell = Class (TRectangle)
            Constructor Create(x, y : Integer; No : String);
            Procedure Swap(Edge : TEdge; y, x : Integer);
            Procedure ClearCell;
            Function FindWhatRowNo : Integer;
            Function FindWhatColumnNo : Integer;
            Function FindWhatState : TCellState;
            Private
              State : TCellState;
              y : Integer;
              x : Integer;
              Number : TNumber;
              AssignedNo : Integer;
          End;

  TPArrayRow = Array[0..2] Of TCell;

  TPArray = Array [0..2] Of TPArrayRow;

  TSPuzzle8 = Class
                Constructor Create;
                Private
                  PArray : TPArray;
              End;
Var
  Form1: TForm1;
  SP : TSPuzzle8;
  Frame : TRectangle;
Implementation

{$R *.fmx}

  Type
    TBlankCellPosition = Record
                           x : Integer;
                           y : Integer;
                         End;
    TRandomNoArray = Array[0..8] Of Integer;

 Var
    BlankCellPosition : TBlankCellPosition;

  Constructor TCell.Create(x,  y: Integer; No : String);
    Var
      Cell : TCell;
    Begin
      Cell := inherited Create(Form1);
      Cell.Width := 100;
      Cell.Height := 100;
      Cell.Position.X := 5 + x* Width;
      Cell.Position.Y := 5 + y*Height;
      Cell.y := y;
      Cell.x := x;
      Cell.State := Occupied;
      Cell.Fill.Color := $FFE0E0E0;
      Cell.Fill.Kind := TBrushKind.Solid;
      Cell.CornerType := TCornerType.Round;
      Cell.XRadius := 5;
      Cell.YRadius := 5;
      Cell.Visible := True;
      Cell.Parent := Form1;
      Cell.Number := TNumber.Create(Cell);
      Cell.Number.Position.x :=  0;
      Cell.Number.Position.y :=  0;
      Cell.Number.Width := 100;
      Cell.Number.Height := 100;
      Cell.Number.TextSettings.FontColor := TAlphaColorRec.Crimson;
      Cell.Number.Font.Size := 20;
      Cell.Number.Text := No;
      Cell.Number.Parent := Cell;
      Cell.Number.Visible := True;
      Cell.Number.OnClick := Form1.OnClick;
      Cell.Parent := Frame;
    End;

  Procedure WriteArray(P : TPArray);
    Var
      ColumnNo, RowNo : Integer;
    Begin
      For ColumnNo := 0 To 2
        Do
          Begin
            For RowNo := 0 To 2
              Do
                Begin
                End;
          End;

    End;

 Function GetState(State : TCellState) : Integer;
    Begin
      Case State Of
        Empty : Result := 0;
        Occupied : Result := 1;
      End;
    End;

  Procedure TCell.Swap(Edge : TEdge; y, x : Integer);
    Var
      Temp, NumberCell, BlankCell : TCell;
      i, j : Integer;
    Begin
      NumberCell := SP.PArray[x, y];
      Case Edge Of
        CTop : Begin
                 BlankCell := SP.PArray[x, y - 1];
                 SP.PArray[x, y] := BlankCell;
                 SP.PArray[x, y - 1] := NumberCell;
                 SP.PArray[x, y - 1].y := y - 1;
                 SP.PArray[x, y].y := y;
                 NumberCell := SP.PArray[x, y - 1];
                 NumberCell.Position.Y := 5 + (y - 1)*Height;
                 BlankCell := SP.PArray[x, y];
                 BlankCell.Position.Y := 5 + y*Height;
               End;
        CBottom : Begin
                    BlankCell := SP.PArray[x, y + 1];
                    SP.PArray[x, y] := BlankCell;
                    SP.PArray[x, y + 1] := NumberCell;
                    SP.PArray[x, y + 1].y := y + 1;
                    SP.PArray[x, y].y := y;
                    NumberCell.Position.Y := 5 + (y + 1)*Height;
                    BlankCell.Position.Y := 5 + y*Height;
                  End;
        CLeft : Begin
                  BlankCell := SP.PArray[x - 1, y];
                  SP.PArray[x, y] := BlankCell;
                  SP.PArray[x - 1, y] := NumberCell;
                  SP.PArray[x - 1, y].x := x - 1;
                  SP.PArray[x, y].x := x;
                  NumberCell := SP.PArray[x - 1, y];
                  NumberCell.Position.X := 5 + (x - 1)*Height;
                  BlankCell :=  SP.PArray[x, y];
                  BlankCell.Position.X := 5 + x*Height;
                End;
        CRight : Begin
                   BlankCell := SP.PArray[x + 1, y];
                   SP.PArray[x, y] := BlankCell;
                   SP.PArray[x + 1, y] := NumberCell;
                   SP.PArray[x + 1, y].x := x + 1;
                   SP.PArray[x, y].x := x;
                   NumberCell := SP.PArray[x + 1, y];
                   NumberCell.Position.X := 5 + (x + 1)*Height;
                   BlankCell := SP.PArray[x, y];
                   BlankCell.Position.X  := 5 + x*Height;
                 End;
      End;
      BlankCellPosition.x := x;
      BlankCellPosition.y := y;
    End;

  Procedure TForm1.OnClick(Sender : TObject);
    Var
      Number : TNumber;
      RowNo, ColumnNo : Integer;
      Cell : TCell;
    Begin
      If Sender Is TNumber
        Then
          Begin
            Number := Sender As TNumber;
            Cell := (Number.Owner) As TCell;
            If Cell.FindWhatState = Occupied
              Then
                Begin
                  RowNo := Cell.y;
                  ColumnNo := Cell.x;
                  If ((Abs(BlankCellPosition.x - Cell.x)) = 1)  And ((Abs(BlankCellPosition.y - Cell.y)) = 0)
                    Then
                      Begin
                        If BlankCellPosition.x < ColumnNo
                          Then Cell.Swap(CLeft, RowNo, ColumnNo)
                          Else Cell.Swap(CRight, RowNo, ColumnNo);
                      End
                    Else
                      If (Abs(BlankCellPosition.y - Cell.y) = 1) And ((Abs(BlankCellPosition.x - Cell.x)) = 0)
                        Then
                          Begin
                            If BlankCellPosition. y < RowNo
                              Then Cell.Swap(CTop, RowNo, ColumnNo)
                              Else Cell.Swap(CBottom, RowNo, ColumnNo);
                          End;
                End;
          End;
    End;



Procedure TCell.ClearCell;
  begin
    Self.Number.Text := '';
    Self.Fill.Color := TAlphaColorRec.White;
    Self.State := Empty;
    BlankCellPosition.x := Self.x;
    BlankCellPosition.y := Self.y;
  end;

  Function TCell.FindWhatRowNo : Integer;
  begin
    Result := Self.y;
  end;

  Function TCell.FindWhatState : TCellState;
    Begin
      Result := Self.State;
    End;

  Function TCell.FindWhatColumnNo : Integer;
  begin
    Result := Self.x;
  end;

  Constructor TSPuzzle8.Create;
  begin

  end;

  Procedure GenerateRandomNoArray(Var RandomNoArray : TRandomNoArray);
    Begin
      RandomNoArray[0] := 1;
      RandomNoArray[1] := 5;
      RandomNoArray[2] := 6;
      RandomNoArray[3] := 2;
      RandomNoArray[4] := 0;
      RandomNoArray[5] := -1;
      RandomNoArray[6] := 7;
      RandomNoArray[7] := 3;
      RandomNoArray[8] := 4;
    End;

Procedure TForm1.FormCreate(Sender : TObject);
    Var
      RowNo, ColumnNo, i, j : Integer;
      RandomNoArray : TRandomNoArray;
      RandNo : Integer;
      Duplicate : Boolean;
    Begin
      SP := TSPuzzle8.Create;
      GenerateRandomNoArray(RandomNoArray);
      Form1.ClientWidth := 400;
      Frame := TRectangle.Create(Form1);
      Frame.Width := 310;
      Frame.Height := 310;
      Frame.Position.X := 45;
      Frame.Position.Y := 95;
      Frame.Fill.Color := TAlphaColorRec.Aliceblue;
      Frame.CornerType := TCornerType.Round;
      Frame.XRadius := 5;
      Frame.YRadius := 5;
      Frame.Opacity := 100;
      Frame.Parent := Form1;
      For ColumnNo := 0 To 2
        Do
          For RowNo := 0 To 2
            Do
              Begin
                SP.PArray[ColumnNo, RowNo] := TCell.Create(ColumnNo, RowNo, IntToStr(1 + RandomNoArray[ColumnNo*3 + RowNo]));
                SP.PArray[ColumnNo, RowNo].AssignedNo := 1 + RandomNoArray[ColumnNo*3 + RowNo];
              End;
      SP.PArray[1,2].ClearCell;
      For ColumnNo := 0 To 2
        Do
          Begin
            For RowNo := 0 To 2
              Do
                Begin
                  SP.PArray[ColumnNo, RowNo].Anchors := [TAnchorKind.akRight, TAnchorKind.akBottom];
                End;
          End;
    End;
End.
