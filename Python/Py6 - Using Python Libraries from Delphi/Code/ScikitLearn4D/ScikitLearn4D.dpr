program ScikitLearn4D;



uses
  Forms,
  UnitScikitLearn4D in '..\ScikitLearn4D\UnitScikitLearn4D.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
