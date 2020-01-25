unit uPerson;

interface

type TPerson = class
  private
    FName : String;
    FPhoneNumber : Integer;
  public
    constructor Create;
    destructor Destroy; override;

    property Name : String read FName write FName;
    property PhoneNumber : Integer read FPhoneNumber write FPhoneNumber;


end;

implementation

{ TPerson }

constructor TPerson.Create;
begin

end;

destructor TPerson.Destroy;
begin

  inherited;
end;

end.
