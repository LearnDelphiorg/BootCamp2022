unit frmCase_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.jpeg, Vcl.Samples.Spin;

type
  TfrmCase = class(TForm)
    imgLogo: TImage;
    pgcMain: TPageControl;
    tsIntro: TTabSheet;
    edtSymbol: TLabeledEdit;
    btnDisplay: TButton;
    lblOutput: TLabel;
    sedGrade: TSpinEdit;
    lblGrade: TLabel;
    btnGrade: TButton;
    redSchool: TRichEdit;
    tsCase: TTabSheet;
    rgpContinent: TRadioGroup;
    btnTrain: TButton;
    procedure btnDisplayClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnTrainClick(Sender: TObject);
  private
    iPrimary, iHigh, iInvalid: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCase: TfrmCase;

implementation

{$R *.dfm}

procedure TfrmCase.btnDisplayClick(Sender: TObject);
var
  cSymbol : char;
begin
//Case statement using a Char variable
  cSymbol := edtSymbol.Text[1];

  Case cSymbol of
    '+','-','*','/': 	lblOutput.Caption := 'Operator';
    'A'..'Z' :	lblOutput.Caption := 'Capital letter';
    'a'..'z' :	lblOutput.Caption := 'Lowercase letter';
    '0'..'9' :	lblOutput.Caption := 'Number';
  Else
	  lblOutput.Caption := 'Special character';
  End;//Case

end;

procedure TfrmCase.btnGradeClick(Sender: TObject);
var
  iGrade : Integer;
begin
  //Case statement with begins and ends using an integer variable
  redSchool.Lines.Clear;
  iGrade := sedGrade.Value;

  Case iGrade of
    1..7 : 	begin
              inc(iPrimary);
              redSchool.Lines.Add(IntToStr(iPrimary)+' Primary School learners so far');
            End; //1..7
    8..12: 	begin
              inc(iHigh);
              redSchool.Lines.Add(IntToStr(iHigh)+' High School learners so far');
            End; //8..12
  Else
    Begin
      inc(iInvalid);
      redSchool.Lines.Add(IntToStr(iInvalid)+' Invalid Input so far');
    End;//else
  End;//Case

end;

procedure TfrmCase.btnTrainClick(Sender: TObject);
begin
  //Non consecutive
  case rgpContinent.ItemIndex of
    0, 4 : ShowMessage('Russia is the nearest option');
    1, 3 : ShowMessage('China is the nearest option');
    2 : ShowMessage('Russia or China are both good options');
    5, 6 : ShowMessage('NASA is your best option');
  end;
end;

procedure TfrmCase.FormActivate(Sender: TObject);
begin
  iPrimary := 0;
  iHigh := 0;
  iInvalid := 0;
end;

end.
