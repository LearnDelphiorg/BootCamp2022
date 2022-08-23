unit frmCharacter_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, clsCharacter_u, clsMage_u,
  clsKnight_u;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rdgMage: TRadioGroup;
    redOutput: TRichEdit;
    edtName: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbType: TComboBox;
    speHealth: TSpinEdit;
    btnCreate: TButton;
    edtMageName: TEdit;
    edtMagicType: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Knight: TTabSheet;
    speLevel: TSpinEdit;
    btnMage: TButton;
    rdgKnight: TRadioGroup;
    procedure btnCreateClick(Sender: TObject);
    procedure btnMageClick(Sender: TObject);
    procedure rdgMageClick(Sender: TObject);

  private
    { Private declarations }
    objCharacters: array [1 .. 5] of TCharacter;
    objMage : array [1..5] of TMage;
    objKnight : array [1..5] of TKnight;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  iMageCounter: integer = 1;

implementation

{$R *.dfm}

procedure TForm1.btnCreateClick(Sender: TObject);
begin

  if cmbType.Text = 'Mage' then
  begin

    objMage[iMageCounter] := TMage.createCharacter(edtName.Text, cmbType.Text,
      speHealth.Value);

    rdgMage.Items.Add(objMage[iMageCounter].getType + ': ' + objMage[iMageCounter].getName);
    Inc(iMageCounter);
  end
  else if cmbType.Text = 'Knight' then
  begin

  end;




end;



procedure TForm1.btnMageClick(Sender: TObject);
begin

   objMage[rdgMage.ItemIndex + 1].setMagicType(edtMagicType.Text);
   objMage[rdgMage.ItemIndex + 1].setLevel(speLevel.Value);
   redOutput.Clear;
   redOutput.Lines.Add(objMage[rdgMage.ItemIndex + 1].toString);
   redOutput.Lines.Add(objMage[rdgMage.ItemIndex + 1].getSpells);

end;

procedure TForm1.rdgMageClick(Sender: TObject);
begin

  edtMageName.Text := objMage[rdgMage.ItemIndex + 1].getName;


end;

end.
