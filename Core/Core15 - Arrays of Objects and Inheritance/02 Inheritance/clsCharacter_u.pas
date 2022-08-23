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
        constructor createCharacter(sName, sType: String; iHealth : integer);
        procedure setName(sNewName : String);
        procedure setType (sNewType : String);
        procedure setHealth (sNewHealth : integer);
        function getName : String;
        function getType : String;
        function getHealth : integer;
        function toString : String;
      published

      end;

implementation

{ TCharacter }

constructor TCharacter.createCharacter(sName, sType: String; iHealth: integer);
begin
  fName := sName;
  fType := sType;
  fHealth := iHealth;
end;

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

procedure TCharacter.setHealth(sNewHealth: integer);
begin
   fHealth := sNewHealth;
end;

procedure TCharacter.setName(sNewName: String);
begin
   fName := sNewName;
end;

procedure TCharacter.setType(sNewType: String);
begin
   fType := sNewType;
end;

function TCharacter.toString: String;
begin
  result := fName + #13 + '------------------' + #13 + 'Type: ' + fType + #13 +
  'Health: ' + intToStr(fHealth);
end;

end.
