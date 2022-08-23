program MyFirstProgram_P;

uses
  Vcl.Forms,
  MyFirstProgram_U in 'MyFirstProgram_U.pas' {frmMyFirstProgram};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMyFirstProgram, frmMyFirstProgram);
  Application.Run;
end.
