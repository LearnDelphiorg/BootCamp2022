program Pandas4D;



uses
  Forms,
  UnitPandas4D in '..\Pandas4D\UnitPandas4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
