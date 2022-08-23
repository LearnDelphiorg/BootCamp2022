program Unit_16_7;

uses
  Vcl.Forms,
  While_Loop in 'While_Loop.pas' {frmWhileLoop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWhileLoop, frmWhileLoop);
  Application.Run;
end.
