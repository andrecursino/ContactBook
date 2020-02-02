unit uContactRegister;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmContacts = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DContact: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    edtSearch: TEdit;
    btnSearch: TButton;
    rbName: TRadioButton;
    rbCode: TRadioButton;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContacts: TfrmContacts;

implementation

uses
  uTabGlobal;

{$R *.dfm}

procedure TfrmContacts.btnSearchClick(Sender: TObject);
begin
  TabGlobal.TContact.Close;
  TabGlobal.TContact.SQL.Clear;
  TabGlobal.TContact.SQL.Add('SELECT * FROM CONTACT');
  if rbName.Checked then
    begin
      TabGlobal.TContact.SQL.Add('WHERE NAME LIKE :cNAME');
      TabGlobal.TContact.SQL.Add('ORDER BY NAME');
      TabGlobal.TContact.ParamByName('cNAME').AsString := '%' + edtSearch.Text + '%';
    end;
  if rbCode.Checked then
    begin
      TabGlobal.TContact.SQL.Add('WHERE CODE = :nCODE');
      TabGlobal.TContact.ParamByName('nCODE').AsInteger := StrToInt(edtSearch.Text);
    end;
  TabGlobal.TContact.Prepare;
  TabGlobal.TContact.Open;

end;

end.
