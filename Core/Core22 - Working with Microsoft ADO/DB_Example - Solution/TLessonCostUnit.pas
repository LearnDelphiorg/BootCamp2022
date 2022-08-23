unit TLessonCostUnit;

interface

Type  TLessonCost = Class(TObject)
  Private
    rDuration : Real;
    sDriveCode : String;
  Public
    constructor create;
    procedure SetFields(rDur : Real; sLCode : String);
    function getLessonCost: Currency;

End;

implementation
    constructor TLessonCost.create;
      begin
       rDuration := 0;
       sDriveCode := '';
      end;

    procedure TLessonCost.SetFields(rDur : Real; sLCode : String);
      begin
       rDuration := rDur;
       sDriveCode := sLCode;
      end;

    function TLessonCost.getLessonCost: Currency;
       var
         dCode : char;
         rLCost : Real;
      begin
         if (Pos('A',sDriveCode) > 0) then  dCode := 'A';
         if (Pos('B',sDriveCode) > 0) then  dCode := 'B';
         if (Pos('C',sDriveCode) > 0) then  dCode := 'C';

         case dCode  of
           'A': Begin
                 rLCost := 350;
                End;
           'B': Begin
                 rLCost := 360;
                End;
           'C': Begin
                 rLCost := 375;
                End;
         end;

         Result := rLCost * rDuration;
      end;
end.
