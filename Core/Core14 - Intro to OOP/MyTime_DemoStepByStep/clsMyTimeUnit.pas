unit clsMyTimeUnit;

interface

  uses SysUtils;
  Type TMyTime = class (TObject)
    private
      fHours : Integer;
      fSeparator : Char;
      fMinutes : Integer;
    public

      constructor create;   overload;
      constructor create(HH:Integer;Sep:char;MM:Integer);  overload;


      procedure setHours(HH:Integer);
      function getHours:Integer;

      procedure setMinutes(MM:Integer);
      function getMinutes:Integer;

      procedure setSeparator(s:Char);
      function getSeparator:Char;


      function toString:String;   // Auxiliary  HH:MM
  end;

implementation
      constructor TMyTime.create;
        begin
          fHours := 12;
          fSeparator := ':';
          fMinutes := 15;
        end;

      constructor TMyTime.create(HH:Integer;Sep:char;MM:Integer);
        begin
          fHours := HH;
          fSeparator := Sep;
          fMinutes := MM;
        end;


      procedure TMyTime.setHours(HH:Integer);    // Mutator
        begin
           fHours := HH;
        end;
      function TMyTime.getHours:Integer;         // Accessor
        begin
          Result := fHours;
        end;


      procedure TMyTime.setMinutes(MM:Integer);
        begin
           fMinutes := MM;
        end;
      function TMyTime.getMinutes:Integer;
        begin
           Result := fMinutes;
        end;

      procedure TMyTime.setSeparator(s:Char);
        begin
           fSeparator := s;
        end;
      function TMyTime.getSeparator:Char;
        begin
          Result := fSeparator;
        end;

      function TMyTime.toString:String;
        var
          sTemp : String;
        begin
          sTemp := IntToStr(fHours) + fSeparator;

          if (fMinutes < 10) then  sTemp := sTemp + '0' + IntToStr(fMinutes)
          else
            sTemp := sTemp + IntToStr(fMinutes);

          Result := sTemp;

        end;

end.
