unit uShowData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2;

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
  data : string;
begin
  Form2.Show;
  data := 'Hello ' + edtName.Text + #13 +
          'Phone: ' + edtPhoneNumber.Text;
  Form2.lblData.Caption := data;

end;

end.
