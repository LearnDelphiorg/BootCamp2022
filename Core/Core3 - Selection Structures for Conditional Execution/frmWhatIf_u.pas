unit frmWhatIf_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Samples.Spin;

type
  TfrmWhatIF = class(TForm)
    imgLogo: TImage;
    pgcMain: TPageControl;
    tsSimple: TTabSheet;
    sedAge: TSpinEdit;
    edtPassword: TLabeledEdit;
    btnE1: TButton;
    lblAge: TLabel;
    lblAgeCaption: TLabel;
    btnPassword: TButton;
    lblPassword: TLabel;
    edtUsername: TLabeledEdit;
    btnUsername: TButton;
    lblUsername: TLabel;
    tsMore: TTabSheet;
    edtSaved: TLabeledEdit;
    btnCalculate: TButton;
    redSaved: TRichEdit;
    chkSupport: TCheckBox;
    edtAmount: TLabeledEdit;
    btnDisplay: TButton;
    tsAndOR: TTabSheet;
    tsNested: TTabSheet;
    chkStudent: TCheckBox;
    chkTeacherStudent: TCheckBox;
    btnDiscount: TButton;
    lblDiscount: TLabel;
    btnHeight: TButton;
    lblHeight: TLabel;
    tsOperators: TTabSheet;
    btnValidate: TButton;
    edtMobile: TLabeledEdit;
    sedInput: TSpinEdit;
    lblEvenOdd: TLabel;
    btnEvenOdd: TButton;
    edtScore: TLabeledEdit;
    btnScore: TButton;
    edtAnswer: TLabeledEdit;
    btnAnswer: TButton;
    procedure btnE1Click(Sender: TObject);
    procedure btnPasswordClick(Sender: TObject);
    procedure btnUsernameClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure btnDisplayClick(Sender: TObject);
    procedure btnDiscountClick(Sender: TObject);
    procedure btnHeightClick(Sender: TObject);
    procedure btnValidateClick(Sender: TObject);
    procedure btnEvenOddClick(Sender: TObject);
    procedure btnScoreClick(Sender: TObject);
    procedure btnAnswerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWhatIF: TfrmWhatIF;

implementation

{$R *.dfm}

procedure TfrmWhatIF.btnAnswerClick(Sender: TObject);
var
  cAnswer : char;
begin
  //In operator with a char data type
  cAnswer := upcase(edtAnswer.Text[1]);//C c

  if cAnswer IN ['A'..'D'] then
    if cAnswer = 'C' then
      ShowMessage('Correct Answer')
    else
      ShowMessage('Valid but incorrect answer')
  else
      ShowMessage('Invalid Answer')
end;

procedure TfrmWhatIF.btnCalculateClick(Sender: TObject);
var
  rSaved, rNeed : real;
begin
  //If-statement with more than one line of code
  redSaved.Lines.Clear;
  rSaved := StrToFloat(edtSaved.Text);

  if rSaved >= 450000 then
  begin
    redSaved.Lines.Add('You have reached your goal!');
    redSaved.Lines.Add('Take the next step.');
    redSaved.Lines.Add('Book your flight!');
  end //If
  else
  begin
    rNeed := 450000-rSaved;
    redSaved.Lines.Add('Almost there! You still need : $'+FloatToStr(rNeed));
  end;//else
end;

procedure TfrmWhatIF.btnDiscountClick(Sender: TObject);
var
  rDiscount : real;
const
  Cost = 450000;
begin
   //Nested If-Statement page 134
   if (chkStudent.Checked = true) AND (chkTeacherStudent.Checked = True) then
    rDiscount := Cost * 20 / 100
   else
    if (chkStudent.Checked = true) OR (chkTeacherStudent.Checked = True) then
      rDiscount := Cost * 10 / 100
    else
      rDiscount := 0;

  lblDiscount.Caption := 'Discount amount: $'+FloatToStrF(rDiscount,ffFixed,10,2) ;
end;

procedure TfrmWhatIF.btnDisplayClick(Sender: TObject);
var
  rAmount : real;
begin
  //CheckBox and more than one line of code
  rAmount := StrToFloat(edtAmount.Text);

  if chkSupport.Checked = true then
  begin
    rAmount := rAmount + rAmount * 5 / 100;
    ShowMessage('Thank you for your support!');
  end;//If

  ShowMessage('Final amount: '+FloatToStrF(rAmount,ffCurrency,10,2));
end;

procedure TfrmWhatIF.btnE1Click(Sender: TObject);
var
  iAge : Integer;
begin
  //Simple if with integer / real variable
  //Page 132
  iAge := sedAge.Value;

  if iAge >= 18 then //=>
    lblAge.Caption := 'Application Accepted'
  else
    lblAge.Caption := 'You are too young apply';

  //Alternative
  if iAge <18 then
    lblAge.Caption := 'You are too young apply'
  else
    lblAge.Caption := 'Application Accepted'

end;

procedure TfrmWhatIF.btnEvenOddClick(Sender: TObject);
var
  iNumber : integer;
begin
  //Even or odd
  iNumber := sedInput.Value;

  if odd(iNumber) = true then
    ShowMessage('Number is odd')
  else
    ShowMessage('Number is even');




  if iNumber mod 2 = 0 then//9/2
    ShowMessage('Number is even')
  else
    ShowMessage('Number is odd');








end;

procedure TfrmWhatIF.btnHeightClick(Sender: TObject);
var
  iHeight : integer;
begin
  //Nested If-Statement  page 85
  iHeight := StrToInt(InputBox('Height','Enter your height in cm','163')) ;

  if iHeight > 193 then
    lblHeight.Caption := 'Unfortunately you are too tall'
  else
    if iHeight >= 163 then //<=193 163..193
      lblHeight.Caption := 'Perfect height to be a pilot'
    else
      if iHeight >= 149 then //<163
        lblHeight.Caption := 'Accepted to become an astronaut'
      else //<149
        lblHeight.Caption := 'Unfortunately you are too short';
end;

procedure TfrmWhatIF.btnPasswordClick(Sender: TObject);
var
  sPassword : string;
begin
  //Case-senstive If-Statement with a String variable
  sPassword := edtPassword.Text;

  if sPassword = 'Sp@ceTr@vel' then
    lblPassword.Caption := 'Access Granted'
  else
    lblPassword.Caption := 'Incorrect Password';
end;

procedure TfrmWhatIF.btnScoreClick(Sender: TObject);
var
  iScore : integer;
begin
  //Validate with IN operator and NOT
  iScore := StrToInt(edtScore.Text);

  if NOT(iScore IN [0..10]) then
    ShowMessage('Invalid score')
  else
    ShowMessage('Valid score');



  if iScore IN [0..10] then
    ShowMessage('Valid score')
  else
    ShowMessage('Invalid score');








  if (iScore >=0) and (iScore <=10) then
     ShowMessage('Valid score')
  else
    ShowMessage('Invalid score');

end;

procedure TfrmWhatIF.btnUsernameClick(Sender: TObject);
var
  sUsername : string;
begin
  //If-Statement that is not case-sensitive
  sUsername := edtUsername.Text;

  if UpperCase(sUsername) = 'ASTRO76' then
    lblUsername.Caption := 'Welcome!'
  else
    lblUsername.Caption := 'Username not found';
end;

procedure TfrmWhatIF.btnValidateClick(Sender: TObject);
var
  sNumber : string;
begin
  //Validate mobile number
  sNumber := edtMobile.Text;//023568

  if Length(sNumber) <> 10 then
    ShowMessage('Invalid number')
  else
    ShowMessage('Valid Number');
end;

end.
