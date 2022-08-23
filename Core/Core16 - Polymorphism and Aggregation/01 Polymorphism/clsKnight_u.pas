unit clsKnight_u;

interface

uses
  clsCharacter_u;

Type
  TKnight = class(TCharacter)
  private
     fArmour : String;
     fShield : Boolean;
  protected

  public
     procedure setArmour(sArmour : String);
     procedure setShield(bShield : Boolean);
     procedure decreaseHealth(iAmount : integer); override;
  published

  end;

implementation

{ TKnight }

procedure TKnight.decreaseHealth(iAmount: integer);
begin
  inherited;
  if fShield then
    iAmount := iAmount div 2;

  setHealth(getHealth - iAmount);

end;

procedure TKnight.setArmour(sArmour: String);
begin
  fArmour := sArmour;
end;

procedure TKnight.setShield(bShield: Boolean);
begin
  fShield := bShield;
end;

end.
