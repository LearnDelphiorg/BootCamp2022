unit FormatRed_u;

interface
 uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;
 type
   Tformat = class(tobject)
     procedure formatRed(redName:trichedit);
   end;
implementation

{ Tformat }

procedure Tformat.formatRed;
begin
redName.Clear;
redName.Paragraph.tabcount := 4;
redName.Paragraph.Tab[0] := 50;
redName.Paragraph.Tab[1] := 100;
redName.Paragraph.Tab[2] := 140;
redName.Paragraph.Tab[3] := 180;
redName.Paragraph.Tab[4] := 220;

redName.SelAttributes.Style := [fsBold];
redName.SelAttributes.Size := 8;

end;

end.
