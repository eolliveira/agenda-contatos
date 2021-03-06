unit Contatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_contatos = class(TForm)
    txt_id: TEdit;
    txt_nome: TEdit;
    txt_email: TEdit;
    txt_telefone: TEdit;
    lb_email: TLabel;
    lb_name: TLabel;
    lb_telefone: TLabel;
    lb_id: TLabel;
    lb_obs: TLabel;
    memo_obs: TMemo;
    btn_conectar: TButton;
    lb_status: TLabel;
    btn_salvar: TButton;
    btn_novo: TButton;
    btn_proximo: TButton;
    btn_anterior: TButton;
    btn_excluir: TButton;
    btn_editar: TButton;
    procedure btn_conectarClick(Sender: TObject);
    procedure associaCampos;
    procedure atualizaCampos;
    procedure desabilitaCampos;
    procedure habilitaCampos;
    procedure limpaCampos;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contatos: Tfrm_contatos;

implementation

{$R *.dfm}

uses module;

procedure Tfrm_contatos.associaCampos;
begin
  //dm.tb_contato.FieldByName('id').Value := txt_id.Text;
  dm.tb_contato.FieldByName('nome').Value := txt_nome.Text;
  dm.tb_contato.FieldByName('email').Value := txt_email.Text;
  dm.tb_contato.FieldByName('telefone').Value := txt_telefone.Text;
  dm.tb_contato.FieldByName('observacoes').Value := memo_obs.Text;
end;

procedure Tfrm_contatos.atualizaCampos;
begin
  txt_id.Text :=  dm.tb_contato.FieldByName('id').Value;
  txt_nome.Text :=  dm.tb_contato.FieldByName('nome').Value;
  txt_email.Text :=  dm.tb_contato.FieldByName('email').Value;
  txt_telefone.Text :=  dm.tb_contato.FieldByName('telefone').Value;
  memo_obs.Text :=  dm.tb_contato.FieldByName('observacoes').Value;
end;

procedure Tfrm_contatos.btn_anteriorClick(Sender: TObject);
begin
  dm.tb_contato.Prior;
  atualizaCampos;
end;

procedure Tfrm_contatos.btn_conectarClick(Sender: TObject);
begin
  dm.FDConnection1.Connected := True;
  dm.tb_contato.Active := true;

  if dm.FDConnection1.Connected = True then
  begin
    lb_status.Caption := 'Conectado';
    btn_novo.Enabled := true;
    btn_conectar.Enabled := false;
    btn_editar.Enabled := true;
    btn_excluir.Enabled := true;
  end
  else
  begin
     lb_status.Caption := 'Nao Conectado';
  end;

  atualizaCampos;
end;

procedure Tfrm_contatos.btn_editarClick(Sender: TObject);
begin
  habilitaCampos;
  btn_salvar.Enabled := true;
  dm.tb_contato.Edit;
  associaCampos;
end;

procedure Tfrm_contatos.btn_novoClick(Sender: TObject);
begin
  limpaCampos;

  if dm.FDConnection1.Connected = true then
  begin
    habilitaCampos;
    dm.tb_contato.Insert;
  end;

  btn_novo.Enabled := false;
  btn_salvar.Enabled := true;
end;

procedure Tfrm_contatos.btn_proximoClick(Sender: TObject);
begin
  dm.tb_contato.Next;
  atualizaCampos;
end;

procedure Tfrm_contatos.btn_salvarClick(Sender: TObject);
begin
  associaCampos;
  dm.tb_contato.Post;
  ShowMessage('Contato adicionado com sucesso!');
  atualizaCampos;
end;

procedure Tfrm_contatos.desabilitaCampos;
begin
  txt_id.Enabled := false;
  txt_nome.Enabled := false;
  txt_email.Enabled := false;
  txt_telefone.Enabled := false;
  memo_obs.Enabled := false;
end;

procedure Tfrm_contatos.habilitaCampos;
begin
  txt_nome.Enabled := true;
  txt_email.Enabled := true;
  txt_telefone.Enabled := true;
  memo_obs.Enabled := true;
  txt_nome.SetFocus;
end;

procedure Tfrm_contatos.limpaCampos;
begin
  txt_id.Text := '';
  txt_nome.Text := '';
  txt_email.Text := '';
  txt_telefone.Text := '';
  memo_obs.Text := '';
end;

end.
