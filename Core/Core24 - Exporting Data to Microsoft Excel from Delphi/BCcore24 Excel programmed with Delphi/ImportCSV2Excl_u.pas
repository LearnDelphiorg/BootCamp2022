unit ImportCSV2Excl_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Buttons, Vcl.Grids, Vcl.ExtCtrls,
  Excel2010;                                  // added! for Excel components
  // URL: (part of solution for Excel Chart discussion) - link deleted on Internet!
  // http://embarcadero.newsgroups.archived.at/public.delphi.oleautomation/201006/1006091086.html

type
  TfrmTestExcelChart = class(TForm)
    btnImport: TButton;
    Label1: TLabel;
    Shape1: TShape;
    memCSV: TMemo;
    btnGridToExcel: TButton;
    strgData: TStringGrid;
    btnChart: TButton;
    procedure btnImportClick(Sender: TObject);
    procedure btnGridToExcelClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnChartClick(Sender: TObject);
  private
    { Private declarations }
    FXLA :  TExcelApplication;
    FXLWB : TExcelWorkbook;
    FXLWS : TExcelWorkSheet;

    XLRange : ExcelRange;

    Procedure SetupExcel;
    Procedure AddData;
    Procedure SetRange;
    Procedure AddChart;
  public
    { Public declarations }
  end;

var
  frmTestExcelChart: TfrmTestExcelChart;

implementation

{$R *.dfm}

procedure TfrmTestExcelChart.FormCreate(Sender: TObject);
begin
  FXLA := TExcelApplication.Create(nil);
  FXLWB := TExcelWorkbook.Create(nil);
  FXLWS := TExcelWorksheet.Create(nil);

  FXLA.AutoConnect := True;
end;

procedure TfrmTestExcelChart.FormDestroy(Sender: TObject);
begin
  FXLWS.Free;
  FXLWB.Free;
  FXLA.Free;
end;
//------------------------------------------------------------------------
procedure TfrmTestExcelChart.btnReadClick(Sender: TObject);
begin
  memCSV.Clear;
  memCSV.Lines.LoadFromFile('..\..\CSVdata\RSA Population.txt');
end;

procedure TfrmTestExcelChart.btnImportClick(Sender: TObject);
Var
  col, lno : Integer;
  ln, oneDat : String;
begin
  strgData.RowCount := memCSV.Lines.Count;
  for lno := 0 to memCSV.Lines.Count-1 do
  begin
    col := 0;
    ln := memCSV.Lines.Strings[lno] + ',';  // artificially added ','
    while Pos(',', ln) > 0 do
    begin
      oneDat := Copy(ln, 1, Pos(',', ln)-1);
      strgData.Cells[col, lno] := oneDat;
      Delete(ln, 1, Pos(',', ln));
      Inc(col);
    end;
  end;
  strgData.ColWidths[1] := 120;
  strgData.ColWidths[2] := 140;
  strgData.ColWidths[3] := 170;
end;
//-----------------------------------------------------------------------
procedure TfrmTestExcelChart.btnChartClick(Sender: TObject);
begin
  SetRange;
  AddChart;
end;

procedure TfrmTestExcelChart.btnGridToExcelClick(Sender: TObject);
begin
  SetupExcel;
  AddData;
end;

Procedure TfrmTestExcelChart.SetupExcel;
Var
  LCID : Integer;
Begin
  // Get "local user ID"
  LCID := GetUserDefaultLCID;

  // Hide Excel while working
  FXLA.Visible[LCID] := False;
  try
    // no prompts
    FXLA.DisplayAlerts[LCID] := False;

    // add new workbook and connect WB wrapper
    FXLWB.ConnectTo(FXLA.Workbooks.Add(xlWBATWorksheet, LCID) );

    // connect to sheet 1
    FXLWS.ConnectTo( FXLWB.Worksheets[1] as _Worksheet);

    // select the first worksheet
    (FXLWB.Worksheets[1] as _WorkSheet).Select(EmptyParam, LCID);
  finally
    //failsafe always leave excel visible when we quit/disconnect.
    FXLA.Visible[LCID] := True;
  end;
End;

Procedure TfrmTestExcelChart.AddData;  // Add data AND format spread sheet
Var
  iRow, iCol : Integer;
  ColRange: OleVariant;
