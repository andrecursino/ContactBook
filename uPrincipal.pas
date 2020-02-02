unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPerson, Vcl.Menus;


type
  TfrmPrincipal = class(TForm)
    edtName: TEdit;
    edtPhoneNumber: TEdit;
    btnShow: TButton;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Register1: TMenuItem;
    Contacts1: TMenuItem;
    Exit1: TMenuItem;
    procedure btnShowClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Contacts1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uContactRegister;

{$R *.dfm}

procedure TfrmPrincipal.btnShowClick(Sender: TObject);
var
  Contact : TContact;
begin
  Contact := TContact.Create;
  Contact.Name := edtName.Text;
  Contact.PhoneNumber := edtPhoneNumber.Text;
  ShowMessage(Contact.ShowData);
  Contact.Free;
end;

procedure TfrmPrincipal.Contacts1Click(Sender: TObject);
begin
  frmContacts.ShowModal;
end;

procedure TfrmPrincipal.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
