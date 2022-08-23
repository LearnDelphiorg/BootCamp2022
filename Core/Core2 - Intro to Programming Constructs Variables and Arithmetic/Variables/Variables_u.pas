unit Variables_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Btngreetings: TButton;
    edtGreet: TEdit;
    pnlOut: TPanel;
    edtWho: TEdit;
    btnAdd: TButton;
    procedure BtngreetingsClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnAddClick(Sender: TObject);
var ival1, ival2: integer;
begin
   ival1 := strtoint(edtGreet.text);    //'34'
   ival2 := strtoint(edtWho.text);
   pnlOut.Caption := inttostr(ival1 + ival2);
end;

procedure TForm1.BtngreetingsClick(Sender: TObject);
var sGreet, sWho :string;
begin
//  showmessage('Hello All');

//showmessage(inputbox('type','a message','here'));

 //showmessage(edtGreet.text);

// pnlOut.Caption := edtGreet.text;

// input, process, output

 sgreet := edtGreet.Text;
 sWho := edtWho.Text;
 pnlout.caption:= sgreet +''+ swho;  //join



end;

end.
