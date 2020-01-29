unit uShowData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPerson;

type
  TForm1 = class(TForm)
    edtName: TEdit;
    edtPhoneNumber: TEdit;
    btnShow: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnShowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnShowClick(Sender: TObject);
var
  Person : TPerson;
begin
  Person.FName := edtName.Text;
  Person.FPhoneNumber := edtPhoneNumber.Text;
  ShowMessage('Name is: ' + Person.FName);
  ShowMessage('Telephone: ' + Person.FPhoneNumber);
end;

end.
