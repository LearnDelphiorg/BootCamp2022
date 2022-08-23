program Fastai4D;



uses
  Forms,
  UnitFastai4D in '..\Fastai4D\UnitFastai4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
