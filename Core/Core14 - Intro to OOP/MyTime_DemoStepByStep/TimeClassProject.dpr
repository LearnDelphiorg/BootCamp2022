program TimeClassProject;

uses
  Vcl.Forms,
  frmTimeImplementationUnit in 'frmTimeImplementationUnit.pas' {Form1},
  clsMyTimeUnit in 'clsMyTimeUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
