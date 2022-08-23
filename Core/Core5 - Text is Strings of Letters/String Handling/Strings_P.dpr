program Strings_P;

uses
  Vcl.Forms,
  Strings_U in 'Strings_U.pas' {frmStrings};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmStrings, frmStrings);
  Application.Run;
end.
