Unit ImageTimerUnit;

Interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, JPEG, Vcl.MPlayer, System.IOUTils;

Type
  TMainForm = Class(TForm)
                ImageOrangutan : TImage;
                FrameTimer : TTimer;
                MediaPlayerJungleSounds : TMediaPlayer;
                Procedure FrameTimerTimer(Sender: TObject);
                Procedure FormActivate(Sender: TObject);
              End;

Var
  MainForm: TMainForm;

Implementation

{$R *.dfm}
Var
  FileName : String;
  NumberString : String;
  Counter : Integer = 15;

Procedure TMainForm.FormActivate(Sender: TObject);
  Begin
    MediaPlayerJungleSounds.Open;
  End;

Procedure TMainForm.FrameTimerTimer(Sender: TObject);
  Begin
    MediaPlayerJungleSounds.Play;
    Counter := (Counter + 1) Mod 42;
    NumberString := '00' + IntToStr(Counter + 16);
    FileName := 'IMGP' + NumberString;
    MainForm.Caption := FileName;
    ImageOrangutan.Stretch := True;
    Var CurrentDir := GetCurrentDir;
    ImageOrangutan.Picture.LoadFromFile(GetCurrentDir + '\' + FileName + '.jpg');
  End;

End.
