unit SelectionComponents_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    btnTotalItems: TButton;
    btnAdd: TButton;
    btnInsert: TButton;
    btnDelete: TButton;
    btnIndexOfItem: TButton;
    btnClear: TButton;
    lstFruit: TListBox;
    edtNumItems: TEdit;
    edtPosOfItem: TEdit;
    edtItemSelected: TEdit;
    edtIndexOfItem: TEdit;
    btnPositionOfItem: TButton;
    btnItemSelected: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    btnLoadFromFile: TButton;
    btnSaveToFile: TButton;
    Panel3: TPanel;
    lstFlowers: TListBox;
    lstNames: TListBox;
    btnNoSelection: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cmbMenu: TComboBox;
    btnItemSelectedCMB: TButton;
    edtMenuSelected: TEdit;
    rgpMenu: TRadioGroup;
    btnCopy1: TButton;
    btnCopyAll: TButton;
    lstMenu: TListBox;
    btnMove1: TButton;
    btnMoveAll: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure btnTotalItemsClick(Sender: TObject);
    procedure btnPositionOfItemClick(Sender: TObject);
    procedure btnItemSelectedClick(Sender: TObject);
    procedure btnIndexOfItemClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnNoSelectionClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnLoadFromFileClick(Sender: TObject);
    procedure btnSaveToFileClick(Sender: TObject);
    procedure btnItemSelectedCMBClick(Sender: TObject);
    procedure btnCopy1Click(Sender: TObject);
    procedure btnCopyAllClick(Sender: TObject);
    procedure btnMove1Click(Sender: TObject);
    procedure btnMoveAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnAddClick(Sender: TObject);
begin
lstFruit.Items.Add('Kiwi');
end;

procedure TForm2.btnClearClick(Sender: TObject);
begin
lstFruit.Items.Clear;
end;

procedure TForm2.btnCopy1Click(Sender: TObject);
Var
 iItemIndex:Integer;
begin
 iItemIndex := cmbMenu.ItemIndex;
 lstMenu.Items.Add(cmbMenu.Items[iItemIndex]);
end;

procedure TForm2.btnCopyAllClick(Sender: TObject);
Var
  i:Integer;
begin
  lstMenu.Items.Clear;
  for i := 0 to cmbMenu.Items.Count - 1 do
  begin
     lstMenu.Items.Add(cmbMenu.Items[i]);
  end;
end;

procedure TForm2.btnDeleteClick(Sender: TObject);
Var
 iIndexToDelete:Integer;
begin
//lstFruit.Items.Delete(1);
//iIndexToDelete := lstFruit.Items.IndexOf('Pear');
//lstFruit.Items.Delete(iIndexToDelete);
 iIndexToDelete := lstFruit.ItemIndex;
 lstFruit.Items.Delete(iIndexToDelete);
end;

procedure TForm2.btnIndexOfItemClick(Sender: TObject);
Var
  iIndexSelected:Integer;
begin
  iIndexSelected := lstFruit.Items.IndexOf('Guava');
  edtIndexOfItem.Text := IntToStr(iIndexSelected);
end;

procedure TForm2.btnInsertClick(Sender: TObject);
begin
lstFruit.Items.Insert(1,'Peach');
end;

procedure TForm2.btnItemSelectedClick(Sender: TObject);
Var
  iItemIndex:Integer;
  sItemSelected:String;
begin
  iItemIndex := lstFruit.Itemindex;
  sItemSelected := lstFruit.Items[iItemIndex];
  edtItemSelected.Text := sItemSelected;
end;

procedure TForm2.btnItemSelectedCMBClick(Sender: TObject);
Var
  sItemSelected:String;
  iIndexSelected:Integer;
begin
 //sItemSelected := cmbMenu.Text;


 iIndexSelected := cmbMenu.ItemIndex;
sItemSelected := cmbMenu.Items[iIndexSelected];
edtMenuSelected.Text := sItemSelected;
end;

procedure TForm2.btnLoadFromFileClick(Sender: TObject);
begin
lstFlowers.Items.LoadFromFile('Flowers.txt');
end;

procedure TForm2.btnMove1Click(Sender: TObject);
Var
 iItemIndex:Integer;
begin
 iItemIndex := cmbMenu.ItemIndex;
 lstMenu.Items.Add(cmbMenu.Items[iItemIndex]);
 cmbMenu.Items.Delete(iItemIndex);

end;

procedure TForm2.btnMoveAllClick(Sender: TObject);
Var
  i:Integer;
begin
  lstMenu.Items.Clear;
  for i := 0 to cmbMenu.Items.Count - 1 do
  begin
     lstMenu.Items.Add(cmbMenu.Items[i]);
     cmbMenu.Items.Delete(i);
  end;

end;

procedure TForm2.btnNoSelectionClick(Sender: TObject);
Var
 iIndexSelected:Integer;
begin
  iIndexSelected := lstFruit.ItemIndex;
  if iIndexSelected = -1 then
  begin
   ShowMessage('Please select a fruit');
  end
  else
  begin
  ShowMessage('You have made a selection');
  end;
end;

procedure TForm2.btnPositionOfItemClick(Sender: TObject);
Var
 iIndexSelectedItem:Integer;
begin
 iIndexSelectedItem := lstFruit.ItemIndex;
 edtPosOfItem.Text:= IntToStr(iIndexSelectedItem);
end;

procedure TForm2.btnSaveToFileClick(Sender: TObject);
begin
lstNames.Items.SaveToFile('Names.txt');
end;

procedure TForm2.btnTotalItemsClick(Sender: TObject);
Var
  iCount:Integer;
begin
  iCount := lstFruit.Items.Count;
  edtNumItems.Text:= IntToStr(iCount);
end;

end.
