unit uPerson;

interface

uses
  SysUtils;

type
  TPerson = class
  private
    FName: String;
    FAdress: String;
    procedure SetName(const Value: String);
    procedure SetAdress(const Value: String);
  published
    destructor Destroy; override;
    property Name : String read FName write SetName;
    property Adress : String read FAdress write SetAdress;
    function ShowData : String;virtual;abstract;
  end;

type
  TContact = class(TPerson)
  private
    FPhoneNumber : String;
    FEmail: String;
    procedure SetEmail(const Value: String);
    procedure SetPhoneNumber(const Value: String);
  published

    function ShowData: string; override;
    property PhoneNumber : String read FPhoneNumber write SetPhoneNumber;
    property Email : String read FEmail write SetEmail;
  public
  end;

implementation

uses
  Vcl.Dialogs;

{ TPerson }

destructor TPerson.Destroy;
begin
  ShowMessage('Object Destroyed');
  inherited;
end;

procedure TPerson.SetAdress(const Value: String);
begin
  FAdress := Value;
end;

procedure TPerson.SetName(const Value: String);
begin
  FName := Value;
end;

{ TContact }

procedure TContact.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure TContact.SetPhoneNumber(const Value: String);
begin
  FPhoneNumber := Value;
end;

function TContact.ShowData: string;
begin
  Result := 'Name: ' + Self.Name + ' and Phone Number: ' + Self.PhoneNumber;
end;

end.
