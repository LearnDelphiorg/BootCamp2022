unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmDemo = class(TForm)
    sedPosition: TSpinEdit;
    lblNewTime: TLabel;
    edtTime: TEdit;
    lblPosition: TLabel;
    btnNewTime: TButton;
    redDisplay: TRichEdit;
    btnDisplayTimes: TButton;
    btnAvgTime: TButton;
    btnBestTime: TButton;
    btnSort: TButton;
    procedure btnNewTimeClick(Sender: TObject);
    procedure btnDisplayTimesClick(Sender: TObject);
    procedure btnAvgTimeClick(Sender: TObject);
    procedure btnBestTimeClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemo: TfrmDemo;

 //Examples of array declarations///////
    arrYears : array[8..12] of integer ;
    arrList : array[-5..5] of string ;
    arrGrades : array['A'..'F'] of integer ;

 //arrTime array for 10 real values
    arrTime : array[1..10] of real = (13.26, 13.01, 12.56, 12.86, 12.96, 12.23, 12.06, 11.97, 12.15, 0 ) ;
 //initialise values to the array
implementation

{$R *.dfm}

procedure TfrmDemo.btnAvgTimeClick(Sender: TObject);
var rSum, rAve : real ;
    i: Integer;
begin
//Calculate and display the average time


end;

procedure TfrmDemo.btnBestTimeClick(Sender: TObject);
var rBest : real ;
    i : integer ;
begin
//Calculate and display the best time



end;

procedure TfrmDemo.btnDisplayTimesClick(Sender: TObject);
var
  i: Integer;
begin
//Display all the times


end;

procedure TfrmDemo.btnNewTimeClick(Sender: TObject);
var iPosition : integer ;
    rNewTime : real ;
begin
//Add a new time to the array
//INPUT
rNewTime := StrToFloat(edtTime.Text) ;
iPosition := sedPosition.Value ;

//PROCESS
arrTime[ iPosition ] := rNewTime ;

//OUTPUT / FEEDBACK
showmessage('New value added') ;

end;

procedure TfrmDemo.btnSortClick(Sender: TObject);
begin
//Sort the array



end;

end.
