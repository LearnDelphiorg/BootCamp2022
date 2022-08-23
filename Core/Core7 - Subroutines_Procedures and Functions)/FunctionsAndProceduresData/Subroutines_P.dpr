program Subroutines_P;

uses
  Forms,
  Subroutines_U in 'Subroutines_U.pas' {frmSubroutines};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSubroutines, frmSubroutines);
  Application.Run;
end.
