unit BMPinfo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ComCtrls;

const
   maxdoc = 20000000;    // ~20MB

type
   BigArr = Array[1..maxdoc] of AnsiChar;

  TfrmTransform = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    imgPic: TImage;
    lstInfo: TListBox;
    btnLoadPic: TButton;
    mmText: TMemo;
    btnLoadText: TButton;
    btnMerge: TButton;
    OpenDialog1: TOpenDialog;
    btnSaveNew: TButton;
    TabSheet2: TTabSheet;
    stsInfo: TStatusBar;
    Panel1: TPanel;
    Label5: TLabel;
    imgCoded: TImage;
    btnDecode: TButton;
    mmDecoded: TMemo;
    btnLoad: TButton;
    lblEncrypt: TLabel;
    lblCapac: TLabel;
    prgCaps: TProgressBar;
    prgEncrypt: TProgressBar;
    lblTSize: TLabel;
    btnSave: TButton;
    edtFName: TEdit;
    lblCache: TLabel;
    lblChars: TLabel;
    Label8: TLabel;
    lblRead: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    lblFinish: TLabel;
    procedure btnLoadPicClick(Sender: TObject);
    procedure btnLoadTextClick(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure btnSaveNewClick(Sender: TObject);
    procedure btnDecodeClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
  public
    TextChars : BigArr;    // max text 20,000,000 chars ~ 20MB
    BMPfSize : Int64;      // filesize of BMP file (max: beyond Terra byte)
    BitCount : Integer;    // bit resolution for image
    fSize : Int64;         // file size of text file
    fName : String;        // bitmap filename used for merging
    // HELPER functions / procedures
    procedure bmpDetails(nameBMP : String);
    function ChangePix(InputColor: TColor; hundrd: Byte; tens: Byte;
        singll: Byte): TColor;
    procedure findCharDetails(charX: AnsiChar; Var hundrd: Byte;
        Var tens: Byte;Var singll: Byte);
    function charFromPix(InputPixel: TColor): AnsiChar;
  end;

var
  frmTransform: TfrmTransform;

implementation

{$R *.dfm}
// This program merges ASCII/ANSI text into a BMP image and retrieves it again.
// NB! You have to work with AnsiChar NOT with Char (which represents UNICODE)
// Source code from: 	Torry's Delphi pages
//						sf
//--------------------- HELPER functions/ procedures ------------------------
// Displays BMP parameters (width, height, etc)
procedure TfrmTransform.bmpDetails(nameBMP : String);
var
  fileheader: TBitmapfileheader;
  infoheader: TBitmapinfoheader;
  s: TFilestream;
begin
  s := TFileStream.Create(nameBMP, fmOpenRead);
  try
    s.Read(fileheader, SizeOf(fileheader));
    s.Read(infoheader, SizeOf(infoheader));
  finally
    s.Free;
  end;
  lstInfo.Items.Clear;
  BMPfSize := fileheader.bfSize;
  BitCount := infoheader.biBitCount;
  // BitCount:   1 = black/white   4 = 16 colors  8 = 256 colors   etc.
  lstInfo.Items.Add('Filesize:  ' + FloatToStrF(BMPfSize, ffNumber, 12, 0) + ' B');
  lstInfo.Items.Add('Width:     ' + IntToStr(infoheader.biWidth));
  lstInfo.Items.Add('Height:    ' + IntToStr(infoheader.biHeight));
  lstInfo.Items.Add('Pixels:    '
    + FloatToStrF(infoheader.biWidth * infoheader.biHeight, ffNumber, 14, 0));
  lstInfo.Items.Add('BitCount:  ' + IntToStr(BitCount));
  lstInfo.Items.Add('Used:      ' + IntToStr(infoheader.biClrUsed));
end;

// Adds information of single char(to merge) into 3 byte of ONE colour pixel
// => overwrites last digit of each byte
function TfrmTransform.ChangePix(InputColor: TColor; hundrd: Byte; tens: Byte;
    singll: Byte): TColor;
var
  r,g,b: Integer;
begin
  // Grab BGR (RGB) values
  b := GetBValue(InputColor);
  g := GetGValue(InputColor);
  r := GetRValue(InputColor);
  // Saves info of 'charX' to LAST digit of -> BLU byte: value of hudreds units
  //                                           GRN byte: value of tens units
  //                                           RED byte: value of single units
  b := b DIV 10 * 10 + hundrd;    // eg: 213 DIV 10 -> 21 *10 ->  210
  g := g DIV 10 * 10 + tens;      //     210 + 7(tens) -> 217 (last digit changed)
  r := r DIV 10 * 10 + singll;

  // Check whether result is in range
  if b > 255 then b := b -10;
  if g > 255 then g := g -10;
  if r > 255 then r := r -10;
  Result := RGB(byte(Round(r)),byte(Round(g)),byte(Round(b)));
end;

// Find hundreds/ tens/ single value of one AnsiChar "CharX" to merge
procedure TfrmTransform.findCharDetails(charX: AnsiChar; Var hundrd: Byte;
    Var tens: Byte;Var singll: Byte);
Var
   charI : Integer;
begin                                // 'N' -> 078   (ASCII value)
                                     //                0            7   8
  charI := Integer(charX);           //                ^            ^   ^
  hundrd := Byte(charI DIV 100);     // 078 DIV 100 => 0            |   |
  tens :=   Byte(charI DIV 10);      // 078 DIV  10 => 07           |   |
  tens :=   Byte(tens MOD 10);       //                07 MOD 10 => 7   |
  singll := Byte(charI MOD 10);      //  078 MOD 10    ===============> 8
end;
//------------------- HELPER functions/ procedures END ------------------
// Loads BMP image (Opendialog box)
procedure TfrmTransform.btnLoadPicClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := GetCurrentDir;
  OpenDialog1.FileName := 'Redish.bmp';
  if OpenDialog1.Execute then
  begin
    fName := OpenDialog1.FileName;
    imgPic.Picture.LoadFromFile(fName);
    bmpDetails(fName);
  end;
  if (BitCount <> 24) then
    ShowMessage('Image isn''t 24 bit - can''t be used!');
end;
//---------------------- Load simple ASCII Text -----------------------
procedure TfrmTransform.btnLoadTextClick(Sender: TObject);
Var
   count, lns, cntChars, lnLength : Integer;
   F: file of Byte;                   //    ASCII/ ANSI TextFile;
   S: string;
begin
   count := 1;
   OpenDialog1.FileName := 'MARS Perseverance+2.txt';
   if OpenDialog1.Execute then
   begin
      S := OpenDialog1.FileName;
      AssignFile(F, S);                       // File selected in dialog
      Reset(F);
      fSize := FileSize(F);
      lblTSize.Caption := 'Size: ' + FloatToStrF(fSize, ffNumber, 12, 0)+ ' B';
      CloseFile(F);
   end;

   if (fSize > (BMPfSize * 0.33)) then
   begin
      ShowMessage('Bitmap too small to absorb complete text!'+ #13
               + 'Pixel size:    '+floattoStrF(BMPfSize/3, ffNumber, 14,0)+'B'+#13
               + 'Textfile size: '+floattoStrF(fSize, ffNumber, 14,0)+'B'+#13
               + ' -- Action will terminate! --');
      exit;
   end;

   prgCaps.Position := Trunc(((fSize * 3)*100)/BMPfSize);
   lblCapac.Caption := 'Capacity used: ' + IntToStr(prgCaps.Position) + '%';
   mmText.Lines.LoadFromFile(S);
   lblCache.Show;

   // ADD special marking of eol() and eof()
   for lns := 0 to mmText.Lines.Count-1 do
   begin
      lnLength := Length(mmText.Lines[lns]);
      for cntChars := 1 to lnLength do
      begin
         TextChars[count] := AnsiChar(mmText.Lines[lns][cntChars]);
         Inc(count);
      end;
      TextChars[count] := '¯';                 // end of line marker
      Inc(count);
      lblChars.Caption := IntToStr(count) + ' characters';
   end;
   TextChars[count] := '¤';   // Add special char TWICE to indicate eoF
   TextChars[count+1] := '¤'; // '¤'   ==  eof!          (#164)
   lblCache.Hide;
   btnMerge.Enabled := true;
end;

// MERGE text into BMP => one character changes three byte (= 1 colour pixel)
procedure TfrmTransform.btnMergeClick(Sender: TObject);
Var
  h, pix, PixelProScan, NumB : Integer;
  BMP : TBitmap;
  hundreds, tenss, singl : Byte;
  charX : AnsiChar;
  Merge, secondLastL : Boolean;
begin
  prgEncrypt.Max := fSize;
  secondLastL := false;
  BMP := imgPic.Picture.Bitmap;
  try
    PixelProScan := BMP.Width -1;
  except
    raise Exception.Create('Error with BMP');
  end;
  NumB := 1;
  Merge := true;
  for h := 0 to BMP.Height - 1 do
  begin
    pix := 0;
    while (pix < PixelProScan) AND Merge do
    begin
      charX := TextChars[NumB];      // go char by char through original text

      // Find hundreds/ tens/ singles value of one byte "CharX" to merge
      findCharDetails(charX, hundreds, tenss, singl);

      if Merge then
      begin
        if (charX = '¤') AND secondLastL then  // '¤' = eof?
          Merge := false;                      // '¤¤' => eof!
        if (charX = '¤') then          // '¤' = eof? (2nd last char (eof)
          secondLastL := true;

        // replace last digits of pixel's bytes from RGB color channels
        BMP.Canvas.Pixels[pix, h] :=
          ChangePix(BMP.Canvas.Pixels[pix, h], hundreds, tenss, singl);
        Inc(NumB);                    // increment to next byte in text file
        Inc(pix);                     // increment to next pixel (horizontally)
      end;
    end;
    lblChars.Caption := IntToStr(NumB);
    prgEncrypt.Position := NumB;
    lblEncrypt.Caption := 'Merged part [' + IntToStr(Trunc(NumB * 100/ fSize)) + '%]';
    Application.ProcessMessages;
  end;
  lblEncrypt.Caption := 'Merged [100%]';
  prgEncrypt.Position := prgEncrypt.Max;
  lblFinish.Show;
end;

procedure TfrmTransform.btnSaveNewClick(Sender: TObject);
Var
  fileNew: String;
begin
  lblFinish.Hide;
  fileNew := fname;
  Delete(fileNew, Length(fileNew)-3, 4);
  fileNew := fileNew + '_new.bmp';
  imgPic.Picture.SaveToFile(fileNew);   // take original fileName + "_new"
  stsInfo.Panels.Items[1].Text := ' NEW saved file name: ' + ExtractFileName(fileNew);
end;
//========================= Encoding/ Merging ======= STOP =======================
//========================= START ======= De-merging =============================
// Extracts character information from the three bytes of ONE pixel
function TfrmTransform.charFromPix(InputPixel: TColor): AnsiChar;
var
  r,g,b: Integer;
  hundrd, tent, singll, charI : Integer;
begin
  // Grab RGB values
  b := GetBValue(InputPixel);
  g := GetGValue(InputPixel);
  r := GetRValue(InputPixel);
  // Extracts info from LAST digit of -> BLU byte: hundreds [0-9]
  //                                     GRN byte: tens [0-9]
  //                                     RED byte: singles [0-9]
  hundrd := b MOD 10;
  tent :=   g MOD 10;
  singll := r MOD 10;
  charI := hundrd * 100 + tent *10 + singll;
  Result := AnsiChar(charI);       // translates a number to relevant ASCII code
end;
//------------------------------------------------------------------------------
procedure TfrmTransform.btnDecodeClick(Sender: TObject);
Var
  h, w, PixelPerScan, NumP : Integer;
  p: pByteArray;
  BMP : TBitmap;
  groupR, charPosC : Byte;
  charX : AnsiChar;
  DeMerge : Boolean;
  nLine : String;
begin
  mmDecoded.Clear;
  BMP := imgCoded.Picture.Bitmap;
  try
    PixelPerScan := (BMP.Width-1);
  except
    raise Exception.Create('Error with BMP');
  end;
  NumP := 1;
  DeMerge := true;
  nLine := '';
  h := 0;
  while (h < BMP.Height - 1) AND DeMerge do   // line per line - Top 2 Bottom
  begin
    w := 0;
    while (w < PixelPerScan) AND DeMerge do
    begin
      if DeMerge then
      begin
         // Extracts character information from the three bytes of ONE pixel
         charX := charFromPix(BMP.Canvas.Pixels[w, h]);
         if (charX = '¤') then                          // 2nd last byte
          if (charFromPix(BMP.Canvas.Pixels[w+1, h]) = '¤') then // last byte ..
            DeMerge := false;                           // eoF reached!
         if (charX = '¯') then                          // eoL!
         begin
            mmDecoded.Lines.Add(nLine);
            nLine := '';
         end
         else
            nLine := nLine + charX;

         Inc(NumP);   // increment to next byte in text file (just for counting)
      end;
      Inc(w);         // next pixel in horizontal line (w = width)
    end;
    Inc(h);
    lblRead.Caption := IntToStr(NumP);
    Application.ProcessMessages;
  end;
  lblFinish.Show;
end;

procedure TfrmTransform.btnLoadClick(Sender: TObject);
begin
   imgCoded.Picture := imgPic.Picture;
end;
procedure TfrmTransform.btnSaveClick(Sender: TObject);
begin
  lblFinish.Hide;
  mmDecoded.Lines.SaveToFile(edtFName.Text);
end;

end.
