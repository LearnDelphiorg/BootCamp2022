program Session21_P;

uses
  Forms,
  Session21_U in 'Session21_U.pas' {frmSession21Ex1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSession21Ex1, frmSession21Ex1);
  Application.Run;
end.
