object dm: Tdm
  Left = 0
  Top = 0
  Caption = 'modulo'
  ClientHeight = 392
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=contatos'
      'User_Name=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 336
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\lib\libmySQL.dll'
    Left = 608
    Top = 24
  end
  object ds_contatos: TDataSource
    Left = 336
    Top = 192
  end
  object tb_contato: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'contatos.tb_contato'
    Left = 336
    Top = 104
    object tb_contatoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_contatonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object tb_contatoemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 100
    end
    object tb_contatotelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 100
    end
    object tb_contatoobservacoes: TStringField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      Required = True
      Size = 500
    end
  end
end
