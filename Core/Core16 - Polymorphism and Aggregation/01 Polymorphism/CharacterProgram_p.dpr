program CharacterProgram_p;

uses
  Vcl.Forms,
  frmCharacter_u in 'frmCharacter_u.pas' {Form1},
  clsCharacter_u in 'clsCharacter_u.pas',
  clsKnight_u in 'clsKnight_u.pas',
  clsMage_u in 'clsMage_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
