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
 //type your code here

end;

procedure TfrmStrings.btnCamelCaseClick(Sender: TObject);
var
  I : Integer;
  sSentence : string;
begin
 //type your code here


end;

procedure TfrmStrings.btnCountClick(Sender: TObject);
var
  I,iCounter,iCountW : Integer;
  sSentence : string;
begin
  //type your code here


end;

procedure TfrmStrings.btnReverseClick(Sender: TObject);
var
  I : Integer;
  sSentence,sRevString : string;

begin
 //type your code here

end;

end.
