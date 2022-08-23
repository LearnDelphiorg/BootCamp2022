program DBExampleProject_1;

uses
  Vcl.Forms,
  frmMainDBUnit in 'frmMainDBUnit.pas' {frmDBExample},
  dtmQB_u in 'dtmQB_u.pas' {dtmQBDB: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDBExample, frmDBExample);
  Application.CreateForm(TdtmQBDB, dtmQBDB);
  Application.CreateForm(TdtmQBDB, dtmQBDB);
  Application.CreateForm(TdtmQBDB, dtmQBDB);
  Application.CreateForm(TdtmQBDB, dtmQBDB);
  Application.Run;
end.
