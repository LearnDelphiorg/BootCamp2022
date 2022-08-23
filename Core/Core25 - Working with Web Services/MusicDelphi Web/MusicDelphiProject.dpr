program MusicDelphiProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {frmMain},
  BitHelper in 'BitHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
