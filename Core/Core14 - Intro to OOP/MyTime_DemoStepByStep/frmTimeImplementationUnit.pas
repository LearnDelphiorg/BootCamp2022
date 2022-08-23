unit frmTimeImplementationUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsMyTimeUnit;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  myTime1 , myTime2 : TMyTime;



implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  myTime1 := TMyTime.create(10,'|',5);
  myTime2 := TMyTime.Create;


  ListBox1.Items.Add('Time 1 = ' + IntToStr(myTime1.getHours) + myTime1.getSeparator +
                                   IntToStr(myTime1.getMinutes));

  ListBox1.Items.Add('Time 2 = ' + IntToStr(myTime2.getHours) + myTime2.getSeparator +
                                   IntToStr(myTime2.getMinutes));



  ListBox1.Items.Add(' ');
  myTime2.setMinutes(7);

  ListBox1.Items.Add('Time 1 = ' + myTime1.toString);

  ListBox1.Items.Add('Time 2 = ' + myTime2.toString);






  end;

end.
