unit clsCharacter_u;

interface

uses
   SysUtils;

type
      TCharacter = class(TObject)
      protected

      private
        fName : String;
        fType : String;
        fHealth : integer;
      public
        constructor createCharacter(sName, sType : String; iHealth : integer);
        function getName : String;
        function getType : String;
        function getHealth : integer;
        procedure setName (SNewName : String);
        procedure setType (sNewType : String);
        procedure setHealth (iNewHealth : integer);
        function toString : String;
      published

      end;

implementation

{ TCharacter }



function TCharacter.getHealth: integer;
begin
  result := fHealth;
end;

function TCharacter.getName: String;
begin
   result := fName;
end;

function TCharacter.getType: String;
begin
   result := fType;
end;

procedure TCharacter.setHealth(iNewHealth: integer);
begin
  fHealth := iNewHealth;
end;

procedure TCharacter.setName(SNewName: String);
begin
  fName := SNewName;
end;

procedure TCharacter.setType(sNewType: String);
begin
   fType := sNewType;
end;

function TCharacter.toString: String;
begin
  result := 'Name: ' + fName + #13 + 'Type: ' + fType + #13 + 'Health: ' +
  IntToStr(fHealth);

end;

{ TCharacter }

constructor TCharacter.createCharacter(sName, sType: String; iHealth: integer);
begin
  fName := sName;
  fType := sType;
  fHealth := iHealth;
end;

end.
