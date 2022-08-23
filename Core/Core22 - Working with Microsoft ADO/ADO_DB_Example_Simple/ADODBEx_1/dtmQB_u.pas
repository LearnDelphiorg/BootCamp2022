unit dtmQB_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdtmQBDB = class(TDataModule)
    ADOConn: TADOConnection;
    ADOdsInstructors: TADODataSet;
    DSIntructors: TDataSource;
    ADOQry: TADOQuery;
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
