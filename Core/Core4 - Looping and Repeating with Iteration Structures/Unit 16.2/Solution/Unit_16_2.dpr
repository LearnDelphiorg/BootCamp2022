program Unit_16_2;

uses
  Vcl.Forms,
  BasicForLoops in 'BasicForLoops.pas' {frmBasicForLoops};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBasicForLoops, frmBasicForLoops);
  Application.Run;
end.
