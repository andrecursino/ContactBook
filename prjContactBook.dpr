program prjContactBook;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uPerson in 'uPerson.pas',
  uContactRegister in 'uContactRegister.pas' {frmContacts},
  uTabGlobal in 'uTabGlobal.pas' {TabGlobal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmContacts, frmContacts);
  Application.CreateForm(TTabGlobal, TabGlobal);
  Application.Run;
end.
