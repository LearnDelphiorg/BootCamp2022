unit Funraising_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabButtons: TTabSheet;
    TabImages: TTabSheet;
    btnR20: TButton;
    btnR50: TButton;
    btnR100: TButton;
    pnlIncome: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDisplay: TPanel;
    imgR20: TImage;
    imgR50: TImage;
    imgR100: TImage;
    btnFinal: TButton;
    lbl20: TLabel;
    lbl50: TLabel;
    lbl100: TLabel;
    procedure imgR20Click(Sender: TObject);
    procedure imgR50Click(Sender: TObject);
    procedure btnFinalClick(Sender: TObject);
    procedure btnR100Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnR50Click(Sender: TObject);
    procedure imgR100Click(Sender: TObject);
  private
    { Private declarations }
     itot :integer;
     inum20, inum50, inum100  : integer;
  public

    { Public declarations }
  end;

var
  Form1: TForm1;
 // itot:integer;
implementation

{$R *.dfm}

procedure TForm1.btnFinalClick(Sender: TObject);
begin
  lbl20.caption := inttostr(inum20);
  lbl50.Caption := inttostr(inum50);
  lbl100.caption := inttostr(inum100);
end;

procedure TForm1.btnR100Click(Sender: TObject);

begin

  itot := itot + 100;
  pnlIncome.Caption := 'R '+ inttostr(itot);
end;



procedure TForm1.btnR50Click(Sender: TObject);
begin
   itot := itot +50 ;
   pnlIncome.Caption := 'R' +inttostr(itot);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  itot :=0;
  inum20 :=0;
  inum50:=0;
  inum100:=0;
end;

procedure TForm1.imgR100Click(Sender: TObject);
begin
  inum100:= inum100+1;
   pnlDisplay.caption := 'R ' + inttostr(inum20 *20 +inum50* 50+ inum100*100);
end;

procedure TForm1.imgR20Click(Sender: TObject);
begin
  // inc(inum20);
  inum20 := inum20+1;
   pnlDisplay.caption := 'R ' + inttostr(inum20 *20 +inum50* 50+ inum100*100);
end;

procedure TForm1.imgR50Click(Sender: TObject);
begin
   inc(inum50);
   pnlDisplay.caption := 'R ' + inttostr(inum20 *20 +inum50* 50+ inum100*100);
end;

end.
