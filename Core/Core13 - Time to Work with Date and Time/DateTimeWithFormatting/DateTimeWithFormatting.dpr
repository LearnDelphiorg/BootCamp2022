Program DateTimeWithFormatting;

{$APPTYPE CONSOLE}

{$R *.res}

Uses
  System.SysUtils;
Begin
  //FormatSettings.Create('en-GB');
  Writeln(FormatDateTime('dddd/mmmm/yyyy h:n:s ampm', Now , FormatSettings));
  Writeln(FormatDateTime('dddd mmmm yyyy h:n:s:z ampm', Now , FormatSettings));
  //FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := ':';
  Writeln(FormatDateTime('c ampm', Now , FormatSettings));
  FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := '-';
  Writeln(FormatDateTime('dddd/mmmm/yyyy h:n:s ampm', Now , FormatSettings));
  Readln;
End.
