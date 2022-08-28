Program GetTickCount64Project;

{$APPTYPE CONSOLE}
{$R *.res}
uses
  System.SysUtils,
  WinAPI.Windows;

Var
 Ticks :UInt64;
Begin
  Ticks := GetTickCount64;
  Sleep(15);
  {Program execution paused for 1000 milliseconds}
  Writeln('ProcessingTime: ', (GetTickCount64 - Ticks).ToString, ' milliseconds');
  Readln;
End.

