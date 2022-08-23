unit clsMytimeUnit;

interface
  uses SysUtils; // Included because we use IntToStr later

  Type TMyTime = class
    private
      fHours: Integer;
      fMinutes: Integer;
      fTimeSeparator : Char;
    public
      constructor create; overload;
      constructor create(HH : integer; MM : integer; TS : char); overload;

      procedure setHours(HH : integer);
      procedure setMinutes(MM : integer);

      function getHours:integer;
      function getMinutes:integer;

      function getSeparator:char;
      procedure setSeparator(TS : char);

      procedure incHours;
      procedure incMinutes;

      function getTimeStr:String;

      property separator : char read getSeparator write setSeparator;
    end;

implementation

  constructor TMyTime.create;
     begin
        fHours := 0;
        fMinutes := 0;
        fTimeSeparator := ':';
     end;

  constructor TMyTime.create(HH : integer; MM : integer; TS : char);
     begin
        fHours := HH;
        fMinutes := MM;
        fTimeSeparator := TS;
     end;

   procedure TMyTime.setHours(HH : integer);
     begin
       if (HH > 0) and (HH < 24) then fHours := HH;
     end;

   procedure TMyTime.setMinutes(MM : integer);
     begin
        if (MM  > 0) and (MM < 60) then fMinutes := MM;
     end;

   function TMyTime.getHours:integer;
     begin
        result := fHours;
     end;

   function TMyTime.getMinutes:integer;
     begin
        result := fMinutes;
     end;

   procedure TMyTime.incHours;
     begin
       if (fHours = 23) then fHours := 0 else inc(fHours);
     end;

   procedure TMyTime.incMinutes;
     begin
       if (fMinutes = 59) then
         begin
            fMinutes := 0;
            Inc(fHours);
         end
            else inc(fMinutes);
     end;

   function TMyTime.getTimeStr:String;
     var
       sTemp : String;
     begin
       sTemp := '0';
       if fHours < 10 then
           sTemp := sTemp + IntToStr(fHours)
       else
           sTemp := IntToStr(fHours);

       sTemp := sTemp + fTimeSeparator;

       if fMinutes < 10 then
           sTemp := sTemp + '0' + IntToStr(fMinutes)
       else
           sTemp := sTemp + IntToStr(fMinutes);

       Result := sTemp;
     end;

   function TMyTime.getSeparator:char;
     begin
       Result := fTimeSeparator
     end;

   procedure TMyTime.setSeparator(TS : char);
     begin
       fTimeSeparator := TS;
     end;
end.
