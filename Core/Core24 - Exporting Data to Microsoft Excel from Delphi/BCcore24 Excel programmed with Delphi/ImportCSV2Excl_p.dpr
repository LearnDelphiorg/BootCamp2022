program ImportCSV2Excl_p;

uses
  Vcl.Forms,
  ImportCSV2Excl_u in 'ImportCSV2Excl_u.pas' {frmTestExcelChart};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestExcelChart, frmTestExcelChart);
  Application.Run;
end.
