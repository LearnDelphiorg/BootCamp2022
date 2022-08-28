Program ImageTimerProject;
{$APPTYPE CONSOLE}
Uses
  Vcl.Forms,
  ImageTimerUnit in 'ImageTimerUnit.pas' {MainForm};

{$R *.res}

Begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
End.