Begin
  // Insert Data into Cells[Row,Col]  - NB! Row-> Col!!!
  iRow := 1;
  while iRow <= strgData.RowCount do
  begin
    for iCol := 1 to strgData.ColCount do
      FXLWS.Cells.Item[iRow+1,iCol] := strgData.Cells[iCol-1, iRow-1];
    Inc(iRow);
  end;
  //============== Format Data ======================
  // Setting a row of data with one call (variable data types!)
  FXLWS.Range['B1', 'C1'].Value2 :=
        VarArrayOf([FormatDateTime('yyyy/mm/dd', Now), 'RSA Population']);

  // Setting a formula
  FXLWS.Range['C12', 'D12'].Formula := '=Sum(C3:C11)';

  // Change Cell Alignement - Centre / Right
  FXLWS.Range['A2','A12'].HorizontalAlignment := xlHAlignCenter;
  FXLWS.Range['C2','D12'].HorizontalAlignment := xlRight;
  // vertical bottom alignment
  FXLWS.Range['A1','D1'].VerticalAlignment := xlVAlignBottom;

  // Change the Column Width.
  FXLWS.Range['A2', 'A2'].ColumnWidth := 4;
  FXLWS.Range['B2', 'B2'].ColumnWidth := 15;
  FXLWS.Range['C2', 'C2'].ColumnWidth := 17;
  FXLWS.Range['D2', 'D2'].ColumnWidth := 19;
  FXLWS.Range['E2', 'E2'].ColumnWidth := 0.6;

  // Change Rowheight
  FXLWS.Range['A2', 'A12'].RowHeight := 16.75;

  // Merge cells
  FXLWS.Range['C1', 'D1'].MergeCells := True;

  // Apply borders to cells
  FXLWS.Range['A12','D12'].Borders.Weight := xlThick; // Thick line
  FXLWS.Range['A2','D11'].Borders.Weight := xlThin;  // Thin line

  // Set Bold Font in cells
  FXLWS.Range['A1','D2'].Font.Bold := True;

  // Set Font colour in cells
  FXLWS.Range['A12','D12'].Font.Color := clBlue;

  // Set Font Size
  FXLWS.Range['A1','B1'].Font.Size := 9;
  FXLWS.Range['C1','D1'].Font.Size := 16;
  FXLWS.Range['A2','D2'].Font.Size := 12;
End;
//---------------------------------------------------------
Procedure TfrmTestExcelChart.SetRange;
begin
  // The range for the data to be used for the chart - column headers included
  XLRange:=FXLWS.Range['B2','D11'];
end;

Procedure TfrmTestExcelChart.AddChart;
var
  XLChart : ExcelChart;
  WSChartObjects : OLEVariant; //ChartObjects;
  WSChartObject : OLEVariant;  //ChartObject;
  ChartAxis : Axis;
  LCID : Integer;
Begin
  // Get "local user ID"
  LCID := GetUserDefaultLCID;
  // get reference to collection of chartobjects on worksheet
  WSChartObjects := ChartObjects( FXLWS.ChartObjects(EmptyParam, LCID));
  // add new chart with specified position and size
  WSChartObject := WSChartObjects.Add(
      FXLWS.Range['A14', EmptyParam].Left,    // Left
      FXLWS.Range['A14', EmptyParam].Top,     // Top
      FXLWS.Range['A14','I34'].Width,         // Width
      FXLWS.Range['A14','I34'].Height);       // Height
  // as these are late bound variant references (slow), now we get an early bound
  // interface again (to the same chart object) to use from now on...
  XLChart := IDispatch(WSChartObject.Chart) as ExcelChart;
                                                         // Try others: ========
  // set up the chart type                               //xl3DAreaStacked;
  XLChart.ChartType := xl3DColumn;  //xlBarClustered;    //xlLineMarkers;
  // set data range, indicating data is in columns...    //xlPieExploded;
  XLChart.SetSourceData( XLRange, xlColumns );           //xlAreaStacked;
                                                         //xl3DPie;
  // Set the chart title                                 //xl3DArea;
  XLChart.HasTitle[LCID] := True;
  XLChart.ChartTitle[LCID].Characters[EmptyParam,EmptyParam].Text :=
      'RSA Population / Living Area';

  // x axis title.
  ChartAxis := Axis ( XLChart.Axes(xlCategory, xlPrimary, LCID) );
  ChartAxis.HasTitle := True;
  ChartAxis.AxisTitle.Characters[EmptyParam,EmptyParam].Text := 'Province';

  // and the y axis...
  ChartAxis := Axis ( XLChart.Axes(xlValue, xlPrimary, LCID) );
  ChartAxis.HasTitle := True;
  ChartAxis.AxisTitle.Characters[EmptyParam,EmptyParam].Text :=
      'Citizens [x1000] / Area [sq Km x100]';

  // legend? yes.  Where?  at the bottom... Data table? no thanks...
  XLChart.HasLegend[LCID] := True;
  XlChart.Legend[LCID].Position := xlBottom;
  XLChart.HasDataTable := False;
end;

end.
