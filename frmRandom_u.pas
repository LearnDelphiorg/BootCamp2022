unit frmRandom_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.Samples.Spin, System.Math, Vcl.Imaging.pngimage;//Add Math, pngimage

type
  TfrmRandom = class(TForm)
    imgLogo: TImage;
    pgcRandom: TPageControl;
    tsIntro: TTabSheet;
    btnDice: TButton;
    imgDice: TImage;
    btnReal: TButton;
    edtReal: TLabeledEdit;
    tsNumbers: TTabSheet;
    btnUserInput: TButton;
    lblDigits: TLabel;
    sedInput: TSpinEdit;
    btn4Digits: TButton;
    rgpPrize: TRadioGroup;
    btnWin: TButton;
    tsLoops: TTabSheet;
    btnStartwith0: TButton;
    btnClick: TButton;
    pnlChange: TPanel;
    tmrDisplay: TTimer;
    btnChar: TButton;
    edtChar: TLabeledEdit;
    btnNotRepeat: TButton;
    edtNoRepeat: TLabeledEdit;
    edtName: TLabeledEdit;
    btnRandomChar: TButton;
    procedure btnDiceClick(Sender: TObject);
    procedure btnRealClick(Sender: TObject);
    procedure btnUserInputClick(Sender: TObject);
    procedure btn4DigitsClick(Sender: TObject);
    procedure btnStartwith0Click(Sender: TObject);
    procedure btnWinClick(Sender: TObject);
    procedure btnClickClick(Sender: TObject);
    procedure pnlChangeClick(Sender: TObject);
    procedure tmrDisplayTimer(Sender: TObject);
    procedure btnCharClick(Sender: TObject);
    procedure btnNotRepeatClick(Sender: TObject);
    procedure btnRandomCharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRandom: TfrmRandom;

implementation

{$R *.dfm}

procedure TfrmRandom.btnDiceClick(Sender: TObject);
var
  iRandom : integer;
  sFileName : string;
begin
  //Generate a random integer number & add Math to the uses
  iRandom := randomrange(1,7);//1..6 - Excludes the second
  iRandom := random(6)+1; //(0..5) + 1

  //Store pictures in \Win32\Debug
  //dice6.png dice3.png
  sFileName := 'Dice'+IntToStr(iRandom)+'.png';

  imgDice.Picture.LoadFromFile(sFileName);

end;
procedure TfrmRandom.btnUserInputClick(Sender: TObject);
var
  iNumber, iInput : integer;
begin
  //Random number according to user input
  iInput := sedInput.Value;

  iNumber := RandomRange(1,iInput+1);//5-6

  lblDigits.Caption := IntToStr(iNumber);
end;

procedure TfrmRandom.btnWinClick(Sender: TObject);
var
  iRandom : integer;
  sPrize: string;
begin
  //Win a random prize
  iRandom := RandomRange(0,5);//0..4

  sPrize := rgpPrize.Items[iRandom];
  ShowMessage(sPrize);
  rgpPrize.ItemIndex := iRandom;
end;

procedure TfrmRandom.pnlChangeClick(Sender: TObject);
begin
  tmrDisplay.Enabled := False;
end;

procedure TfrmRandom.tmrDisplayTimer(Sender: TObject);
var
  iR, iG, iB : byte;
begin
  //Random Colours
  pnlChange.Color := random(100000);//0-99999

  //OR
  iR := RandomRange(0,256);//0..255
  iG :=  RandomRange(0,256);
  iB :=  RandomRange(0,256);

  pnlChange.Color := RGB(iR, iG, iB);
end;

procedure TfrmRandom.btn4DigitsClick(Sender: TObject);
var
  iDigits : Integer;
begin
  //Generate a 4 digit number
  iDigits := RandomRange(1000,10000);//1000..9999

  ShowMessage(IntToStr(iDigits));
end;

procedure TfrmRandom.btnCharClick(Sender: TObject);
var
  iRandom, k : Integer;
  sCode : string;
begin
  //Random Char String
  sCode := '';
  for k := 1 to 10 do
  begin
    iRandom := RandomRange(65,91);//ASCII page 97
    sCode := sCode+ chr(iRandom);
  end;

  edtChar.Text := sCode;
end;

procedure TfrmRandom.btnClickClick(Sender: TObject);
begin
  tmrDisplay.Enabled := true;
end;



procedure TfrmRandom.btnNotRepeatClick(Sender: TObject);
var
  k,iPos, iLength: Integer;
  sOutput, sCharacters: string;
begin
  //Random code not repeating digits
  sCharacters := '023456789!@#$%^&*()_:?abcdefghijklmnopqrstuvwxyzQWERTYUIOPASDFGHJKLZXCVBNM';
  sOutput := '';
  for k := 1 to 20 do
  begin
    iLength := length(sCharacters);
    iPos := RandomRange(1,iLength+1);//2
    sOutput := sOutput + sCharacters[iPos];
    delete(sCharacters,iPos,1);
  end;

  edtNoRepeat.Text := sOutput;
end;

procedure TfrmRandom.btnRandomCharClick(Sender: TObject);
var
  sName : string;
  iLength,  iRandomChar : integer;
begin
  //Random character
  sName := edtName.Text;

  iLength := Length(sName);//JOhn Smith

  iRandomChar := RandomRange(1,iLength+1);

  ShowMessage(sName[iRandomChar]);
end;

procedure TfrmRandom.btnRealClick(Sender: TObject);
var
  rRandom : real;
begin
  //Generate a random real number
  rRandom := RandomRange(-50,51) + Random;//Integer + random - 16 decimal values

  edtReal.Text := FloatToStrF(rRandom,ffFixed,20,18);
end;

procedure TfrmRandom.btnStartwith0Click(Sender: TObject);
var
  sNumber : string;
  k, iRandom : integer;
begin
  //4 digit number that may start with 0
  sNumber := '';
  for k := 1 to 4 do
  begin
    iRandom := RandomRange(0,10);//0..9
    sNumber := sNumber + IntToStr(iRandom);
  end;

  ShowMessage(sNumber);
end;

end.
