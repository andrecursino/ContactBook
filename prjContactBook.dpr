program prjContactBook;

uses
  Vcl.Forms,
  uShowData in 'uShowData.pas' {Form1},
  uPerson in 'uPerson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.