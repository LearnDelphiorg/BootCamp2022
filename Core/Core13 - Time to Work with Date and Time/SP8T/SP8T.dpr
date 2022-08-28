program SP8T;

uses
  System.StartUpCopy,
  FMX.Forms,
  SlidingPuzzle8 in '..\SlidingPuzzle8BRTractable\SlidingPuzzle8.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
