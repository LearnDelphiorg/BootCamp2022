unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmDemo = class(TForm)
    sedPosition: TSpinEdit;
    lblNewTime: TLabel;
    edtTime: TEdit;
    lblPosition: TLabel;
    btnChangeTime: TButton;
    btnWeeklyAvg: TButton;
    btnBestTime: TButton;
    lblWeek: TLabel;
    sedWeek: TSpinEdit;
    sgdData: TStringGrid;
    btnDisplayCodes: TButton;
    btnDisplayTimes: TButton;
    redDisplay: TRichEdit;
    procedure btnChangeTimeClick(Sender: TObject);
    procedure btnWeeklyAvgClick(Sender: TObject);
    procedure btnBestTimeClick(Sender: TObject);
    procedure btnDisplayCodesClick(Sender: TObject);
    procedure btnDisplayTimesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDemo: TfrmDemo;

 //Examples of string 2D array///////
    arrCodes : array[ 1..3, 1..2] of string = ( ('ABC','MNO'),
                                                ('JKL','XYZ'),
                                                ('RST','DEF'));
 //arrTime array for 3 times obtained every 5 weeks
    arrTime : array[1..5,1..3] of real = ( (13.26, 13.01, 12.56),
                                           (12.86, 12.96, 12.23),
                                           (12.06, 11.97, 12.15),
                                           (13.12, 12.87, 13.05),
                                           (12.61, 12.4,  12.77) ) ;
 //initialise values to the array
implementation

{$R *.dfm}

procedure TfrmDemo.btnWeeklyAvgClick(Sender: TObject);
var rSum, rAve : real ;
    iCol, iRow: Integer;
begin
//Calculate and display the average time
redDisplay.Clear;



end;

procedure TfrmDemo.btnBestTimeClick(Sender: TObject);
var rBest : real ;
    iRow, iCol : integer ;
begin
//Calculate and display the best time


end;

procedure TfrmDemo.btnDisplayCodesClick(Sender: TObject);
var
  iRow: Integer;
  iCol: Integer;
begin
//Display arrCodes in string grid



end;

procedure TfrmDemo.btnChangeTimeClick(Sender: TObject);
var iPosition, iWeek : integer ;
    rNewTime : real ;
begin
//Change time in the array
//INPUT
rNewTime := StrToFloat(edtTime.Text) ;
iPosition := sedPosition.Value ;
iWeek := sedWeek.Value ;

//PROCESS
arrTime[ iWeek, iPosition ] := rNewTime ;

//OUTPUT / FEEDBACK
showmessage('New value added') ;

end;

procedure TfrmDemo.btnDisplayTimesClick(Sender: TObject);
var
  iRow: Integer;
  iCol: Integer;
begin
//Display arrTime in string grid



end;

end.
