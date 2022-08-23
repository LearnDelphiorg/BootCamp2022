program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDemo, frmDemo);
  Application.Run;
end.
