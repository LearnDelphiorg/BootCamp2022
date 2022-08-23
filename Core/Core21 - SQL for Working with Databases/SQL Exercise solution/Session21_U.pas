
unit Session21_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls,
  DateUtils, ExtCtrls, Buttons, ComCtrls;

type
  TfrmSession21Ex1 = class(TForm)
    dbgViolations: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgSQL: TDBGrid;
    Panel1: TPanel;
    btnQ1_2: TButton;
    btnQ1_3: TButton;
    btnQ1_4: TButton;
    btnQ1_5: TButton;
    btnQ1_6: TButton;
    DBGrid1: TDBGrid;
    btnQ1_1: TButton;
    btnQ1_7: TButton;
    btnQ1_8: TButton;
    btnQ1_9: TButton;
    btnQ1_10: TButton;
    procedure connect;

    procedure FormCreate(Sender: TObject);
    procedure btnQ1_2Click(Sender: TObject);
    procedure adjustColumns;
    procedure btnQ1_3Click(Sender: TObject);
    procedure btnQ1_4Click(Sender: TObject);
    procedure btnQ1_5Click(Sender: TObject);
    procedure btnQ1_6Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure btnQ1_7Click(Sender: TObject);
    procedure btnQ1_8Click(Sender: TObject);
    procedure btnQ1_9Click(Sender: TObject);
    procedure btnQ1_10Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSession21Ex1: TfrmSession21Ex1;

  dbConnection: TADOConnection;
  tblViolations: TADOTable;
  dsrViolations: TDataSource;
  qryResult: TADOQuery;
  dsrSQL: TDataSource;

implementation

{$R *.dfm}

procedure TfrmSession21Ex1.connect;
var
  i: integer;
begin
  dbConnection := TADOConnection.Create(frmSession21Ex1);
  dbConnection.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=TrafficDB.mdb;Mode=R' +
    'eadWrite;Persist Security Info=False';
  dbConnection.LoginPrompt := false;
  dbConnection.Provider := 'Microsoft.Jet.OLEDB.4.0';

  tblViolations := TADOTable.Create(Self);
  tblViolations.Connection := dbConnection;
  tblViolations.TableName := 'tblViolations';
  tblViolations.Open();

  dsrViolations := TDataSource.Create(Self);
  dsrViolations.DataSet := tblViolations;
  dbgViolations.DataSource := dsrViolations;

  dbgViolations.Columns[0].Width := 140;
  for i := 1 to dbgViolations.Columns.Count - 2 do
  begin
    dbgViolations.Columns[i].Width := 150;
  end;

  dbgViolations.Width := dbgViolations.Columns.Count * 160;
  dbgViolations.Columns[dbgViolations.Columns.Count - 1].Width := 180;
  qryResult := TADOQuery.Create(Self);
  qryResult.Connection := dbConnection;

  dsrSQL := TDataSource.Create(Self);
  dsrSQL.DataSet := qryResult;
  dbgSQL.DataSource := dsrSQL;

    qryResult.SQL.Clear;
  qryResult.SQL.Add('SELECT * FROM tblViolations');
  qryResult.Open;
    dbgSQL.Columns[0].Width := 140;
  for i := 1 to dbgSQL.Columns.Count - 2 do
  begin
    dbgSQL.Columns[i].Width := 150;
  end;

  dbgSQL.Width := dbgSQL.Columns.Count * 180;
    dbgSQL.Columns[dbgSQL.Columns.Count - 1].Width := 160;

end;

procedure TfrmSession21Ex1.FormCreate(Sender: TObject);
begin
  connect;
end;


// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

// Write an SQL statement to display all the fields ordered
// according to the speed captured field with the highest value at the top.

procedure TfrmSession21Ex1.btnClick(Sender: TObject);
var
  sSQL1: String;
begin
  // Complete SQL statement
  sSQL1 := 'SELECT * FROM tblViolations ORDER BY SpeedCaptured DESC';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL1);

  qryResult.Open;
  adjustColumns;

end;

// Write an SQL statement to display the ID’s of the drivers and the date of
// the violation of all violations in a 60 km/h zone. (allowedSpeed)

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_2Click(Sender: TObject);
var
  sSQL2: String;
begin

  // Complete SQL statement
  sSQL2 :=  'SELECT IDDriver, ViolationDate FROM tblViolations WHERE AllowedSpeed = 60 ';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL2);
  qryResult.Open;
  // adjustColumns;
