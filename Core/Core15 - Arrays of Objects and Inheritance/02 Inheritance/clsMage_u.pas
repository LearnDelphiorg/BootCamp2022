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


   published

   end;

implementation

{ TMage }

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

end.
