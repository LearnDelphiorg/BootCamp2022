unit Strings_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmStrings = class(TForm)
    mmoInput: TMemo;
    btnReverse: TBitBtn;
    btnCount: TBitBtn;
    btnCamelCase: TBitBtn;
    lblInput: TLabel;
    lblOutput: TLabel;
    mmoOutput: TMemo;
    btn3: TBitBtn;
    btnClose: TBitBtn;
    procedure btnReverseClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnCamelCaseClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStrings: TfrmStrings;

implementation

{$R *.dfm}

procedure TfrmStrings.btn3Click(Sender: TObject);
var
  I,iCounter : Integer;
  sSentence,sNewSentence : string;
begin
 //loop
 //if
sSentence := mmoInput.Text;

for I := 1 to length(sSentence) do
 begin
  if Upcase(sSentence[I]) = 'e'
   then sSentence[I] := '3';
   showmessage(sSentence[i]);
 end;

 mmoOutput.Text := sSentence;

end;

procedure TfrmStrings.btnCamelCaseClick(Sender: TObject);
var
  I : Integer;
  sSentence : string;
begin
//loop
//space - upcase

sSentence := mmoInput.Text;
sSentence[1] := upcase(sSentence[1]);
for I := 1 to length(sSentence) do
  if sSentence[I] = ' '
    then sSentence[I+1] := upcase(sSentence[I+1] );

 mmoOutput.Text := sSentence;
end;

procedure TfrmStrings.btnCountClick(Sender: TObject);
var
  I,iCounter,iCountW : Integer;
  sSentence : string;
begin
  // count number of a's
  // loop - for
  // if
  //icount   note: init

 iCounter := 0;
 iCountW := 1;
 sSentence := mmoInput.Lines[0];
 for I := 1 to length(sSentence) do
  begin
    if sSentence[I] = 'a'
       then inc(iCounter);
    if sSentence[I] = ' '
       then inc(icountw);
  end;

 mmoOutput.Lines.Add('The number of a`s in the string is: ' + IntToStr(iCounter));
 mmoOutput.Lines.Add('The number of words in the string is: ' + IntToStr(iCountW));



end;

procedure TfrmStrings.btnReverseClick(Sender: TObject);
var
  I : Integer;
  sSentence,sRevString : string;

begin
//extract
// loop last to first   - for = known number of repititions
//build a string

sSentence := mmoInput.Text;
for I := length(sSentence) downto 1 do
  sRevString := sRevString + sSentence[I];

  mmoOutput.Text := sRevString;


end;

end.
