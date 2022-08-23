program Unit_16_8;

uses
  Vcl.Forms,
  Repeat_Until_Loop in 'Repeat_Until_Loop.pas' {frmWhileLoop};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWhileLoop, frmWhileLoop);
  Application.Run;
end.
