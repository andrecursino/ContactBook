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
  contact : TPerson;
begin
  try
    contact:= contact.Create;
    contact.Name := edtName.Text;
    contact.PhoneNumber := StrToInt(edtPhoneNumber.Text);

    ShowMessage('Contact name: ' + contact.Name + sLineBreak +
                'Contact phone: ' + IntToStr(contact.PhoneNumber));
  finally
    FreeAndNil(contact);
  end;
end;
end.
