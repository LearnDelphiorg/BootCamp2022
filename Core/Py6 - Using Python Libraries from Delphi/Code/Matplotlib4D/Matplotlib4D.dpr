program Matplotlib4D;



uses
  Forms,
  UnitMatplotlib4D in '..\Matplotlib4D\UnitMatplotlib4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
