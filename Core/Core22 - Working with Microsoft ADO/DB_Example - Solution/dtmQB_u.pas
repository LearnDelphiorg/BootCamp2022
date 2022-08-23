unit dtmQB_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmQBDB = class(TDataModule)
    qryQB: TADOQuery;
    tblInstructors: TADOTable;
    ADOCon: TADOConnection;
    dtsInstructors: TDataSource;
    dtsQryQB: TDataSource;
    dtsLearnerClients: TDataSource;
    tblLearnerClients: TADOTable;
    dtsDriveBookings: TDataSource;
    tblDriveBookings: TADOTable;
    qryQB2: TADOQuery;
    dtsQryQB2: TDataSource;
    dtsLearnersQuestionBank: TDataSource;
    tblLearnersQuestionBank: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmQBDB: TdtmQBDB;

implementation

{$R *.dfm}

end.
