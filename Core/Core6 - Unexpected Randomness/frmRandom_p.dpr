program frmRandom_p;

uses
  Vcl.Forms,
  frmRandom_u in 'frmRandom_u.pas' {frmRandom};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRandom, frmRandom);
  Application.Run;
end.
