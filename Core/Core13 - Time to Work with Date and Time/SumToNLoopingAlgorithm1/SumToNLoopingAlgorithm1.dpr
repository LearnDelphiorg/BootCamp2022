Program SumToNLoopingAlgorithm1;

{$APPTYPE CONSOLE}

{$R *.res}

Uses
  System.SysUtils, System.Diagnostics;

Var
  StopWatch : TStopWatch;
  n, Count, Sum : Int64;
  Ch : Char;
Begin
  StopWatch :=TStopWatch.Create;
  If StopWatch.IsHighResolution
    Then Writeln('High Resolution Timer')
    Else Writeln('Not High Resolution Timer');
  Repeat
    Write('Input n: ');
    Readln(n);
    StopWatch.Start;
      Count := 0;
      Sum := 0;
      While Count < n
        Do
          Begin
            Count := Count + 1;
            Sum := Sum + Count;
          End;
    StopWatch.Stop;
    Writeln(Format('Time (in milliseconds): %d ', [StopWatch.ElapsedMilliseconds]));
    StopWatch.Reset;
    StopWatch.Start;
      Sum := n*(n + 1) Div 2;
    StopWatch.Stop;
    Writeln(Format('Time (in milliseconds): %d ', [StopWatch.ElapsedMilliseconds]));

    Write('Another go (Y/N)?: ');
    Readln(Ch);
  Until Ch In ['n', 'N'];
End.
