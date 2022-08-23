unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmMain = class(TForm)
    lblName: TLabel;
    lblHours: TLabel;
    lblParts: TLabel;
    edtName: TEdit;
    edtHours: TEdit;
    edtParts: TEdit;
    mmoDisplay: TMemo;
    lblMainTitle: TLabel;
    btnPrintToFile: TButton;
    btnRefresh: TButton;
    bbtnClose: TBitBtn;
    Image1: TImage;
    btnLoadFromFile: TButton;
    Shape1: TShape;
    Shape2: TShape;
    lblSeniorDiscount: TLabel;
    ckbDiscount: TCheckBox;
    procedure btnPrintToFileClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnLoadFromFileClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  { Declare Constants }
  const Rate: Double = 225.0;
  const Tax: Double = 0.16;

implementation

{$R *.dfm}

procedure TfrmMain.btnPrintToFileClick(Sender: TObject);
var
  { Declare Variables }
  Name: String;
  rHours, rHoursCost, rParts, rPartsCost, rTotal: Real;

  fileWriter: TStreamWriter;

begin
  { Get data from Edit Boxes
    NOTE the StrToFloat function to change strings to float numbers }
  Name := edtName.Text;
  rHours := StrToFloat(edtHours.Text);
  rParts := StrToFloat(edtParts.Text);

  { Calculate the total amount}
  rHoursCost := rHours * Rate;
  rPartsCost := rParts + (rParts * Tax);
  rTotal := rHoursCost + rPartsCost;

  if ckbDiscount.Checked then
    begin
      rTotal := rTotal * 0.9;
    end;


  { Create a file stream and open a text writer for it }
  fileWriter := TStreamWriter.Create(
  TFileStream.Create(Name + '_Invoice.txt', fmCreate),
  TEncoding.UTF8);

  { Write the data to the textfile}

  fileWriter.WriteLine('FRIDGE REPAIR BILL');
  fileWriter.WriteLine(' ');
  fileWriter.WriteLine('Customer''s Name     : ' + Name);
  fileWriter.WriteLine('Hours of labor cost  : ' + FormatFloat('#,##0.00', rHoursCost));
  fileWriter.WriteLine('Parts & Repairs cost : ' + FormatFloat('#,##0.00', rPartsCost));
  fileWriter.WriteLine('                      ========');
  fileWriter.WriteLine('TOTAL DUE:            ' + FormatFloat('#,##0.00', rTotal));
  fileWriter.WriteLine('                      ========');


  fileWriter.Flush;
  fileWriter.Close;
  fileWriter.BaseStream.Free;
  fileWriter.Free();

  btnLoadFromFile.Enabled := true;

end;

procedure TfrmMain.btnRefreshClick(Sender: TObject);
begin
  // Clear all edits and the memo
  edtHours.Text := '';
  edtName.Text := '';
  edtParts.Text := '';

  edtName.SetFocus;

  ckbDiscount.Checked := false;
  mmoDisplay.Lines.Clear();
  btnLoadFromFile.Enabled := false;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  btnRefreshClick(Self);
end;

procedure TfrmMain.btnLoadFromFileClick(Sender: TObject);
begin
  mmoDisplay.Clear;
  mmoDisplay.Lines.LoadFromFile(edtName.Text + '_Invoice.txt')
end;

end.
