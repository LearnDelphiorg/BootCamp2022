unit clsMage_u;

interface

uses
  SysUtils, clsCharacter_u;

type
   TMage = class(TCharacter)
   private
      fMagicType : String;
      fLevel : Integer;
   protected

   public
     procedure setMagicType(sType : String);
     procedure setLevel (iLevel : integer);
     function getSpells : String;
     procedure decreaseHealth (iAmount : integer); override;
     function toString : String; override;

   published

   end;

implementation

{ TMage }


procedure TMage.decreaseHealth(iAmount: integer);
var
  iHealth : Integer;
begin
  inherited;

  iHealth := getHealth;

  if (fLevel = 1) OR (fLevel = 2) then
  begin
    iHealth := iHealth - (iAmount * 2);
  end
  else
  begin
    iHealth := iHealth - iAmount;
  end;

  setHealth(iHealth);

end;

function TMage.getSpells: String;
begin
  case fLevel of
    1: result := 'Heal';
    2: result := 'Heal, Levitate';
    3: result := 'Heal, Levitate, Cool stuff';
  end;

end;

procedure TMage.setLevel(iLevel: integer);
begin
  fLevel := iLevel;
end;

procedure TMage.setMagicType(sType: String);
begin
  fMagicType := sType;
end;


function TMage.toString: String;
begin
  result := 'Name: ' + getName + #13 + 'Health: ' + intToStr(getHealth) +
    #13 + 'Level: ' + intToStr(fLevel);
end;

end.
