program Unit_16_3;

uses
  Vcl.Forms,
  LoopingCharacters in 'LoopingCharacters.pas' {frmLoopingCharacters};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLoopingCharacters, frmLoopingCharacters);
  Application.Run;
end.
