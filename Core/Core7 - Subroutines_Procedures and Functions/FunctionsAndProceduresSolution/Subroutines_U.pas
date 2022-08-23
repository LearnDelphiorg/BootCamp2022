unit Subroutines_U;
//Delphi bootcamp Core 7 - 23 August 2022
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Math, Buttons, Vcl.Mask,
  Vcl.Samples.Spin, Vcl.Imaging.pngimage;

type
  TfrmSubroutines = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    btnId: TButton;
    edtCell: TEdit;
    btnCell: TButton;
    GroupBox2: TGroupBox;
    btnHeading: TButton;
    btnHeadings: TButton;
    btnIDinfo: TButton;
    GroupBox3: TGroupBox;
    btnFunc: TButton;
    btnPros: TButton;
    sedNumber: TSpinEdit;
    redOutput: TRichEdit;
    procedure btnFuncClick(Sender: TObject);
    procedure btnProsClick(Sender: TObject);
    procedure btnIdClick(Sender: TObject);
    procedure btnCellClick(Sender: TObject);
    procedure btnIDinfoClick(Sender: TObject);
    procedure btnHeadingClick(Sender: TObject);
    procedure btnHeadingsClick(Sender: TObject);


  private
    { Private declarations }
    function TestLen(sTest: string; iTestForLen : Integer): boolean;
    procedure ShowHeading;
    procedure ShowHeadings(sHeadingInfo : String);
    procedure ExtractInfoFromId(sID: String; var Age : integer; var Gender : char);
  public
    { Public declarations }
  end;

var
  frmSubroutines: TfrmSubroutines;

implementation

{$R *.dfm}
//==============================================================================
procedure TfrmSubroutines.btnFuncClick(Sender: TObject);
var
  sLine, sCourse : string;
  iPos : Integer;
begin
   sLine := 'I love the Delphi #Bootcamp';
//   sLine := 'I love the Delphi #Functions and Procedures';
   iPos := Pos('#', sLine);
   sCourse := Copy(sLine, iPos +1 , 1000);
//   sCourse := Copy(sLine, Pos('#', sLine) + 1 , 1000);
//
//   sCourse := Copy(Sline, iPos + 1, Length(sLine) - ipos);
//   sCourse := Copy(Sline, Pos('#', sLine) + 1, Length(sLine) - Pos('#', sLine));
   Showmessage(sCourse);
end;
//==============================================================================
procedure TfrmSubroutines.btnHeadingClick(Sender: TObject);
begin
  Showheading;
end;
//==============================================================================
procedure TfrmSubroutines.btnHeadingsClick(Sender: TObject);
var
  sHeading : String;
begin
  sHeading := inputbox('Customized heading', 'Please type you heading', '');
  Showheadings(sHeading);
end;
//==============================================================================
procedure TfrmSubroutines.btnProsClick(Sender: TObject);
var
  iNum : Integer;
begin
  iNum := sedNumber.Value;
//  inc(iNum);
  inc(iNum,5);
  showmessage(IntToStr(iNum));
end;
//==============================================================================
function TfrmSubroutines.TestLen(sTest: string; iTestForLen: Integer): boolean;
begin
  if Length(sTest) = iTestForLen then
    result := true
  else
    result:= false;
end;
//==============================================================================
procedure TfrmSubroutines.btnIdClick(Sender: TObject);
var
  bValidID : Boolean;
  sId : string;
begin
  sId := edtId.Text;
//  bValidId := TestLen(sId, 13);

//  if bValidId = true then
//   Showmessage('ID valid length')
//  else
//   Showmessage('ID length not valid')


 if TestLen(sId, 13) = true then
   Showmessage('ID valid length')
  else
   Showmessage('ID length not valid');
end;
//==============================================================================
procedure TfrmSubroutines.btnCellClick(Sender: TObject);
var
  bValidCell : Boolean;
  sCell : string;
begin
  sCell := edtCell.Text;
  bValidCell := TestLen(sCell, 13);

 if TestLen(sCell, 10) = true then
   Showmessage('Cell valid length')
  else
   Showmessage('Cell length not valid')
end;
//==============================================================================
procedure TfrmSubroutines.ShowHeading;
begin
  redOutput.Clear;
  redOutput.Lines.Add('Bootcamp examples:')
end;
//==============================================================================
procedure TfrmSubroutines.ShowHeadings(sHeadingInfo: String);
begin
  redOutput.Lines.Add(sHeadingInfo);
end;
//==============================================================================
procedure TfrmSubroutines.ExtractInfoFromId(sID: String; var Age: integer;
  var Gender: char);
var
   iBirthYear : integer;
begin
  //720531 5028 089
  if StrToInt(sID[7]) > 4 then
   gender := 'F'
  else
    gender := 'M';

  iBirthYear := StrToInt(copy(sId, 1, 2));

  if iBirthYear > 22 then
    iBirthyear := iBirthyear + 1900
  else
    iBirthYear := iBirthyear + 2000;

  age := 2022 - iBirthYear;
end;
//==============================================================================
procedure TfrmSubroutines.btnIDinfoClick(Sender: TObject);
var
  sID : String;
  cGender : Char;
  iAge : integer;
begin
  sID := edtID.Text;
  ExtractInfoFromId(sID, iAge, cGender);
  redOutput.Clear;
  ShowHeadings('Age of Person: ' +  IntToStr(iAge));
  ShowHeadings('Gender of Person: '+  cGender);
end;
//==============================================================================
end.
