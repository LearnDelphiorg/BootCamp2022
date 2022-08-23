unit frmMainDBUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dtmQB_u, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmDBExample = class(TForm)
    dbgrdInstructors: TDBGrid;
    DBNavInstructors: TDBNavigator;
    btnFirst: TButton;
    btnPrior: TButton;
    btnNext: TButton;
    btnLast: TButton;
    btnSalDet: TButton;
    btnSalDetQry: TButton;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    btnIncreaseSalPA: TButton;
    btnSalQryWithParameter: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnSalDetClick(Sender: TObject);
    procedure btnSalDetQryClick(Sender: TObject);
    procedure btnIncreaseSalPAClick(Sender: TObject);
    procedure btnSalQryWithParameterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBExample: TfrmDBExample;

implementation

{$R *.dfm}

procedure TfrmDBExample.btnFirstClick(Sender: TObject);
begin
   dtmQBDB.ADOdsInstructors.First;
end;

procedure TfrmDBExample.btnPriorClick(Sender: TObject);
begin
    dtmQBDB.ADOdsInstructors.Prior;
end;

procedure TfrmDBExample.btnNextClick(Sender: TObject);
begin
   dtmQBDB.ADOdsInstructors.Next;
end;

procedure TfrmDBExample.btnIncreaseSalPAClick(Sender: TObject);
begin
   dtmQBDB.ADOdsInstructors.First;

   while not dtmQBDB.ADOdsInstructors.Eof do
     begin
       dtmQBDB.ADOdsInstructors.Edit;
       dtmQBDB.ADOdsInstructors['EmpBasicSalPA'] := dtmQBDB.ADOdsInstructors['EmpBasicSalPA'] + 2000;
       dtmQBDB.ADOdsInstructors.Post;
       dtmQBDB.ADOdsInstructors.Next;
     end;

   ShowMessage('Salaries PA Adjusted');

end;

procedure TfrmDBExample.btnLastClick(Sender: TObject);
begin
 dtmQBDB.ADOdsInstructors.Last;
end;

procedure TfrmDBExample.btnSalDetClick(Sender: TObject);
 var
   iCount : Integer;
begin
   iCount := 0;
   dtmQBDB.ADOdsInstructors.First;

   while not dtmQBDB.ADOdsInstructors.Eof do
     begin
       if (dtmQBDB.ADOdsInstructors['EmpBasicSalPA'] > 140000) then
         Inc(iCount);
       dtmQBDB.ADOdsInstructors.Next;
     end;

   ShowMessage('There are ' + IntToStr(iCount) + ' instructors earning more than 140000 per annum');

end;

procedure TfrmDBExample.btnSalDetQryClick(Sender: TObject);
  var
    SQLString : String;
    iCount : Integer;
begin
    dtmQBDB.ADOQry.Active := false;
    SQLString := 'Select Count(*) as SCount From Instructors where EmpBasicSalPA > 140000';
    dtmQBDB.ADOQry.SQL.Text := SQLString;
    dtmQBDB.ADOQry.Active := true;

    iCount := dtmQBDB.ADOQry['SCount'];

    ShowMessage('There are ' + IntToStr(iCount) + ' instructors earning more than 140000 per annum');

end;







procedure TfrmDBExample.btnSalQryWithParameterClick(Sender: TObject);
  var
    SQLString : String;
    iCount : Integer;
    Sal : Real;
begin

    Sal := StrToFloat(InputBox('Salary >','Please enter salary','100000'));
    dtmQBDB.ADOQry.Active := false;
    SQLString := 'Select Count(*) as SCount From Instructors where EmpBasicSalPA > :eSal';
    dtmQBDB.ADOQry.SQL.Text := SQLString;
    dtmQBDB.ADOQry.Parameters.ParamByName('eSal').Value := Sal;
    dtmQBDB.ADOQry.Active := true;

    iCount := dtmQBDB.ADOQry['SCount'];

    ShowMessage('There are ' + IntToStr(iCount) + ' instructors earning more than ' +
                 FloatToStr(Sal) + 'per annum');


end;

procedure TfrmDBExample.FormShow(Sender: TObject);
begin
  dtmQBDB.ADOConn.Connected := false;
  dtmQBDB.ADOdsInstructors.Connection := dtmQBDB.ADOConn;
  dtmQBDB.ADOConn.Connected := true;

  dtmQBDB.ADOdsInstructors.Close;
  dtmQBDB.ADOdsInstructors.CommandText := 'Select * From Instructors';
  dtmQBDB.ADOdsInstructors.Open;



  dtmQBDB.DSIntructors.DataSet := dtmQBDB.ADOdsInstructors;

  dbgrdInstructors.DataSource := dtmQBDB.DSIntructors;

  DBNavInstructors.DataSource := dtmQBDB.DSIntructors;


  dtmQBDB.ADOQry.Connection := dtmQBDB.ADOConn;

  DBText1.DataSource := dtmQBDB.DSIntructors;
  DBText1.DataField := 'InstructorPersID';


  DBEdit1.DataSource := dtmQBDB.DSIntructors;
  DBEdit1.DataField := 'InstructorSurname';

end;

end.
