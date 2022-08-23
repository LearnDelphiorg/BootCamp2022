unit Subroutines_U;
//Delphi bootcamp Core 7 - 23 August 2022
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Math, Buttons, Vcl.Mask,
  Vcl.Samples.Spin, Vcl.Imaging.pngimage;

type
  TfrmSubroutines = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    btnId: TButton;
    edtCell: TEdit;
    btnCell: TButton;
    GroupBox2: TGroupBox;
    btnHeading: TButton;
    btnHeadings: TButton;
    btnIDinfo: TButton;
    GroupBox3: TGroupBox;
    btnFunc: TButton;
    btnPros: TButton;
    sedNumber: TSpinEdit;
    redOutput: TRichEdit;


  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmSubroutines: TfrmSubroutines;

implementation

{$R *.dfm}
//==============================================================================

end.
