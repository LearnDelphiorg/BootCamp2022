unit RGBcolours_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls;

type
  TfrmColour = class(TForm)
    lstbxColour: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblCode: TLabel;
    lblB: TLabel;
    lblG: TLabel;
    lblR: TLabel;
    lblDecimal: TLabel;
    lblBlue: TLabel;
    trkbrBlue: TTrackBar;
    trkbrGreen: TTrackBar;
    trkbrRed: TTrackBar;
    Bevel1: TBevel;
    Label12: TLabel;
    pnlSetC: TPanel;
    pnlKeepC: TPanel;
    chkSet: TCheckBox;
    edtSetC: TEdit;
    chkKeep: TCheckBox;
    lblKeepC: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure trkbrBlueChange(Sender: TObject);
    procedure trkbrGreenChange(Sender: TObject);
    procedure trkbrRedChange(Sender: TObject);
    procedure chkKeepClick(Sender: TObject);
    procedure chkSetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    blueCol : Integer;
    greenCol : Integer;
    redCol : Integer;
    procedure upDateColour();
  end;

var
  frmColour : TForm;

implementation

{$R *.dfm}

procedure TfrmColour.upDateColour();               // manually created class method
begin
   lstbxColour.Color := blueCol+greenCol+redCol;
   lblCode.Caption := ' [B.G.R] = '+
                     IntToStr(trkbrBlue.Position)+'.'+
										 IntToStr(trkbrGreen.Position)+'.'+
										 IntToStr(trkbrRed.Position)+' ';
	 lblB.Caption := (IntToHex(trkbrBlue.Position, 2));
	 lblG.Caption := (IntToHex(trkbrGreen.Position, 2));
	 lblR.Caption := (IntToHex(trkbrRed.Position, 2));
	 lblDecimal.Caption := '= ' +
						FloatToStrF(trkbrBlue.Position*256*256
											+ trkbrGreen.Position*256
											+ trkbrRed.Position, ffNumber, 12, 0);
end;
procedure TfrmColour.chkKeepClick(Sender: TObject);
begin
  if chkKeep.Checked then
  begin
    pnlKeepC.Show;
    lblKeepC.Show;
    pnlKeepC.Color := blueCol+greenCol+redCol;
    lblKeepC.Caption := '$00'+ lblB.Caption + lblG.Caption + lblR.Caption;
  end
  else
  begin
    pnlKeepC.Hide;
    lblKeepC.Hide;
  end;
end;

procedure TfrmColour.chkSetClick(Sender: TObject);
Var
  resultC, startHx : Integer;
  setC : AnsiString;
begin
  if chkSet.Checked then
  begin
    pnlSetC.Show;
    edtSetC.Show;
    //setC := edtSetC.Text;
    //Abs(StrToInt64('$FC75B6A9D025CB16'));
    //startHx := Length(setC)-6;
    resultC := Abs(StrToInt64(edtSetC.Text));
      //Copy(setC, startHx, 2)) ;
    pnlSetC.Color := resultC;
  end
  else
  begin
    pnlSetC.Hide;
    edtSetC.Hide;
  end;
end;

procedure TfrmColour.FormActivate(Sender: TObject);
begin
   blueCol := 0;
   greenCol := 0;
   redCol := 0;
   DoubleBuffered := true;
end;

procedure TfrmColour.trkbrBlueChange(Sender: TObject);
begin
   blueCol := trkbrBlue.Position*256*256;
   upDateColour();
end;

procedure TfrmColour.trkbrGreenChange(Sender: TObject);
begin
   greenCol := trkbrGreen.Position*256;
	 upDateColour();
end;

procedure TfrmColour.trkbrRedChange(Sender: TObject);
begin
   redCol := trkbrRed.Position;
   upDateColour();
end;

end.
