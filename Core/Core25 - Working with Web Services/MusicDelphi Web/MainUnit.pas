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
    BitBtn1: TBitBtn;
    Label3: TLabel;
    RESTRequest1: TRESTRequest;
    RESTClient1: TRESTClient;
    PageControl1: TPageControl;
    tabArtistStatistics: TTabSheet;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    grdArtists: TStringGrid;
    btnLoad: TButton;
    btnClear: TButton;
    btnStats: TButton;
    edtMostListeners: TEdit;
    edtMostPlayed: TEdit;
    edtNewComer: TEdit;
    tabXMLJson: TTabSheet;
    btnGet: TBitBtn;
    edtArtistNameXMLJson: TEdit;
    cmbRequestType: TComboBox;
    redtXMLJson: TRichEdit;
    tabArtistInfo: TTabSheet;
    lblArtistName: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edtSearchArtist: TEdit;
    btnSearch: TBitBtn;
    edtYearFormed: TEdit;
    edtListeners: TEdit;
    edtPlayCount: TEdit;
    redtSummary: TRichEdit;
    WebBrowser1: TWebBrowser;
    procedure btnGetClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
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
var
  memStream: TMemoryStream;
   strList:   TStringList;
  html: String;
begin
  //-------------------
  // Load a blank page.
  //-------------------
  browser.Navigate('about:blank');
  while browser.ReadyState <> READYSTATE_COMPLETE do
  begin
    Sleep(5);
    Application.ProcessMessages;
  end;
  //---------------
  // Load the html.
  //---------------
  html := '<html><body><img width=100% height=100% src="' +  path + '"/> </body></html>';
  if Assigned(browser.Document) then
   begin
     strList := TStringList.Create;
     try
       memStream := TMemoryStream.Create;
       try
         strList.Text := html;
         strList.SaveToStream(memStream) ;
         memStream.Seek(0, 0) ;
         (browser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(memStream)) ;
       finally
         memStream.Free;
       end;
     finally
       strList.Free;
     end
   end;
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


procedure TfrmMain.btnGetClick(Sender: TObject);
begin
  { call the artist.getinfo web service put the xml/json response on the memo }

  // Set up the REST Client - base URL
  RESTClient1.BaseURL := 'http://ws.audioscrobbler.com/2.0/';

  // set proper resource for the Request
  RESTRequest1.Resource := '?method=artist.getinfo&api_key=2a247680b483de11cc791ea76bf7ac4e';

  // check if xml or json then
  if(cmbRequestType.ItemIndex = 0) then
    // XML is default, no need to add anything
  else
    // json -> add format=json
    RESTRequest1.Params.AddItem('format', 'json', TRESTRequestParameterKind.pkGETorPOST);

  // add paraeter - artist name we are searching for
  RESTRequest1.Params.AddItem('artist', edtArtistNameXMLJson.Text, TRESTRequestParameterKind.pkGETorPOST);
  RESTRequest1.Params.AddItem('autocorrect', '1', TRESTRequestParameterKind.pkGETorPOST);

  // the request is GET
  RESTRequest1.Method := TRESTRequestMethod.rmGET;

  // lets now execute the request
  RESTRequest1.Execute;

  // save results in memo
  redtXMLJson.Clear;
  redtXMLJson.Lines.Add(RESTRequest1.Response.Content);
end;


procedure TfrmMain.btnSearchClick(Sender: TObject);
var
    { Variables used to fetch artist data from web service }
    xmlResponse: IXMLDOMDocument;
    artistName: IXMLDOMNode;
    yearFormed: IXMLDOMNode;
    listeners: IXMLDOMNode;
    playCount: IXMLDOMNode;
    imageURL: IXMLDOMNode;
    summary: IXMLDOMNode;
    //
    ZoomFac: OLEVariant;
begin
  { call the artist.getinfo web service put the xml/json response on the memo }

  // Set up the REST Client - base URL
  RESTClient1.BaseURL := 'http://ws.audioscrobbler.com/2.0/';

  // set proper resource for the Request
  RESTRequest1.Resource := '?method=artist.getinfo&api_key=2a247680b483de11cc791ea76bf7ac4e';

  // add paraeter - artist name we are searching for
  RESTRequest1.Params.AddItem('artist', edtSearchArtist.Text, TRESTRequestParameterKind.pkGETorPOST);
  RESTRequest1.Params.AddItem('autocorrect', '1', TRESTRequestParameterKind.pkGETorPOST);

  // the request is GET
  RESTRequest1.Method := TRESTRequestMethod.rmGET;

  // lets now execute the request
  RESTRequest1.Execute;

  // Yippeeee, we now have our artist info in the response, show on controls
  //  but first, lets parse the xml and then save in variables
  // save response to XML Documnet
  xmlResponse := CoDOMDocument.Create;
  xmlResponse.loadXML(RESTRequest1.Response.Content);
  // put content in variables
  artistName := xmlResponse.selectSingleNode('//name');
  yearFormed := xmlResponse.selectSingleNode('//yearformed');
  listeners := xmlResponse.selectSingleNode('//listeners');
  playCount := xmlResponse.selectSingleNode('//playcount');
  imageURL := xmlResponse.selectNodes('//image').nextNode.lastChild;// take last image from many
  summary := xmlResponse.selectSingleNode('//summary');
  // now display on controls.. ahhhh and the the image picture in a webbrowser component :-)
  lblArtistName.Caption := artistName.text;
  //edtYearFormed.Text := yearFormed.text;
  edtListeners.Text := listeners.text;
  edtPlayCount.Text := playCount.text;
  // image needs some code , load from internet
  LoadImageIntoBrowser(WebBrowser1, imageURL.text);

  redtSummary.Clear;
  redtSummary.Lines.Add(summary.text);
end;


end.
