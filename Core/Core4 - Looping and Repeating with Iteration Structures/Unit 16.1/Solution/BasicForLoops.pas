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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasicForLoops: TfrmBasicForLoops;

implementation

{$R *.dfm}


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
