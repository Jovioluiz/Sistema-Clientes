object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 373
  Width = 401
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema_cliente'
      'User_Name=jovio'
      'Password=MaverickV8'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\jovio\Desktop\codigos_fontes\Delphi\Sistema Clientes\li' +
      'b\libmysql.dll'
    Left = 112
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 184
    Top = 16
  end
  object tbClientes: TFDTable
    IndexFieldNames = 'cli_id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_cliente.clientes'
    TableName = 'sistema_cliente.clientes'
    Left = 32
    Top = 120
    object tbClientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbClientescli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 70
    end
    object tbClientescli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object tbClientescli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object tbClientescli_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_estado'
      Origin = 'cli_estado'
      Size = 30
    end
    object tbClientescli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Size = 15
    end
    object tbClientescli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 15
    end
    object tbClientescli_telefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_telefone'
      Origin = 'cli_telefone'
      EditMask = '!\(99\)0000-0000;0;_'
    end
    object tbClientescli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      EditMask = '!\(99\)00000-0000;0;_'
    end
    object tbClientescli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
      EditMask = '!99/99/0000;1;_'
    end
    object tbClientescli_data_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
    end
    object tbClientescli_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
    end
    object tbClientescli_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 100
    end
    object tbClientescli_cep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      EditMask = '00000-000;0;_'
    end
    object tbClientescli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object tbClientescli_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = tbClientes
    Left = 96
    Top = 120
  end
  object sqlConsultaCliente: TFDQuery
    Connection = FDConnection1
    Left = 32
    Top = 192
    object sqlConsultaClientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sqlConsultaClientecli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 70
    end
    object sqlConsultaClientecli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object sqlConsultaClientecli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object sqlConsultaClientecli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object sqlConsultaClientecli_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_estado'
      Origin = 'cli_estado'
      Size = 30
    end
    object sqlConsultaClientecli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Size = 15
    end
    object sqlConsultaClientecli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Size = 15
    end
    object sqlConsultaClientecli_telefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_telefone'
      Origin = 'cli_telefone'
    end
    object sqlConsultaClientecli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object sqlConsultaClientecli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object sqlConsultaClientecli_data_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
    end
    object sqlConsultaClientecli_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
    end
    object sqlConsultaClientecli_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 100
    end
    object sqlConsultaClientecli_cep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
    end
    object sqlConsultaClientecli_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Size = 2
    end
  end
  object dsConsultaCliente: TDataSource
    DataSet = sqlConsultaCliente
    Left = 128
    Top = 192
  end
  object sqlImprimirCliente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select *from clientes')
    Left = 32
    Top = 256
    object sqlImprimirClientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sqlImprimirClientecli_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Size = 70
    end
    object sqlImprimirClientecli_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Size = 100
    end
    object sqlImprimirClientecli_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Size = 50
    end
    object sqlImprimirClientecli_cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Size = 50
    end
    object sqlImprimirClientecli_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_estado'
      Origin = 'cli_estado'
      Size = 30
    end
    object sqlImprimirClientecli_rg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Size = 15
    end
    object sqlImprimirClientecli_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Size = 15
    end
    object sqlImprimirClientecli_telefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_telefone'
      Origin = 'cli_telefone'
    end
    object sqlImprimirClientecli_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
    end
    object sqlImprimirClientecli_data_nasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_nasc'
      Origin = 'cli_data_nasc'
    end
    object sqlImprimirClientecli_data_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_data_cad'
      Origin = 'cli_data_cad'
    end
    object sqlImprimirClientecli_situacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_situacao'
      Origin = 'cli_situacao'
    end
    object sqlImprimirClientecli_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_email'
      Origin = 'cli_email'
      Size = 100
    end
    object sqlImprimirClientecli_cep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
    end
    object sqlImprimirClientecli_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_uf'
      Origin = 'cli_uf'
      Size = 2
    end
  end
end
