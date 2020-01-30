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
  Contact : TContact;
begin
  Contact := TContact.Create;
  Contact.Name := edtName.Text;
  Contact.PhoneNumber := edtPhoneNumber.Text;
  ShowMessage(Contact.ShowData);
  Contact.Free;
end;

end.
