unit frmCharacter_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, clsCharacter_u, Vcl.Samples.Spin,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rdgCharacters: TRadioGroup;
    redOutput: TRichEdit;
    edtName: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbType: TComboBox;
    speHealth: TSpinEdit;
    btnCreate: TButton;
    edtEName: TEdit;
    edtNewName: TEdit;
    edtEType: TEdit;
    edtEHealth: TEdit;
    cmbNewType: TComboBox;
    speNewHealth: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnNewName: TButton;
    btnNewType: TButton;
    btnHealth: TButton;
    procedure btnCreateClick(Sender: TObject);
    procedure rdgCharactersClick(Sender: TObject);
    procedure btnNewNameClick(Sender: TObject);
    procedure btnNewTypeClick(Sender: TObject);
    procedure btnHealthClick(Sender: TObject);
  private
    { Private declarations }
    objCharacter : Array [1..5] of TCharacter;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iCounter : Integer = 1;


implementation

{$R *.dfm}

procedure TForm1.btnCreateClick(Sender: TObject);
begin
  redOutput.Clear;

  objCharacter[iCounter] := TCharacter.createCharacter(edtName.Text, cmbType.Text, speHealth.Value);

  rdgCharacters.Items.Add(objCharacter[iCounter].getName);

  redOutput.Lines.Add(objCharacter[iCounter].toString);

  Inc(iCounter);

end;

procedure TForm1.btnHealthClick(Sender: TObject);
begin
  objCharacter[rdgCharacters.ItemIndex + 1].setHealth(speNewHealth.Value);
  redOutput.Clear;
  redOutput.Lines.Add(objCharacter[rdgCharacters.ItemIndex + 1].toString);
  edtEHealth.Text := intToStr(objCharacter[rdgCharacters.ItemIndex + 1].getHealth);
  speNewHealth.value := 0;
end;

procedure TForm1.btnNewNameClick(Sender: TObject);
begin

  objCharacter[rdgCharacters.ItemIndex + 1].setName(edtNewName.text);
  redOutput.Clear;
  redOutput.Lines.Add(objCharacter[rdgCharacters.ItemIndex + 1].toString);
  edtEName.Text := objCharacter[rdgCharacters.ItemIndex + 1].getName;
  edtNewName.Clear;

end;

procedure TForm1.btnNewTypeClick(Sender: TObject);
begin
  objCharacter[rdgCharacters.ItemIndex + 1].setType(cmbNewType.text);
  redOutput.Clear;
  redOutput.Lines.Add(objCharacter[rdgCharacters.ItemIndex + 1].toString);
  edtEType.Text := objCharacter[rdgCharacters.ItemIndex + 1].getType;
  cmbNewType.Clear;
end;

procedure TForm1.rdgCharactersClick(Sender: TObject);
begin

  edtEName.Text := objCharacter[rdgCharacters.ItemIndex + 1].getName;
  edtEType.Text := objCharacter[rdgCharacters.ItemIndex + 1].getType;
  edtEHealth.Text := IntToStr(objCharacter[rdgCharacters.ItemIndex + 1].getHealth);

end;

end.
