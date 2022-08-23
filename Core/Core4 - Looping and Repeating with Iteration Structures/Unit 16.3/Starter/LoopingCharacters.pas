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


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoopingCharacters: TfrmLoopingCharacters;

implementation

{$R *.dfm}




end.
