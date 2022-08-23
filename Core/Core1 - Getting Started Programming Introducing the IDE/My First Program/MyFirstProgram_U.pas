unit MyFirstProgram_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,pngimage;

type
  TfrmMyFirstProgram = class(TForm)
    btnRun: TButton;
    imgBootCamp: TImage;
    lblFirst: TLabel;
    procedure btnRunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMyFirstProgram: TfrmMyFirstProgram;

implementation

{$R *.dfm}

procedure TfrmMyFirstProgram.btnRunClick(Sender: TObject);
begin
//ShowMessage('Hallo World!');
//ShowMessage('Bootcamp 2022');
btnRun.Caption := 'Let us run';
imgBootCamp.Picture.LoadFromFile('BootCamp.png');
imgBootCamp.Width := 80;
imgBootCamp.Height := 80;
imgBootCamp.Stretch := True;

lblFirst.Caption := 'I love Delphi';

end;

end.
