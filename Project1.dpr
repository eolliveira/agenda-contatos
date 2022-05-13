program Project1;

uses
  Vcl.Forms,
  Contatos in 'Contatos.pas' {frm_contatos},
  module in 'module.pas' {dm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_contatos, frm_contatos);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
