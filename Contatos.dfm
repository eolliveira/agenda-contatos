object frm_contatos: Tfrm_contatos
  Left = 0
  Top = 0
  Caption = 'Contatos'
  ClientHeight = 506
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 18
  object lb_email: TLabel
    Left = 16
    Top = 120
    Width = 33
    Height = 18
    Caption = 'Email'
  end
  object lb_name: TLabel
    Left = 16
    Top = 61
    Width = 39
    Height = 18
    Caption = 'Nome'
  end
  object lb_telefone: TLabel
    Left = 16
    Top = 175
    Width = 57
    Height = 18
    Caption = 'Telefone'
  end
  object lb_id: TLabel
    Left = 16
    Top = 5
    Width = 14
    Height = 18
    Caption = 'Id'
  end
  object lb_obs: TLabel
    Left = 16
    Top = 240
    Width = 85
    Height = 18
    Caption = 'Observa'#231#245'es'
  end
  object lb_status: TLabel
    Left = 776
    Top = 8
    Width = 8
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txt_id: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 26
    Enabled = False
    TabOrder = 0
  end
  object txt_nome: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 26
    Enabled = False
    TabOrder = 1
  end
  object txt_email: TEdit
    Left = 16
    Top = 139
    Width = 121
    Height = 26
    Enabled = False
    TabOrder = 2
  end
  object txt_telefone: TEdit
    Left = 16
    Top = 194
    Width = 121
    Height = 26
    Enabled = False
    TabOrder = 3
  end
  object memo_obs: TMemo
    Left = 16
    Top = 259
    Width = 185
    Height = 89
    Enabled = False
    TabOrder = 4
  end
  object btn_conectar: TButton
    Left = 736
    Top = 35
    Width = 129
    Height = 57
    Caption = 'Conectar'
    TabOrder = 5
    OnClick = btn_conectarClick
  end
  object btn_salvar: TButton
    Left = 121
    Top = 368
    Width = 99
    Height = 49
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 6
    OnClick = btn_salvarClick
  end
  object btn_novo: TButton
    Left = 16
    Top = 368
    Width = 99
    Height = 49
    Caption = 'Novo'
    Enabled = False
    TabOrder = 7
    OnClick = btn_novoClick
  end
  object btn_proximo: TButton
    Left = 121
    Top = 432
    Width = 99
    Height = 49
    Caption = '>'
    TabOrder = 8
    OnClick = btn_proximoClick
  end
  object btn_anterior: TButton
    Left = 16
    Top = 432
    Width = 99
    Height = 49
    Caption = '<'
    TabOrder = 9
    OnClick = btn_anteriorClick
  end
  object btn_excluir: TButton
    Left = 332
    Top = 368
    Width = 100
    Height = 49
    Caption = 'Excluir'
    Enabled = False
    TabOrder = 10
  end
  object btn_editar: TButton
    Left = 226
    Top = 368
    Width = 100
    Height = 49
    Caption = 'Editar'
    Enabled = False
    TabOrder = 11
    OnClick = btn_editarClick
  end
end
