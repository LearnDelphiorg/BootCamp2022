program NetworkX4D;



uses
  Forms,
  UnitNetworkX4D in '..\NetworkX4D\UnitNetworkX4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
