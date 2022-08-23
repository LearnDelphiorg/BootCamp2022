unit DBQBMainExample_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, dtmQB_u, Buttons, ExtCtrls, jpeg, Spin, StdCtrls, ComCtrls,
  Grids, DBGrids, DBCtrls,FormatRed_u, DB, DateUtils, TInstructorUnit,
  CheckLst, TLessonCostUnit, Vcl.Mask;

type
  TfrmQBDBExample = class(TForm)
    pgctrlQB_DBEx: TPageControl;
    tbsSQL: TTabSheet;
    tbsDBOperationsA: TTabSheet;
    pnlBottom: TPanel;
    bttExit: TBitBtn;
    DatabaseOpenDialog: TOpenDialog;
    bttSelectConnectDB: TBitBtn;
    dbgrdSQLResult: TDBGrid;
    btnEx2: TButton;
    Bevel1: TBevel;
    btnEx3: TButton;
    btnEx4: TButton;
    btnEx5: TButton;
    btnEx1: TButton;
    Label2: TLabel;
    Bevel2: TBevel;
    pnlDBOpTopRight: TPanel;
    Label3: TLabel;
    dbgrdLearnerClients: TDBGrid;
    btnFilter: TButton;
    bttRestoreDB: TBitBtn;
    btnCountBSQL: TButton;
    btnSearch: TButton;
    ckbRemoveFilters: TCheckBox;
    Label4: TLabel;
    btnEx6: TButton;
    bvl1: TBevel;
    tbsDrivebookings: TTabSheet;
    dbgrdDRiveBookings: TDBGrid;
    btnAnalyse: TButton;
    redDisplay: TRichEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    cmbInstructorCode: TComboBox;
    lbl5: TLabel;
    Bevel3: TBevel;
    btnReport: TButton;
    Image1: TImage;
    btnEx7: TButton;
    btnEx8: TButton;
    btnEx9: TButton;
    btnEx10: TButton;
    btnEx11: TButton;
    btnEx12: TButton;
    tbsDBOperationsB: TTabSheet;
    btnAddFiveDays: TButton;
    btnCountBNOSQL: TButton;
    Image2: TImage;
    tbsGenerateLessonQuote: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbLicenceCode: TComboBox;
    sedLessons: TSpinEdit;
    dtpLearnersExpire: TDateTimePicker;
    btnQuote: TButton;
    Image3: TImage;
    Label7: TLabel;
    btnShowReport: TButton;
    Label8: TLabel;
    Image4: TImage;
    Label9: TLabel;
    Panel1: TPanel;
    dbgrdInstructors: TDBGrid;
    btnFirst: TButton;
    btnPrevious: TButton;
    btnNext: TButton;
    btnLast: TButton;
    pnlNewRecord: TPanel;
    lbledtPersID: TLabeledEdit;
    lbledtSAID: TLabeledEdit;
    lbledtInstName: TLabeledEdit;
    lbledtInstSurname: TLabeledEdit;
    cklstbLicenceCodes: TCheckListBox;
    Label10: TLabel;
    Label11: TLabel;
    bttSaveRecord: TBitBtn;
    lbledtContactNr: TLabeledEdit;
    bttNewRecord: TBitBtn;
    bttAnalyseInstructorRecord: TBitBtn;
    lblInstNameSurname: TLabel;
    cmbLessonMonth: TComboBox;
    cmbLessonYear: TComboBox;
    Label12: TLabel;
    Label13: TLabel;
    ckbLessonFilter: TCheckBox;
    Bevel5: TBevel;
    bttDeleteDrivebookingRecord: TBitBtn;
    tbsPracticeLearnerTest: TTabSheet;
    imgQuestion: TImage;
    lblQuestionCount: TLabel;
    rdgQuestion: TRadioGroup;
    btnStartTest: TButton;
    btnNextQuestion: TButton;
    Image5: TImage;
    Label14: TLabel;
    btnFilterCountBNoSQL: TButton;
    procedure bttSelectConnectDBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEx2Click(Sender: TObject);
    procedure tbsSQLShow(Sender: TObject);
    procedure btnEx3Click(Sender: TObject);
    procedure btnEx4Click(Sender: TObject);
    procedure btnEx5Click(Sender: TObject);
    procedure SetGridColumnWidths(Grid: TDBgrid); // Own
    procedure runQuery(sQuery :String; QueryType : String);
    procedure btnEx1Click(Sender: TObject);
    procedure tbsDBOperationsAShow(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bttRestoreDBClick(Sender: TObject);
    procedure btnCountBSQLClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure ckbRemoveFiltersClick(Sender: TObject);
    procedure bttExitClick(Sender: TObject);
    procedure btnEx6Click(Sender: TObject);
    procedure cmbInstructorCodeChange(Sender: TObject);
    procedure btnAnalyseClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);


    procedure CreatePersistentFields(ADataset: TDataset);
    Procedure CreateLookupField( ATable: TDataSet; AFieldName: String;
                            ALookupDataset:  TDataset; AKeyfields: String;
                            ALookupKeyfields: String; ALookupResultField : String);
    procedure btnEx8Click(Sender: TObject);
    procedure btnEx7Click(Sender: TObject);
    procedure btnEx9Click(Sender: TObject);
    procedure btnEx10Click(Sender: TObject);
    procedure btnEx11Click(Sender: TObject);
    procedure btnEx12Click(Sender: TObject);
    procedure btnCountBNOSQLClick(Sender: TObject);
    procedure btnAddFiveDaysClick(Sender: TObject);
    procedure btnQuoteClick(Sender: TObject);
    procedure tbsGenerateLessonQuoteShow(Sender: TObject);
    procedure btnShowReportClick(Sender: TObject);
    procedure tbsDBOperationsBShow(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure bttAnalyzeCurrentRecord(Sender: TObject);
    procedure bttSaveRecordClick(Sender: TObject);
    procedure bttNewRecordClick(Sender: TObject);
    procedure tbsDrivebookingsShow(Sender: TObject);
    procedure ckbLessonFilterClick(Sender: TObject);
    procedure bttDeleteDrivebookingRecordClick(Sender: TObject);
    procedure tbsPracticeLearnerTestShow(Sender: TObject);

    procedure DisplayQuestion(QuestionIndex : Integer);

    procedure rdgQuestionClick(Sender: TObject);
    procedure btnStartTestClick(Sender: TObject);
    procedure btnNextQuestionClick(Sender: TObject);
    procedure btnFilterCountBNoSQLClick(Sender: TObject);

  private
  formatteer : Tformat;
    { Private declarations }
  public
     { Public declarations }
    DataBaseConnectionString : String;
    DataBaseNameAndPath : String;
	  DataBaseExtension : String;
    SQLQry : String;

    // Learner test public declarations

    arrQuestionAskedAlready : Array [1..46] of boolean;
    Answer : integer;
    QuestionsAskedCount : Integer;
    CorrectCount : Integer;
  end;

var
  frmQBDBExample: TfrmQBDBExample;

  const
    LongMonthNames : array[1..12] of string =
    (
      'January', 'February', 'March', 'April',
      'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December'
    ) ;

implementation

{$R *.dfm}




procedure TfrmQBDBExample.btnEx1Click(Sender: TObject);
begin
//  Type your query between the '' like the example below
SQLQry := 'Select * From LearnerClients '; // Query text  between the ''

// Don't change code below
runQuery(SQLQry,'S');
end;

//------------------------------------------------------
procedure TfrmQBDBExample.btnEx2Click(Sender: TObject);
begin

SQLQry := 'Select LearnerClientNr ,InstructorNr, LessonDate  ';
SQLQry := SQLQry + ' From DriveBookings where Lessondate = #2018/10/13# ';
SQLQry := SQLQry + ' and InstructorNr = "INS010"  ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//-------------------------------------------------------
procedure TfrmQBDBExample.btnEx3Click(Sender: TObject);
begin



SQLQry := 'Select LearnerClientNr,  ';
SQLQry := SQLQry + ' LearnerSurname + ", " + Mid(LearnerName,1,1) as LearnerDetails,';
SQLQry := SQLQry + ' LearnerCell, LearnerDriverCode ';
SQLQry := SQLQry + ' From LearnerClients';
SQLQry := SQLQry + ' Where LearnerTitle <> "Mr" and ';
SQLQry := SQLQry + ' LearnerDriverCode = "A" or LearnerDriverCode = "A1"';
// Don't change code below
runQuery(SQLQry,'S');
end;

//-------------------------------------------------------
procedure TfrmQBDBExample.btnEx4Click(Sender: TObject);
begin


SQLQry := '';

SQLQry := 'Select InstructorPersID, InstructorSurname, InstructorLicenceCodes, ';
SQLQry := SQLQry + ' FORMAT(((EmpBasicSalPA / 12) + (EmpBasicSalPA * 0.0125)),"Currency")as MonthlySalary ';
SQLQry := SQLQry + ' FROM Instructors  ';
SQLQry := SQLQry + ' Where InstructorLicenceCodes Like "%EC1%" ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//-------------------------------------------------------
procedure TfrmQBDBExample.btnEx5Click(Sender: TObject);
begin
SQLQry := '';

SQLQry := 'SELECT I.InstructorPersID, I.InstructorSurname,  ';
SQLQry := SQLQry + ' L.LearnerClientNr, L.LearnerSurname ';
SQLQry := SQLQry + ' FROM Instructors I, LearnerClients L  ';
SQLQry := SQLQry + ' WHERE I.InstructorPersID = L.PreferredInstructor';

// Don't change code below
runQuery(SQLQry,'S');

end;
//----------------------------------------------------
procedure TfrmQBDBExample.btnEx6Click(Sender: TObject);
begin


SQLQry := 'Select LearnerClientNr ,Sum(LessonDuration) as [Total Lesson Hours] , ';
SQLQry := SQLQry + '[Total Lesson Hours] * 350 as TotalLessonCost ';
SQLQry := SQLQry + 'From DriveBookings ';
SQLQry := SQLQry + 'Group by LearnerClientNr ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx7Click(Sender: TObject);
begin
SQLQry := '';

SQLQry := 'Select LearnerClientNr , Count (LearnerClientNr) as LessonCount   ';
SQLQry := SQLQry + ' FROM DriveBookings ';
SQLQry := SQLQry + ' GROUP BY LearnerClientNr ';
SQLQry := SQLQry + ' ORDER BY 2 desc ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx8Click(Sender: TObject);
begin
SQLQry := '';

SQLQry := 'Select Count(*) as SalLessThanAveCount  ';
SQLQry := SQLQry + ' FROM Instructors  ';
SQLQry := SQLQry + ' WHERE EmpBasicSalPA <  ';
SQLQry := SQLQry + ' (Select AVG(EmpBasicSalPA) From Instructors)  ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx9Click(Sender: TObject);
begin
SQLQry := '';

SQLQry := ' Select B.LearnerClientNr, L.LearnerSurname, B.LessonDate      ';
SQLQry := SQLQry + ' From DriveBookings B, LearnerClients L ';
SQLQry := SQLQry + ' Where B.LearnerClientNr = L.LearnerClientNr ';
SQLQry := SQLQry + ' and B.LessonDate Between #2018/10/01# and #2018/10/15# ';

// Don't change code below
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx10Click(Sender: TObject);
begin


SQLQry := 'INSERT INTO Instructors ';
SQLQry := SQLQry + ' Values ("INS011","7210150254087","Golo","Tshoga","0715410871","EB,C1,A",120000)';

// Don't change code below
runQuery(SQLQry,'D');
Sleep(50);
SQLQry := 'Select * from Instructors';
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx11Click(Sender: TObject);
begin
SQLQry := 'UPDATE Drivebookings SET InstructorNr = "INS002" ';
SQLQry := SQLQry + ' WHERE InstructorNr = "INS010" and LessonDate >= Date() ';

// Don't change code below
runQuery(SQLQry,'D');
SQLQry := 'Select * from Drivebookings';
runQuery(SQLQry,'S');
end;

//----------------------------------------------------
procedure TfrmQBDBExample.btnEx12Click(Sender: TObject);
var
  sDatum , sInsName : String;
begin
  sDatum := InputBox('Lesson Date','Please enter the date','');
  sInsName := InputBox('Instructor Name','Please enter the Instructor name','');

  SQLQry := 'Select DB.InstructorNr,I.InstructorName, DB.LearnerClientNr, DB.LessonDate ';
  SQLQry := SQLQry + ' From Instructors I, Drivebookings DB ';
  SQLQry := SQLQry + ' Where I.InstructorPersID = DB.InstructorNr and ';
  SQLQry := SQLQry + ' DB.LessonDate = :Datum ';
  SQLQry := SQLQry + ' and I.InstructorName = :InsName ';

  with dtmQBDB.qryQB do
   begin
     Active := false;
     SQL.Clear;
     SQL.Add(SQLQry);
     Parameters.ParamByName('Datum').Value := sDatum;
     Parameters.ParamByName('InsName').Value := sInsName;
     Active := true;
   end;

   SetGridColumnWidths(dbgrdSQLResult);

end;
//------------------------------------------------------

procedure TfrmQBDBExample.btnFilterClick(Sender: TObject);
begin

with dtmQBDB.tblLearnerClients do
  begin
    Active := true;
    filter := 'PreferredInstructor = '+ QuotedStr(InputBox('Instructor Code','Please enter the Instructor code',''));
    sort := ' LearnersLicenceExpirydate ';
    filtered := true;
  end;

// given code
 SetGridColumnWidths(dbgrdLearnerClients);
end;
//------------------------------------------------------

procedure TfrmQBDBExample.btnFirstClick(Sender: TObject);
begin
   dtmQBDB.tblInstructors.First;
end;

procedure TfrmQBDBExample.btnPreviousClick(Sender: TObject);
begin
   dtmQBDB.tblInstructors.Prior;
end;

procedure TfrmQBDBExample.btnNextClick(Sender: TObject);
begin
   dtmQBDB.tblInstructors.Next;
end;

procedure TfrmQBDBExample.btnLastClick(Sender: TObject);
begin
   dtmQBDB.tblInstructors.Last;
end;





//------------------------------------------------------
procedure TfrmQBDBExample.btnCountBNOSQLClick(Sender: TObject);
var
  BCounter : Integer;
begin
  BCounter := 0;
with dtmQBDB do
  begin
    tblLearnerClients.First;
    while not tblLearnerClients.Eof do
      begin
         if (tblLearnerClients['LearnerDriverCode'] = 'B') then
           begin
               inc(BCounter);
           end;
       tblLearnerClients.Next;
      end;
  ShowMessage('There are ' + IntToStr(BCounter) + ' Learners enrolled for B Type Licences');

  end;
end;

//------------------------------------------------------

procedure TfrmQBDBExample.btnFilterCountBNoSQLClick(Sender: TObject);
var
  BCounter : Integer;
begin

with dtmQBDB do
  begin
    tblLearnerClients.Filter := ' LearnerDriverCode = ' + QuotedStr('B');
    tblLearnerClients.Filtered := true;
    BCounter := tblLearnerClients.RecordCount;
    ShowMessage('There are ' + IntToStr(BCounter) + ' Learners enrolled for B Type Licences');

    tblLearnerClients.Filtered := false;
  end;
end;

//------------------------------------------------------
procedure TfrmQBDBExample.btnCountBSQLClick(Sender: TObject);
var
  BCounter : Integer;
begin
  SQLQry := '';
  with dtmQBDB do
    begin
      qryQB2.Close;
      qryQB2.SQL.Text := '';
      SQLQry := SQLQry + 'SELECT Count(*) as BCount ';
      SQLQry := SQLQry + 'FROM LearnerClients ';
      SQLQry := SQLQry + 'Where LearnerDriverCode = "B" ';
      qryQB2.SQL.Text := SQLQry;
      qryQB2.Open;
    end;
    BCounter := dtmQBDB.qryQB2['BCount'];

  ShowMessage('There are ' + IntToStr(BCounter) + ' Learners enrolled for B Type Licences');
end;

//---------------------------------------------------
procedure TfrmQBDBExample.btnSearchClick(Sender: TObject);
var
 sName : String;
begin
  sName := InputBox('Surname Search','Enter surname','');

  with dtmQBDB.tblLearnerClients do
   begin
    open;
    if Locate('LearnerSurname',sName,[])  then
      begin
        ShowMessage('Learner found !' + #10 + 'Moving to record');
      end
    else
      begin
        ShowMessage('Learner not found !');
      end;
   end;
end;

//-------------------------------------------------------
procedure TfrmQBDBExample.btnReportClick(Sender: TObject);
var
   ClientID , SurnameInit, sDateExpired : String;
   iTotal : Integer;
   oRepFile : Textfile;
begin
   AssignFile(oRepFile,'LearnersExpiredReport.txt');
   Rewrite(oRepFile);

   iTotal := 0;
   Writeln(oRepFile,'EXPIRED LEARNERS LICENCE REPORT':50);
   Writeln(oRepFile,'===============================':50);
   Writeln(oRepFile,'');
   Writeln(oRepFile,'Client':10,'Learner Details':25,'DateExpired':15);
   Writeln(oRepFile,'------':10,'----------------':25,'----------':15);
   Writeln(oRepFile,'');

   with dtmQBDB do
    begin
     tblLearnerClients.First;
       while not tblLearnerClients.Eof do
         begin
          if (tblLearnerClients['LearnersLicenceExpiryDate'] < Now()) then
            begin
              ClientID := tblLearnerClients['LearnerClientNr'];
              SurnameInit :=  Trim(tblLearnerClients['LearnerSurname']) + ', '
                           + copy(tblLearnerClients['LearnerName'],1,1);
              sDateExpired :=  DateToStr(tblLearnerClients['LearnersLicenceExpiryDate']);
              inc(iTotal);
              Writeln(oRepFile,ClientID:10,SurnameInit:25,sDateExpired:15);
            end;
          tblLearnerClients.Next;
       end;
    end;
   Writeln(oRepFile,'');
   Writeln(oRepFile,'Total Expired Licences:':40,iTotal:8);
   CloseFile(oRepFile);

end;

//------------------------------------------------------
procedure TfrmQBDBExample.btnShowReportClick(Sender: TObject);
var
  TempForm : TForm;
  TempListBox : TListBox;
begin
  TempForm := TForm.Create(frmQBDBExample);
  TempForm.Width := 400;
  TempForm.Height := 300;
  TempForm.Caption := 'Licence Expiry Report Form';
  TempForm.Position := poDesktopCenter;

  TempListBox := TListBox.Create(TempForm);
  TempListBox.Parent := TempForm;
  TempListBox.Align := alClient;
  TempListBox.Font.Name := 'Courier New';
  TempListBox.Font.Size := 9;

  if FileExists('LearnersExpiredReport.txt') then
    begin
     TempListBox.Items.LoadFromFile('LearnersExpiredReport.txt');
     TempForm.ShowModal;
    end
  else
     MessageDlg('Report file does not exit. Please generate', mtError,
      [mbOk], 0, mbOk);
end;

//------------------------------------------------------

procedure TfrmQBDBExample.btnAddFiveDaysClick(Sender: TObject);
begin
   with dtmQBDB do
    begin
    tblLearnerClients.First;
      while not tblLearnerClients.Eof do
        begin
             tblLearnerClients.Edit;
             tblLearnerClients['LearnersLicenceExpirydate'] :=
                  tblLearnerClients['LearnersLicenceExpirydate'] + 5;
             tblLearnerClients.Next;
        end;
    end;
end;
//------------------------------------------------------

procedure TfrmQBDBExample.btnAnalyseClick(Sender: TObject);
var
  objTempCost : TLessonCost;
  totIncome : Currency;
begin

if ckbLessonFilter.Checked then
begin
 formatteer.formatRed(redDisplay);
 redDisplay.Lines.Add('POSSIBLE INCOME ANALYSIS For  '
                     + dtmQBDB.qryQB2['InstructorNr'] + '  '
                     + lblInstNameSurname.Caption + '  '
                     + cmbLessonMonth.Text + ' - '
                     + cmbLessonYear.Text);

 redDisplay.Lines.Add('');
 redDisplay.Lines.Add('Learner'+ #9 + 'LessonDate' + #9 + 'Code' + #9 + 'Duration' + #9 + 'Cost');

 objTempCost := TLessonCost.Create;
 totIncome := 0;

 with  dtmQBDB do
   begin
      qryQB2.First;
      while not qryQB2.Eof do
        begin
          objTempCost.SetFields(qryQB2['LessonDuration'],qryQB2['LearnerDriverCode']);
          redDisplay.Lines.Add(qryQB2['LearnerClientNr'] + #9 +
                               DateToStr(qryQB2['LessonDate']) + #9 +
                               qryQB2['LearnerDriverCode'] + #9 +
                               IntToStr(qryQB2['LessonDuration']) + #9 +
                               FloatToStrF(objTempCost.getLessonCost,ffCurrency,10,2));
          totIncome := totIncome + objTempCost.getLessonCost;
          qryQB2.Next;
        end;
      redDisplay.Lines.Add('');
      redDisplay.Lines.Add('Total Number of lessons for the month ' +
      IntToStr(qryQB2.RecordCount));
      redDisplay.Lines.Add('Total Possible income ' +
              FloatToStrF(totIncome,ffCurrency,10,2));

   end;
  end
  else
 begin
  ShowMessage('Data must be filtered per month');
 end;
end;

//------------------------------------------------------
procedure TfrmQBDBExample.tbsGenerateLessonQuoteShow(Sender: TObject);
begin
  SQLQry := '';
  with dtmQBDB do
    begin
      qryQB2.Close;
      qryQB2.SQL.Text := 'Select distinct LearnerDriverCode From LearnerClients';
      qryQB2.Open;
    end;

 cmbLicenceCode.Items.Clear;
  with dtmQBDB do
    begin
      qryQB2.First;
      while not qryQB2.Eof  do
        begin
             cmbLicenceCode.Items.Add(qryQB2['LearnerDriverCode']);
             qryQB2.Next;
        end;
    end;
 cmbLicenceCode.ItemIndex := 0;
 sedLessons.MinValue := 1;
 dtpLearnersExpire.DateTime := Now();
end;

//------------------------------------------------------
procedure TfrmQBDBExample.btnQuoteClick(Sender: TObject);
var
   dCode : char;
   sCode, sMessage : string;
   iLessons : Integer;
   rDiscPerc : Real;
   iDaysLeft : Integer;
   cQuotePrice, cDisCount : Currency;
   blnHurryDicount : Boolean;

begin

   sCode :=  cmbLicenceCode.Text;
   if (Pos('A',sCode) > 0) then  dCode := 'A';
   if (Pos('B',sCode) > 0) then  dCode := 'B';
   if (Pos('C',sCode) > 0) then  dCode := 'C';

   blnHurryDicount := false;
   iLessons := sedLessons.Value;

   case iLessons of
     1..5:  begin
             if (dCode = 'A') then rDiscPerc := 0.12;
             if (dCode = 'B') then rDiscPerc := 0.075;
             if (dCode = 'C') then rDiscPerc := 0;
            end;
     6..12: begin
             if (dCode = 'A') then rDiscPerc := 0.2;
             if (dCode = 'B') then rDiscPerc := 0.15;
             if (dCode = 'C') then rDiscPerc := 0.05;
            end;
     else
            begin
             if (dCode = 'A') then rDiscPerc := 0.25;
             if (dCode = 'B') then rDiscPerc := 0.2;
             if (dCode = 'C') then rDiscPerc := 0.1;
            end;
   end;

   iDaysLeft := abs(DaysBetween(Now(),dtpLearnersExpire.DateTime));

   if (iDaysLeft < 31)  then
     begin
       rDiscPerc := rDiscPerc + 0.05;
       blnHurryDicount := true;
     end;

   cDisCount := 375 * sedLessons.Value * rDiscPerc;
   cQuotePrice := (375 * sedLessons.Value) - cDisCount;

   sMessage := 'For code [' + dCode + '] and ' + IntToStr(iLessons) + ' lessons ' + #13;
   sMessage := sMessage + 'You will need to pay: ' + CurrToStrF(cQuotePrice,ffCurrency,2) + #13;
   if blnHurryDicount then
     sMessage := sMessage + 'You Qualified for the HURRY-DISCOUNT!!';

   ShowMessage(sMessage);
end;

//------------------------------------------------------
procedure TfrmQBDBExample.tbsPracticeLearnerTestShow(Sender: TObject);
 var
  I : Integer;
begin
  dtmQBDB.tblLearnersQuestionBank.Active := true;

  for I := 1 to dtmQBDB.tblLearnersQuestionBank.RecordCount do
    begin
      arrQuestionAskedAlready[I] := false;
    end;

    btnNextQuestion.Enabled := false;
    imgQuestion.Picture.LoadFromFile('NoPic.bmp');
    CorrectCount := 0;
    QuestionsAskedCount := 0;
    rdgQuestion.Items.Clear;
    lblQuestionCount.Caption := 'Number of questions asked :'
                             + IntToStr(QuestionsAskedCount);
end;


//------------------------------------------------------
procedure TfrmQBDBExample.ckbLessonFilterClick(Sender: TObject);
begin
  if ckbLessonFilter.Checked then
   begin
    with dtmQBDB.qryQB2 do
     begin
       SQL.Clear;
       SQL.Add('Select D.* , L.LearnerDriverCode From DriveBookings D , LearnerClients L');
       SQL.Add('where InstructorNr = :PID ');
       SQL.Add('and L.LearnerClientNr = D.LearnerClientNr');
       SQL.Add('And Month(D.LessonDate) = :LesMon and Year(D.LessonDate) = :LesYear');

       Parameters.ParamByName('PID').Value := cmbInstructorCode.Text;
       Parameters.ParamByName('LesMon').Value := cmbLessonMonth.ItemIndex +1;
       Parameters.ParamByName('LesYear').Value := StrToInt(cmbLessonYear.Text);
       Open;
    end;
   end
  else
   begin
   with dtmQBDB.qryQB2 do
    begin
      SQL.Clear;
      SQL.Add('Select D.* , L.LearnerDriverCode From DriveBookings D , LearnerClients L');
      SQL.Add('where InstructorNr = :PID ');
      SQL.Add('and L.LearnerClientNr = D.LearnerClientNr');
      Parameters.ParamByName('PID').Value := cmbInstructorCode.Text;
      Open;
    end;
   end;

 TTimeField(dtmQBDB.qryQB2.FieldbyName('LessonTime')).DisplayFormat := 't';

 dbgrdDRiveBookings.DataSource := dtmQBDB.dtsQryQB2;
 SetGridColumnWidths(dbgrdDRiveBookings);
end;

//------------------------------------------------------
procedure TfrmQBDBExample.ckbRemoveFiltersClick(Sender: TObject);
begin
   dtmQBDB.tblLearnerClients.Filtered := not ckbRemoveFilters.Checked;
end;
//------------------------------------------------------
procedure TfrmQBDBExample.bttSaveRecordClick(Sender: TObject);
var
  I : Integer;
  sCodes : String;
begin
  sCodes := '';
  with dtmQBDB do
    begin
      tblInstructors.Insert;
      tblInstructors['InstructorPersID'] := lbledtPersID.Text;
      tblInstructors['InstructorSAID'] := lbledtSAID.Text;
      tblInstructors['InstructorName'] := lbledtInstName.Text;
      tblInstructors['InstructorSurname'] := lbledtInstSurname.Text;
      tblInstructors['InstructorContactNr'] := lbledtContactNr.Text;

      for I := 0 to cklstbLicenceCodes.Count - 1 do
        begin
          if (cklstbLicenceCodes.State[I] = cbChecked) then
            begin
              sCodes := sCodes + cklstbLicenceCodes.Items.Strings[I] + ',';
            end;
        end;

     Delete(sCodes,Length(sCodes),1); // delete the last , appended

     tblInstructors['InstructorLicenceCodes'] := sCodes;
     tblInstructors['EmpBasicSalPA'] := 125000;
     tblInstructors.Post;

    end;
end;
//------------------------------------------------------
procedure TfrmQBDBExample.btnStartTestClick(Sender: TObject);
var
  I : Integer;
begin
  CorrectCount := 0;
  QuestionsAskedCount := 0;

  randomize;
  I :=  random(46) + 1;
  arrQuestionAskedAlready[I] := true;
  DisplayQuestion(I);
  inc(QuestionsAskedCount);
    lblQuestionCount.Caption := 'Number of questions asked :'
                              + IntToStr(QuestionsAskedCount);
  btnStartTest.Enabled := false;

end;
//------------------------------------------------------
procedure TfrmQBDBExample.DisplayQuestion(QuestionIndex : Integer);
var
  Question : String;
begin

  dtmQBDB.tblLearnersQuestionBank.RecNo := QuestionIndex;

  rdgQuestion.Items.Clear;
  Question := ' ' +  dtmQBDB.tblLearnersQuestionBank['Question'] + ' ';

  rdgQuestion.Caption := Question;
  rdgQuestion.Items.Add(dtmQBDB.tblLearnersQuestionBank['Option1']);
  rdgQuestion.Items.Add(dtmQBDB.tblLearnersQuestionBank['Option2']);
  rdgQuestion.Items.Add(dtmQBDB.tblLearnersQuestionBank['Option3']);
  rdgQuestion.Items.Add(dtmQBDB.tblLearnersQuestionBank['Option4']);

 // Answer :=  StrToInt(dtmQBDB.tblLearnersQuestionBank['Answer']);

  if (dtmQBDB.tblLearnersQuestionBank['PicRef'] = 'None') then
    begin
       imgQuestion.Picture.LoadFromFile('NoPic.bmp');
    end
  else
    begin
       imgQuestion.Picture.LoadFromFile(dtmQBDB.tblLearnersQuestionBank['PicRef']);
    end;

end;


//------------------------------------------------------
procedure TfrmQBDBExample.rdgQuestionClick(Sender: TObject);
begin
   if ( StrToInt(dtmQBDB.tblLearnersQuestionBank['Answer']) -1
        = rdgQuestion.ItemIndex ) then
     begin
        inc(CorrectCount);
     end;

    btnNextQuestion.Enabled := true;
end;

//------------------------------------------------------
procedure TfrmQBDBExample.btnNextQuestionClick(Sender: TObject);
var
  I : Integer;
begin
 if QuestionsAskedCount < 15 then
   begin
     I :=  random(46) + 1;
     while  arrQuestionAskedAlready[I] = true do
       begin
         I :=  random(46) + 1;
       end;
     arrQuestionAskedAlready[I] := true;
     DisplayQuestion(I);
     inc(QuestionsAskedCount);
     lblQuestionCount.Caption := 'Number of questions asked :'
                              + IntToStr(QuestionsAskedCount);
   end
 else
   begin
     ShowMessage('You have answered 15 questions. You had ' + IntToStr(CorrectCount) + ' out of 15 questions correct');
     btnStartTest.Enabled := true;
     btnNextQuestion.Enabled := false;
     rdgQuestion.Caption := '';
     rdgQuestion.Items.Clear;
     tbsPracticeLearnerTestShow(Self);
   end;

end;

//------------------------------------------------------
procedure TfrmQBDBExample.bttExitClick(Sender: TObject);
begin
Close;
end;

procedure TfrmQBDBExample.bttNewRecordClick(Sender: TObject);
var
  sInstID : String;
  LastVal : Integer;
begin
   pnlNewRecord.Visible := true;

   // Generate new Instructor ID
   dtmQBDB.tblInstructors.Sort := 'InstructorPersID';
   dtmQBDB.tblInstructors.Last;

   sInstID := dtmQBDB.tblInstructors['InstructorPersID'];
   Delete(sInstID,1,3); // Removing INS
   LastVal := StrToInt(sInstID);
   inc(LastVal); // adding 1 to lastval
   sInstID := IntToStr(LastVal);
   insert('INS',sInstID,1);
   while Length(sInstID) < 6 do
     insert('0',sInstID,4);
   lbledtPersID.Text := sInstID;

   // Loading data into checklistbox

   cklstbLicenceCodes.Items.Clear;
   cklstbLicenceCodes.Items.LoadFromFile('LicenceCodes.txt');

end;

//------------------------------------------------------
procedure TfrmQBDBExample.bttAnalyzeCurrentRecord(Sender: TObject);
var
   TempInstructor : TInstuctor;
   sMessage : String;
begin
   TempInstructor := TInstuctor.create;

   TempInstructor.setData(dtmQBDB.tblInstructors['InstructorName'],
   dtmQBDB.tblInstructors['InstructorSurname'],
   dtmQBDB.tblInstructors['InstructorSAID'],
   dtmQBDB.tblInstructors['InstructorLicenceCodes'],
   dtmQBDB.tblInstructors['EmpBasicSalPA']);

   sMessage :='Instructor ' + dtmQBDB.tblInstructors['InstructorSurname'] + #13;
   sMessage := sMessage + 'is ' + IntToStr(TempInstructor.getAge) + ' years old '+ #13;
   sMessage := sMessage + 'and earns a monthly salary of ';
   sMessage := sMessage + CurrToStrF(TempInstructor.getMonthlySalary,ffCurrency,2);

   ShowMessage(sMessage);

end;

//------------------------------------------------------
procedure TfrmQBDBExample.bttDeleteDrivebookingRecordClick(Sender: TObject);
begin
  // We must first locate the current corresponding record
  // in the table as we are working with a query

    if MessageDlg('Delete The current booking ['
                 + IntToStr(dtmQBDB.qryQB2['Cnt'])
                 + '] Record?', mtConfirmation, mbYesNoCancel, 0) = mrYes then
      begin
      dtmQBDB.tblDriveBookings.Open;
       if dtmQBDB.tblDriveBookings.Locate('Cnt',dtmQBDB.qryQB2['Cnt'],[]) then
         begin
            dtmQBDB.tblDriveBookings.Delete;
            cmbInstructorCodeChange(self);
         end;
      end
     else
     begin
       Abort;
     end;
end;

//------------------------------------------------------
procedure TfrmQBDBExample.tbsDrivebookingsShow(Sender: TObject);
var
 I : Integer;
begin

 cmbLessonMonth.Clear;
 for I := 1 to 12 do
   begin
     cmbLessonMonth.Items.Add(LongMonthNames[I]);
   end;
 cmbLessonMonth.ItemIndex := 0;

 cmbLessonYear.Clear;
 for I := 0 to 5 do
   begin
     cmbLessonYear.Items.Add(FormatDateTime('yyyy', Now + ( I * 365.25)));
   end;
 cmbLessonYear.ItemIndex := 0;

 dbgrdInstructors.DataSource := dtmQBDB.dtsInstructors;
 dtmQBDB.tblInstructors.Active := true;

 lblInstNameSurname.Caption := '';
 cmbInstructorCode.Items.Clear;
 with dtmQBDB do
  begin
   tblInstructors.First;
   while not tblInstructors.Eof do
     begin
       cmbInstructorCode.Items.Add(tblInstructors['InstructorPersID']);
       tblInstructors.Next;
     end;
  end;
  cmbInstructorCode.ItemIndex := 0;

  cmbInstructorCodeChange(Self);

end;

//------------------------------------------------------
//======================================================


{$region 'Connection Region and Settings code - DO NOT CHANGE'}

procedure TfrmQBDBExample.runQuery(sQuery :String; QueryType : String);
begin

  dtmQBDB.qryQB.Active := false;
  dtmQBDB.qryQB.SQL.Clear;
  dtmQBDB.qryQB.SQL.Add(sQuery);

  if (QueryType = 'S') then    // SQL Select Query
   begin
    dtmQBDB.qryQB.Active := true;
    SetGridColumnWidths(dbgrdSQLResult);
   end
  else   // DML Statement
    dtmQBDB.qryQB.ExecSQL;

end;
//------------------------------------------------------

procedure TfrmQBDBExample.bttSelectConnectDBClick(Sender: TObject);
begin
  dtmQBDB.ADOCon.Close;
  dtmQBDB.ADOCon.LoginPrompt := false;
  if DatabaseOpenDialog.Execute then
    DatabaseNameAndPath := DatabaseOpenDialog.FileName
  else
    exit;

  DataBaseExtension := ExtractFileExt(DatabaseNameAndPath);

  if (DataBaseExtension = '.mdb') then
  begin
    DatabaseConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=';
    DatabaseConnectionString := DatabaseConnectionString + DataBaseNameAndPath;
    DatabaseConnectionString := DatabaseConnectionString + ';Persist Security Info=False';
  end;

  if (DataBaseExtension = '.accdb') then
  begin
    DatabaseConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=';
    DatabaseConnectionString := DatabaseConnectionString + DataBaseNameAndPath;
    DatabaseConnectionString := DatabaseConnectionString + ';Mode=ReadWrite;Persist Security Info=False';
  end;

  dtmQBDB.ADOCon.ConnectionString := DataBaseConnectionString;

  try
    dtmQBDB.ADOCon.Open;
  except
    on e: EADOError do
    begin
      MessageDlg('Error while connecting - Try other database extension', mtError,
                  [mbOK], 0);

      Exit;
    end;
  end;

  pnlBottom.Caption :=  ' Connected to DB: '
                        + ExtractFileName(DatabaseNameAndPath);
  // Connected

  dtmQBDB.tblInstructors.Connection := dtmQBDB.ADOCon;
  dtmQBDB.tblLearnerClients.Connection := dtmQBDB.ADOCon;
  dtmQBDB.tblDriveBookings.Connection := dtmQBDB.ADOCon;
  dtmQBDB.tblLearnersQuestionBank.Connection := dtmQBDB.ADOCon;

  dtmQBDB.qryQB.Connection := dtmQBDB.ADOCon;
  dtmQBDB.qryQB2.Connection := dtmQBDB.ADOCon;

  dtmQBDB.tblInstructors.Active := false;
  dtmQBDB.tblLearnerClients.Active := false;
  dtmQBDB.tblDriveBookings.Active := false;
  dtmQBDB.tblLearnersQuestionBank.Active := false;

  dtmQBDB.qryQB.Active := false;
  dtmQBDB.qryQB2.Active := false;

  dtmQBDB.tblInstructors.TableName := 'Instructors';
  dtmQBDB.tblLearnerClients.TableName := 'LearnerClients';
  dtmQBDB.tblDriveBookings.TableName := 'DriveBookings';
  dtmQBDB.tblLearnersQuestionBank.TableName := 'LearnersQuestionBank';

  pgctrlQB_DBEx.Visible := true;
  pgctrlQB_DBEx.Align := alClient;
  bttSelectConnectDB.Visible := false;
end;
//------------------------------------------------------

procedure TfrmQBDBExample.cmbInstructorCodeChange(Sender: TObject);
var
SQLString : String;
begin

  with dtmQBDB.qryQB do
    begin
      SQL.Clear;
      SQL.Add('Select InstructorName + ", " + InstructorSurname as InstDet');
      SQL.Add(' From  Instructors where InstructorPersID = :PID ');
      Parameters.ParamByName('PID').Value := cmbInstructorCode.Text;
      Open;
    end;

  lblInstNameSurname.Caption := dtmQBDB.qryQB['InstDet'];
  dtmQBDB.dtsQryQB2.DataSet := dtmQBDB.qryQB2;



   with dtmQBDB.qryQB2 do
    begin
      SQL.Clear;
      SQL.Add('Select D.* , L.LearnerDriverCode From DriveBookings D , LearnerClients L');
      SQL.Add('where InstructorNr = :PID');
      SQL.Add('and L.LearnerClientNr = D.LearnerClientNr');
      Parameters.ParamByName('PID').Value := cmbInstructorCode.Text;
      Open;
    end;

 dbgrdDRiveBookings.DataSource := dtmQBDB.dtsQryQB2;
 TTimeField(dtmQBDB.dtsQryQB2.DataSet.FieldbyName('LessonTime')).DisplayFormat := 't';

  (dtmQBDB.qryQB2.FieldByName('LessonTime') as TDateTimeField).DisplayFormat := 'hh:nn';

 dtmQBDB.dtsQryQB.DataSet := dtmQBDB.qryQB;

 SetGridColumnWidths(dbgrdDRiveBookings);
end;

//------------------------------------------------------
procedure TfrmQBDBExample.FormCreate(Sender: TObject);
begin
    pgctrlQB_DBEx.ActivePage := tbsSQL;
    formatteer := Tformat.Create;
    Application.UpdateFormatSettings := False;
end;
//------------------------------------------------------
procedure TfrmQBDBExample.FormShow(Sender: TObject);
begin
  pgctrlQB_DBEx.Visible := false;
  dtmQBDB.ADOCon.Connected := false;
  dtmQBDB.qryQB.Connection := dtmQBDB.ADOCon;
  dtmQBDB.qryQB2.Connection := dtmQBDB.ADOCon;

  dtmQBDB.dtsQryQB.DataSet :=  dtmQBDB.qryQB;
  dtmQBDB.dtsQryQB2.DataSet :=  dtmQBDB.qryQB2;

  dtmQBDB.tblInstructors.Connection := dtmQBDB.ADOCon;
  dtmQBDB.tblLearnerClients.Connection := dtmQBDB.ADOCon;
  dtmQBDB.tblDriveBookings.Connection := dtmQBDB.ADOCon;
  dtmQBDB.qryQB.Connection := dtmQBDB.ADOCon;
  dtmQBDB.qryQB2.Connection := dtmQBDB.ADOCon;

end;

procedure TfrmQBDBExample.bttRestoreDBClick(Sender: TObject);
var
  isFail : Boolean;
begin
  dtmQBDB.ADOCon.Close;

  if (DataBaseExtension = '.mdb') then
  begin
     DeleteFile('QuickBanana.mdb');
     CopyFile('QuickBanana_Backup.mdb','QuickBanana.mdb',isFail)
  end
  else
  if (DataBaseExtension = '.accdb') then
  begin
     DeleteFile('QuickBanana.accdb');
     CopyFile('QuickBanana_Backup.accdb','QuickBanana.accdb',isFail)
  end;
  dtmQBDB.ADOCon.Open;
  tbsDBOperationsAShow(Self);

end;

procedure TfrmQBDBExample.tbsDBOperationsAShow(Sender: TObject);
begin
 dbgrdLearnerClients.DataSource := dtmQBDB.dtsLearnerClients;
 dtmQBDB.tblLearnerClients.Active := true;
 SetGridColumnWidths(dbgrdLearnerClients);
end;



procedure TfrmQBDBExample.tbsDBOperationsBShow(Sender: TObject);
begin

 dbgrdInstructors.DataSource := dtmQBDB.dtsInstructors;
 dtmQBDB.tblInstructors.Active := true;
 SetGridColumnWidths(dbgrdInstructors);
 pnlNewRecord.Visible := false;

end;

procedure TfrmQBDBExample.tbsSQLShow(Sender: TObject);
begin

  dbgrdSQLResult.DataSource := dtmQBDB.dtsQryQB;
end;

procedure TfrmQBDBExample.SetGridColumnWidths(Grid: Tdbgrid);
const
  DEFBORDER = 10;
var
  temp, n: Integer;
  lmax: array [0..30] of Integer;
begin

  with Grid as TDBGrid do
  begin
    Canvas.Font := Font;
    for n := 0 to Columns.Count - 1 do
      lmax[n] := Canvas.TextWidth(Fields[n].FieldName) + DEFBORDER;
    DataSource.DataSet.First;
    while not DataSource.DataSet.EOF do
    begin
      for n := 0 to Columns.Count - 1 do
      begin
        temp := Canvas.TextWidth(trim(Columns[n].Field.DisplayText)) + DEFBORDER;
        if temp > lmax[n] then lmax[n] := temp;
      end; {for}
      DataSource.DataSet.Next;
    end;
    DataSource.DataSet.First;
    for n := 0 to Columns.Count - 1 do
      if lmax[n] > 0 then
        Columns[n].Width := lmax[n];
  end;
end;

//------------------------------------------------------
//Not used as part of this example
procedure TfrmQBDBExample.CreatePersistentFields(ADataset: TDataset);
Var
  i: Integer;
Begin
  ADataset.FieldDefs.Update;
  for I := 0 to ADataset.FieldDefs.Count - 1 do
     if ADataset.FindField(ADataset.FieldDefs[i].Name) = Nil then
       ADataset.FieldDefs.Items[i].CreateField(ADataset);
End;

Procedure TfrmQBDBExample.CreateLookupField( ATable: TDataSet; AFieldName: String;
                            ALookupDataset:  TDataset; AKeyfields: String;
                            ALookupKeyfields: String; ALookupResultField : String);

Var
  I : Integer;
  NewField : TField;
Begin
  with ATable do begin
    if FieldDefs.Updated = False then
      FieldDefs.Update;
    If FindField(AFieldName) = Nil then
    begin
      NewField := TStringField.Create(ATable);
      NewField.FieldName := AFieldName;
      NewField.KeyFields := AKeyFields;
      NewFIeld.LookupDataSet := ALookupDataset;
      NewField.LookupKeyFields := ALookupKeyFields;
      NewField.LookupResultField := ALookupResultField;
      NewField.FieldKind := fkLookup;
      NewField.Dataset := ATable;
    end;
  end;
End;


{$endregion}
end.
