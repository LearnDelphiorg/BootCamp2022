program Scrapy4D;



uses
  Forms,
  UnitScrapy4D in '..\Scrapy4D\UnitScrapy4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
