program AnalogueClockWithTimeZones;

uses
  System.StartUpCopy,
  FMX.Forms,
  AnalogueClockWithTimeZonesUnit in 'AnalogueClockWithTimeZonesUnit.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
