unit BasicForLoops;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmBasicForLoops = class(TForm)
    pnlCountUp: TPanel;
    btnCountUp: TButton;
    lstCountUp: TListBox;
    lblFrom: TLabel;
    lblTo: TLabel;
    sedStartNumber: TSpinEdit;
    sedEndNumber: TSpinEdit;
    pnlRepeatWord: TPanel;
    lblWord: TLabel;
    lblRepetitions: TLabel;
    btnRepeatWord: TButton;
    lstWords: TListBox;
    sedRepetitions: TSpinEdit;
    edtWord: TEdit;
    lblWordCount: TLabel;
    pnlWordCount: TPanel;
    pnlUpNumberCount: TPanel;
    lblUpNumberCount: TLabel;
    pnlCountDown: TPanel;
    lblDownFrom: TLabel;
    pnlDownTo: TLabel;
    lblDownNumberCount: TLabel;
    btnCountDown: TButton;
    lstCountDown: TListBox;
    sedMaxNumber: TSpinEdit;
    sedMinNumber: TSpinEdit;
    pnlDownNumberCount: TPanel;
    procedure btnRepeatWordClick(Sender: TObject);
    procedure btnCountUpClick(Sender: TObject);
    procedure btnCountDownClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasicForLoops: TfrmBasicForLoops;

implementation

{$R *.dfm}


procedure TfrmBasicForLoops.btnCountDownClick(Sender: TObject);
var
   intCount, intStart, intEnd : Integer;
begin
intStart := sedMaxNumber.Value;
intEnd := sedMinNumber.Value;
intCount := sedMaxNumber.Value;
lstCountDown.Clear;

   for intCount := intStart downto intEnd do
   begin
      lstCountDown.Items.Add(IntToStr(intCount));
   end;

pnlDownNumberCount.Caption := IntToStr(lstCountDown.Items.Count);

end;

procedure TfrmBasicForLoops.btnCountUpClick(Sender: TObject);
var
   intCount, intStart, intEnd : Integer;
begin

intStart := sedStartNumber.Value;
intEnd := sedEndNumber.Value;

lstCountUp.Clear;

   for intCount := intStart to intEnd do
   begin
      lstCountUp.Items.Add(IntToStr(intCount));
   end;

pnlUpNumberCount.Caption := IntToStr(lstCountUp.Items.Count);

end;

procedure TfrmBasicForLoops.btnRepeatWordClick(Sender: TObject);
var
   strWord : String;
   intCount, intRepetitions : Integer;
begin
   intRepetitions := sedRepetitions.Value;
   strWord := edtWord.Text;
   intCount := 0;
   lstWords.Clear;

   for intCount := 1 to intRepetitions do
   begin
      lstWords.Items.Add(strWord + ' ' + IntToStr(intCount));
   end;


   pnlWordCount.Caption := IntToStr(lstWords.Items.Count);

end;

end.
