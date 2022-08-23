unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  IPPeerClient, REST.Types, MSXML, PNGImage, Vcl.OleCtrls, SHDocVw, ActiveX,
  Vcl.Grids;

type
  TfrmMain = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    BitBtn1: TBitBtn;
    tabArtistStatistics: TTabSheet;
    tabArtistInfo: TTabSheet;
    edtSearchArtist: TEdit;
    btnSearch: TBitBtn;
    Label3: TLabel;
    lblArtistName: TLabel;
    edtYearFormed: TEdit;
    edtListeners: TEdit;
    edtPlayCount: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    tabXMLJson: TTabSheet;
    btnGet: TBitBtn;
    edtArtistNameXMLJson: TEdit;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    cmbRequestType: TComboBox;
    redtXMLJson: TRichEdit;
    redtSummary: TRichEdit;
    WebBrowser1: TWebBrowser;
    grdArtists: TStringGrid;
    btnLoad: TButton;
    btnClear: TButton;
    btnStats: TButton;
    Label5: TLabel;
    edtMostListeners: TEdit;
    Label7: TLabel;
    edtMostPlayed: TEdit;
    Label8: TLabel;
    edtNewComer: TEdit;
    procedure btnClearClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnStatsClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadImageIntoBrowser(browser: TWebBrowser; const path: String);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  BitHelper;

{$R *.dfm}

procedure TfrmMain.LoadImageIntoBrowser(browser: TWebBrowser; const path: String);
begin
end;

procedure TfrmMain.btnClearClick(Sender: TObject);
var
  i: Integer;
begin
  {  Clear and reset the StringGrid }
  for i := 0 to grdArtists.RowCount - 1 do
  begin
    grdArtists.Cells[0, i] := '';
    grdArtists.Cells[1, i] := '';
    grdArtists.Cells[2, i] := '';
    grdArtists.Cells[3, i] := '';
  end;
  grdArtists.RowCount := 2;
  grdArtists.ColCount := 4;
  grdArtists.FixedRows := 1;
  grdArtists.FixedCols := 0;
end;

procedure TfrmMain.btnLoadClick(Sender: TObject);
var
  artistName: array[1..7] of String;
  artistsArray : array[1..7, 1..3] of Integer;
  artistsFile : TextFile;
  fields: TStringList;
  line, name, yearFormed, listeners, playCount: String;
  i : Integer;
begin
  { Load artist information from file to arrays }
  AssignFile(artistsFile, 'artists.txt');
  Reset(artistsFile);
  fields := TStringList.Create;
  // loop through all lines of the file and read to array
  i := 1;
  while not eof(artistsFile) do
  begin
    Readln(artistsFile, line);
    //
    fields.Delimiter := ',';
    fields.StrictDelimiter := True;
    fields.DelimitedText := line;

    // first one is artist name
    artistName[i] := fields[0];
    // then the others are the int values, year, listeners and playcount
    artistsArray[i, 1] := StrToInt(fields[1]);
    artistsArray[i, 2] := StrToInt(fields[2]);
    artistsArray[i, 3] := StrToInt(fields[3]);

    // move index
    i := i + 1;
  end;

  // display array values on string grid
  grdArtists.Cells[0, 0] := 'Artist Name';
  grdArtists.Cells[1, 0] := 'Year Formed';
  grdArtists.Cells[2, 0] := 'Listeners';
  grdArtists.Cells[3, 0] := 'Play Count';
  for i := 1 to 7 do
  begin
    grdArtists.Cells[0, i] := artistName[i];
    grdArtists.Cells[1, i] := IntToStr(artistsArray[i, 1]);
    grdArtists.Cells[2, i] := IntToStr(artistsArray[i, 2]);
    grdArtists.Cells[3, i] := IntToStr(artistsArray[i, 3]);
    grdArtists.RowCount := grdArtists.RowCount + 1;
  end;
  // close the file when complete
  CloseFile(artistsFile);
end;


procedure TfrmMain.btnStatsClick(Sender: TObject);
var
  mostListenersIndex: Integer;
  mostPlayedIndex: Integer;
  newComerIndex: Integer;
  i : Integer;
begin
  // initialize indices
  newComerIndex := 1;
  mostListenersIndex := 1;
  mostPlayedIndex := 1;

  for i := 2 to 7 do
  begin
    // New comer
    if StrToInt(grdArtists.Cells[1, i]) > StrToInt(grdArtists.Cells[1, newComerIndex]) then
      newComerIndex := i;
    // Most listeners
    if StrToInt(grdArtists.Cells[2, i]) > StrToInt(grdArtists.Cells[2, mostListenersIndex]) then
      mostListenersIndex := i;
    // Most played
    if StrToInt(grdArtists.Cells[3, i]) > StrToInt(grdArtists.Cells[3, mostPlayedIndex]) then
      mostPlayedIndex := i;
  end;

  // Display results using index
  edtNewComer.Text := grdArtists.Cells[0, newComerIndex] + ' - ' + grdArtists.Cells[ , newComerIndex];
  edtMostListeners.Text := grdArtists.Cells[0, mostListenersIndex] + ' - ' + grdArtists.Cells[2, mostListenersIndex];
  edtMostPlayed.Text := grdArtists.Cells[0, mostPlayedIndex] + ' - ' + grdArtists.Cells[3, mostPlayedIndex];
end;

end.
