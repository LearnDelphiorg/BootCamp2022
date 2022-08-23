program funraising_p;

uses
  Vcl.Forms,
  Funraising_u in 'Funraising_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
