program MyTimeApplication;

uses
  Vcl.Forms,
  frmTimeAppUnit in 'frmTimeAppUnit.pas' {frmTimeObjectExample},
  clsMytimeUnit in 'clsMytimeUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTimeObjectExample, frmTimeObjectExample);
  Application.Run;
end.
