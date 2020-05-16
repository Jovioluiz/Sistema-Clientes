object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 383
  Width = 408
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
      ReadOnly = True
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
    SQL.Strings = (
      'select *from clientes')
    Left = 40
    Top = 192
    object sqlConsultaClientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    Left = 144
    Top = 192
  end
  object sqlImprimirCliente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select *from clientes')
    Left = 256
    Top = 192
    object sqlImprimirClientecli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
  object reportCliente: TfrxReport
    Version = '6.6.15'
    DataSet = dsRelCliente
    DataSetName = 'dsRelCliente'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43950.574989930600000000
    ReportOptions.LastChange = 43950.611478402800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 288
    Datasets = <
      item
        DataSet = dsRelCliente
        DataSetName = 'dsRelCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 15.118120000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Clientes')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 393.071120000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = dsRelCliente
        DataSetName = 'dsRelCliente'
        RowCount = 0
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 16777180
          Frame.Color = clNone
          Frame.Typ = []
        end
        object dsRelClientecli_id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'cli_id'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_id"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 124.724490000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 86.929190000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 86.929190000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object dsRelClientecli_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'cli_nome'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_nome"]')
          ParentFont = False
        end
        object dsRelClientecli_telefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 98.267780000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'cli_telefone'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_telefone"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 86.929190000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 86.929190000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object dsRelClientecli_celular: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 98.267780000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_celular'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_celular"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 60.472480000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 56.692950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 211.653680000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 173.858380000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 173.858380000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 185.196970000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'cli_endereco'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_endereco"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 185.196970000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'cli_bairro'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_bairro"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 177.637910000000000000
          Height = 34.015770000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 173.858380000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 185.196970000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cidade'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_cidade"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 143.622140000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669450000000000000
          Top = 147.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 147.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 173.858380000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object dsRelClientecli_uf: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 185.196970000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'cli_uf'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_uf"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 147.401670000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 313.700990000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 695.433520000000000000
          Top = 275.905690000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 275.905690000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 287.244280000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'cli_rg'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_rg"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 287.244280000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'cli_cpf'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_cpf"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 275.905690000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 275.905690000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 287.244280000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'cli_email'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_email"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 245.669450000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RG')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 249.448980000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 249.448980000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email')
          ParentFont = False
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 275.905690000000000000
          Height = 37.795300000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo20: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 287.244280000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'cli_data_nasc'
          DataSet = dsRelCliente
          DataSetName = 'dsRelCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsRelCliente."cli_data_nasc"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 245.669450000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Nascimento')
          ParentFont = False
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 347.716760000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dsRelCliente: TfrxDBDataset
    UserName = 'dsRelCliente'
    CloseDataSource = False
    DataSet = sqlImprimirCliente
    BCDToCurrency = False
    Left = 120
    Top = 288
  end
end