end;

// Write an SQL statement to display the ID’s of the drivers and
// the number of km/h above the allowed speed as NumAbove of
// all the violations.


// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_3Click(Sender: TObject);
var
  sSQL3: String;
begin

  // Complete SQL statement
  sSQL3 := 'SELECT IDDriver, SpeedCaptured - AllowedSpeed  AS [Number Above] FROM tblViolations ';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL3);
  qryResult.Open;
 // adjustColumns;

end;

// Write an SQL statement to display all the fields of all the violations
// in a location where the location ends with the word ‘Road’

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_4Click(Sender: TObject);
var
  sSQL4: String;

begin

  // Complete SQL statement
  sSQL4 := 'SELECT * FROM tblViolations WHERE location like "%Road"';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL4);
  qryResult.Open;
  //adjustColumns;

end;

// Write an SQL statement that will change the allowed speed value
// to 80 of all the violations where the location is Fox Street.

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_5Click(Sender: TObject);

var
  sSQL5: String;
  sLocation: string;
begin

  // Complete SQL statement

  sSQL5 := 'UPDATE tblViolations SET AllowedSpeed = 80 WHERE Location = "Fox Street" ';

  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL5);
  qryResult.ExecSQL;
  ShowMessage('Updated');
 // adjustColumns;
end;

// Write a SQL statement that will delete the violation
// of the driver with ID 9901140012074.

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver


procedure TfrmSession21Ex1.btnQ1_6Click(Sender: TObject);
var
  sSQL6: String;
begin

  // Complete SQL statement
  sSQL6 :='DELETE FROM tblViolations WHERE IDDriver = "9901140012074"';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL6);
  qryResult.ExecSQL;
  tblViolations.Refresh;
  ShowMessage('Updated');
 // adjustColumns;
end;

// Display the allowed speed in the different areas. No duplicates

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_7Click(Sender: TObject);
var
  sSQL7: string;
begin
  sSQL7 := 'SELECT DISTINCT AllowedSpeed FROM tblViolations';

  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL7);
  qryResult.Open;
end;

// Display the ID of the driver, the violation date and speed of
// all the violations where the violation date is between March and October

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_8Click(Sender: TObject);
var
  sSQL8: string;
begin

  sSQL8 :=  'SELECT IDDriver, ViolationDate, SpeedCaptured FROM tblViolations WHERE MONTH(ViolationDate) BETWEEN 3 AND 10';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL8);
  qryResult.Open;

end;

// Write an SQL statement to count the number of violations in each type
// of speeding zone, save as NumViolations.
// Then change to only work for AllowedSpeed of 60 and 80

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver

procedure TfrmSession21Ex1.btnQ1_9Click(Sender: TObject);
var
  sSQL9: string;
begin
  sSQL9 :=  'SELECT Location, COUNT(ViolationID) AS NumViolations FROM tblViolations WHERE AllowedSpeed = 60 OR AllowedSpeed = 80 GROUP BY Location';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL9);
  qryResult.Open;
   adjustColumns;
end;

// Display the  ViolationID and the birthdate of the driver. The birthdate
// must be in the format dd/mm/yy.
// Use the ID of the Driver  (IDDriver)to extract the birthdate.

// Names of the fields in the database tblViolations

// ViolationID, Location, AllowedSpeed,
// SpeedCaptured, ViolationDate, ViolationTime,

// IDDriver    YY DD... MID LEFT RIGHT

procedure TfrmSession21Ex1.btnQ1_10Click(Sender: TObject);
var
  sSQL10: string;
begin
  sSQL10 :=  'SELECT ViolationID, (mid(IDDRIVER,5,2) + "/"+mid(IDDRIVER,3,2) +"/" +left(IDDriver,2))  AS BirthDate FROM tblViolations';
  qryResult.SQL.Clear;
  qryResult.SQL.Add(sSQL10);
  qryResult.Open;

end;

procedure TfrmSession21Ex1.adjustColumns;
var
  i: integer;
begin
  dbgSQL.Columns[0].Width := 140;
  for i := 1 to dbgSQL.Columns.Count - 2 do
  begin
    dbgSQL.Columns[i].Width := 120;
  end;
  dbgSQL.Columns[dbgSQL.Columns.Count - 1].Width := 140;
  dbgSQL.Width := dbgSQL.Columns.Count * 160;

  end;

end.
