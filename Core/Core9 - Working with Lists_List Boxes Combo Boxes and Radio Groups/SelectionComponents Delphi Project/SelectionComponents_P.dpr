program SelectionComponents_P;

uses
  Forms,
  SelectionComponents_U in 'SelectionComponents_U.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
