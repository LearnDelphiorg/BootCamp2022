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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWhileLoop: TfrmWhileLoop;

implementation

{$R *.dfm}



end.
