program QBDriveSchoolExample_p;

uses
  Forms,
  DBQBMainExample_u in 'DBQBMainExample_u.pas' {frmQBDBExample},
  dtmQB_u in 'dtmQB_u.pas' {dtmQBDB: TDataModule},
  TInstructorUnit in 'TInstructorUnit.pas',
  TLessonCostUnit in 'TLessonCostUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmQBDBExample, frmQBDBExample);
  Application.CreateForm(TdtmQBDB, dtmQBDB);
  Application.Run;
end.
