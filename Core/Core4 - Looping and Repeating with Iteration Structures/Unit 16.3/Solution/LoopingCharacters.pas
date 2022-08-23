unit LoopingCharacters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TfrmLoopingCharacters = class(TForm)
    pnlLowercase: TPanel;
    btnLowercaseLetters: TButton;
    lstLower: TListBox;
    lblFromLower: TLabel;
    lblToLower: TLabel;
    pnlUppercase: TPanel;
    lblFromUpper: TLabel;
    lblToUpper: TLabel;
    btnUppercaseLetters: TButton;
    lstUpper: TListBox;
    lblUppercaseCount: TLabel;
    pnlUppercaseCount: TPanel;
    pnlLowercaseCount: TPanel;
    lblLowercaseCount: TLabel;
    pnlAllCharacters: TPanel;
    lblAllCharacterCount: TLabel;
    btnShowUpperAndLower: TButton;
    lstUpperAndLower: TListBox;
    pnlUpperAndLowerCount: TPanel;
    cboFromUpper: TComboBox;
    cboToUpper: TComboBox;
    cboFromLower: TComboBox;
    cboToLower: TComboBox;
    lblUppercaseHeader: TLabel;
    lblLowercaseHeader: TLabel;
    lblUppercaseAndLowercaseHeader: TLabel;
    chkReverse: TCheckBox;
    procedure btnUppercaseLettersClick(Sender: TObject);
    procedure btnLowercaseLettersClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoopingCharacters: TfrmLoopingCharacters;

implementation

{$R *.dfm}



procedure TfrmLoopingCharacters.btnLowercaseLettersClick(Sender: TObject);
var
   chrLowerStart, chrLowerEnd, chrLowerCharacter : Char;
begin
   chrLowerStart := cboFromLower.Text[1];
   chrLowerEnd := cboToLower.Text[1];

   lstLower.Clear;

   for chrLowerCharacter := chrLowerStart to chrLowerEnd do
   begin
     lstLower.Items.Add(chrLowerCharacter);
   end;

   pnlLowercaseCount.Caption := IntToStr(lstLower.Items.Count);

end;

procedure TfrmLoopingCharacters.btnUppercaseLettersClick(Sender: TObject);
var
   chrUpperStart, chrUpperEnd, chrUpperCharacter : Char;
begin
   chrUpperStart := cboFromUpper.Text[1];
   chrUpperEnd := cboToUpper.Text[1];

   lstUpper.Clear;

   for chrUpperCharacter := chrUpperStart to chrUpperEnd do
   begin
     lstUpper.Items.Add(chrUpperCharacter);
   end;

   pnlUppercaseCount.Caption := IntToStr(lstUpper.Items.Count);

end;

end.
