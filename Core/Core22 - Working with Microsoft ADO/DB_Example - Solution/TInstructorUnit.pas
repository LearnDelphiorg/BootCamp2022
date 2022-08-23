unit TInstructorUnit;

interface
uses DateUtils, SysUtils;

 type TInstuctor = class(TObject)
  private
   fName : string;
   fSurname : string;
   fSAID : string;                   //EB,A,C,C1
   fYearSal : currency;   // We could also use Real
   fLicenceCodes : String;
 public
   constructor create;
   procedure setData(fN : String; fSur : String ; fID : String; fLicCodes : String; fYSal : currency );
   function getMonthlySalary:Currency;
   function getAge:Integer;
   function mayInstructCode(Code : String):Boolean;
 end;

implementation

constructor TInstuctor.create;
  begin
    fName := '';
    fSurname :=  '';
    fSAID := '';
    fLicenceCodes :=  '';
    fYearSal := 0;
  end;

procedure TInstuctor.setData(fN : String; fSur : String ; fID : String; fLicCodes : String; fYSal : currency );
  begin
    fName := fN;
    fSurname :=  fSur;
    fSAID := fID;
    fLicenceCodes :=  fLicCodes;
    fYearSal := fYSal;
  end;

function TInstuctor.getMonthlySalary:Currency;
  begin
    result := fYearSal / 12;
  end;

// 9504295018081
function TInstuctor.getAge:Integer;
 var
   YY , DD , MM, sBDate : String;
   bDate : TDate;
  begin
     YY := copy(fSAID,1,2);
     MM := copy(fSAID,3,2);
     DD := copy(fSAID,5,2);

     if (YY >= copy(DateToStr(bDate),1,2)) then
       sBDate := '19'+YY+'/'+MM+'/'+DD
     else
       sBDate := '20'+YY+'/'+MM+'/'+DD;

     bDate := StrToDate(sBDate);
     Result := YearsBetween(Now(),bDate);
   end;


function TInstuctor.mayInstructCode(Code : String):Boolean;
 var
   TempCodes : String;
   OneCode : String;
   bFound : Boolean;
  begin
    {  This code will not work Eg searching for C in EB,EC1,A,C1
    if (Pos(Code,fLicenceCodes) > 0) then
      Result := true
    else
      Result := false;
    }
    bFound := false;
    TempCodes := fLicenceCodes;
    while (Pos(',',TempCodes) > 0) do
      begin
        OneCode := copy(TempCodes,1,Pos(',',TempCodes)-1);
        if (OneCode = Code) then
          begin
            bFound := true;
            break;
          end;
        Delete(TempCodes,1,Pos(',',TempCodes))
      end;   // end while

        if (TempCodes = Code) then
          begin
            bFound := true;
          end;

    Result := bFound;
  end;

end.
