program frmCase_p;

uses
  Vcl.Forms,
  frmCase_u in 'frmCase_u.pas' {frmCase};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCase, frmCase);
  Application.Run;
end.
