Program GetTickCountProject;

{$APPTYPE CONSOLE}
{$R *.res}
uses
  System.SysUtils,
  WinAPI.Windows;

Var
 Ticks :UInt64;
Begin
  Ticks := GetTickCount;
  Sleep(15);
  {Program execution paused for 1000 milliseconds}
  Writeln('ProcessingTime: ', (GetTickCount - Ticks).ToString, ' milliseconds');
  Readln;
End.

