Unit AnalogueClockWithTimeZonesUnit;

Interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, TZDB, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, System.DateUtils,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView;

Type
  TForm1 = Class(TForm)
             Circle1: TCircle;
             Layout1: TLayout;
             Text1: TText;
             rrHour: TRoundRect;
             rrMinute: TRoundRect;
             rrSecond: TRoundRect;
             Layout2: TLayout;
             SpeedButton1: TSpeedButton;
             SpeedButton2: TSpeedButton;
             Text2: TText;
             Text3: TText;
             Timer1: TTimer;
             Rectangle1: TRectangle;
             Text4: TText;
             Circle2: TCircle;
             ListView1: TListView;
             Procedure FormCreate(Sender: TObject);
             Procedure Timer1Timer(Sender: TObject);
             Procedure SpeedButton1Click(Sender: TObject);
             Procedure SpeedButton2Click(Sender: TObject);
             Procedure ListView1ItemClick(Const Sender: TObject;
                                          Const AItem: TListViewItem);
            End;

Var
  Form1: TForm1;


Implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

Var
  CurrentTimeZone : String;
  LTimeZone : TBundledTimeZone;
  SelectedItem : TListViewItem;

Procedure TForm1.FormCreate(Sender : TObject);
  Var
    i : Integer;
    ClockFaceLayout : TLayout;
    ClockFaceNo : TText;
    LTZID : String;
    LItem : TListViewItem;
  Begin
    For i := 1 To 11
      Do
        Begin
          ClockFaceLayout := TLayout(Circle1.FindStyleResource('ClockFaceNoStyle', True));
          If ClockFaceLayOut <> Nil
            Then
              Begin
                ClockFaceLayOut.Parent := Circle1;
                ClockFaceLayOut.RotationAngle := i * 30;
                ClockFaceNo := TText(ClockFaceLayOut.Children[0]);
                If ClockFaceNo <> Nil
                  Then
                    Begin
                      ClockFaceNo.Text := i.ToString;
                      ClockFaceNo.RotationAngle := (i * 30) * -1;
                    End;
              End;
        End;
    ListView1.BeginUpdate;
    Try
      For LTZID in TBundledTimeZone.KnownTimeZones(True)
        Do
          Begin
            LItem := ListView1.Items.Add;
            LItem.Text := LTZID;
          End;
     Finally
       ListView1.EndUpdate;
     End;
     ListView1.SetFocus;
     LTimeZone := TBundledTimeZone.GetTimeZone('etc/GMT');
     Text2.Text := 'etc/GMT';
     CurrentTimeZone := Text2.Text;
  End;

Procedure TForm1.ListView1ItemClick(Const Sender : TObject;
                                    Const AItem: TListViewItem);
  Begin
    If SelectedItem <> Nil
      Then SelectedItem.Checked := False;
    If AItem <> Nil
      Then
        Begin
          Text2.Text := AItem.Text;
          CurrentTimeZone := Text2.Text;
          SelectedItem := AItem;
        End
      Else Text2.Text := CurrentTimeZone;
     LTimeZone := TBundledTimeZone.GetTimeZone(Text2.Text);
End;

Procedure TForm1.SpeedButton1Click(Sender : TObject);
  Begin
    ListView1.Width := 250;
  End;

Procedure TForm1.SpeedButton2Click(Sender : TObject);
  Begin
    ListView1.Width := 0;
  End;

Procedure TForm1.Timer1Timer(Sender : TObject);
 Var
    Hour, TwelveHour, Minute, Second : Word;
    strHour, strMinute, strSecond : String;
    DateTime : TDateTime;
  Begin
    DateTime := LTimeZone.ToLocalTime(Now);
    Hour := HourOf(DateTime);
    TwelveHour := Hour Mod 12;
    Minute := MinuteOf(DateTime);
    Second := SecondOf(DateTime);
    rrHour.RotationAngle := 30 * TwelveHour + Round(Minute/2.17);
    rrMinute.RotationAngle := 6 * Minute;
    rrSecond.RotationAngle := 6 * Second;
    strHour := Hour.ToString;
    strMinute := Minute.ToString;
    strSecond := Second.ToString;
    If (Length(strMinute) < 2)
      Then strMinute := '0' + strMinute;
    If (Length(strSecond) < 2)
      Then strSecond := '0' + strSecond;
      If (Length(strHour) < 2)
      Then strHour := '0' + strHour;
    Text3.Text := strHour + ':' + strMinute + ':' + strSecond;
    If IsPM(dateTime)
      Then Text4.Text := 'PM'
      Else Text4.Text := 'AM';
  End;

End.
