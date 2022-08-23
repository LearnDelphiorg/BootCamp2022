unit While_Loop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmWhileLoop = class(TForm)
    lstResult: TListBox;
    btnWhileLoop: TButton;
    btnForLoop: TButton;
    procedure btnWhileLoopClick(Sender: TObject);
    procedure btnForLoopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWhileLoop: TfrmWhileLoop;

implementation

{$R *.dfm}



procedure TfrmWhileLoop.btnForLoopClick(Sender: TObject);
var
  intBaseNumber, intSquareNumber : Integer;
begin
  intBaseNumber := 1;
  intSquareNumber := 1;
  lstResult.Clear;

  lstResult.Items.Add('Square numbers 1 to 10 with a FOR-Loop');
  lstResult.Items.Add('');

  for intBaseNumber := 1 to 10 do
  begin
     intSquareNumber := Sqr(intBaseNumber);
     lstResult.Items.Add(IntToStr(intBaseNumber) + ' squared is ' + IntToStr(intSquareNumber));
  end;
end;

procedure TfrmWhileLoop.btnWhileLoopClick(Sender: TObject);
var
  intBaseNumber, intSquareNumber : Integer;
begin
  intBaseNumber := 1;
  intSquareNumber := 1;
  lstResult.Clear;

  lstResult.Items.Add('Square numbers 1 to 10 with a WHILE-Loop');
  lstResult.Items.Add('');

  while intSquareNumber < 100 do
  begin
     intSquareNumber := Sqr(intBaseNumber);
     lstResult.Items.Add(IntToStr(intBaseNumber) + ' squared is ' + IntToStr(intSquareNumber));
     Inc(intBaseNumber);
  end;
end;

end.
