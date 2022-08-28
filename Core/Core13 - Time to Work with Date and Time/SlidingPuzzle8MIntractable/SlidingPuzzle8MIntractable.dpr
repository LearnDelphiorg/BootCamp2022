Program SlidingPuzzle8MIntractable;

Uses
  System.StartUpCopy,
  FMX.Forms,
  SlidingPuzzle8 in 'SlidingPuzzle8.pas' {Form1};

{$R *.res}

Begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
End.
