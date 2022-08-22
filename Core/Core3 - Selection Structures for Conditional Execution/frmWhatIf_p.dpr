program frmWhatIf_p;

uses
  Vcl.Forms,
  frmWhatIf_u in 'frmWhatIf_u.pas' {frmWhatIF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWhatIF, frmWhatIF);
  Application.Run;
end.
