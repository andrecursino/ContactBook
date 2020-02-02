unit uTabGlobal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TTabGlobal = class(TDataModule)
    Conection: TFDConnection;
    Transaction: TFDTransaction;
    TContact: TFDQuery;
    TContactCODE: TIntegerField;
    TContactNAME: TStringField;
    TContactPHONENUMBER: TStringField;
    procedure TContactAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabGlobal: TTabGlobal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TTabGlobal.TContactAfterPost(DataSet: TDataSet);
begin
  TContact.Refresh;
  TContact.Close;
  TContact.SQL.Clear;
  TContact.SQL.Add('select * from CONTACT');
  TContact.SQL.Add('order by NAME');
  TContact.Prepare;
  TContact.Open;
end;

end.
