unit uDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    FDConnection1: TFDConnection;
    driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tbClientes: TFDTable;
    DataSource1: TDataSource;
    tbClientescli_id: TFDAutoIncField;
    tbClientescli_nome: TStringField;
    tbClientescli_bairro: TStringField;
    tbClientescli_cidade: TStringField;
    tbClientescli_estado: TStringField;
    tbClientescli_rg: TStringField;
    tbClientescli_cpf: TStringField;
    tbClientescli_telefone: TStringField;
    tbClientescli_celular: TStringField;
    tbClientescli_data_nasc: TDateField;
    tbClientescli_data_cad: TDateField;
    tbClientescli_situacao: TStringField;
    tbClientescli_email: TStringField;
    tbClientescli_cep: TStringField;
    tbClientescli_endereco: TStringField;
    tbClientescli_uf: TStringField;
    sqlConsultaCliente: TFDQuery;
    dsConsultaCliente: TDataSource;
    sqlImprimirCliente: TFDQuery;
    sqlConsultaClientecli_id: TFDAutoIncField;
    sqlConsultaClientecli_nome: TStringField;
    sqlConsultaClientecli_endereco: TStringField;
    sqlConsultaClientecli_bairro: TStringField;
    sqlConsultaClientecli_cidade: TStringField;
    sqlConsultaClientecli_estado: TStringField;
    sqlConsultaClientecli_rg: TStringField;
    sqlConsultaClientecli_cpf: TStringField;
    sqlConsultaClientecli_telefone: TStringField;
    sqlConsultaClientecli_celular: TStringField;
    sqlConsultaClientecli_data_nasc: TDateField;
    sqlConsultaClientecli_data_cad: TDateField;
    sqlConsultaClientecli_situacao: TStringField;
    sqlConsultaClientecli_email: TStringField;
    sqlConsultaClientecli_cep: TStringField;
    sqlConsultaClientecli_uf: TStringField;
    sqlImprimirClientecli_id: TFDAutoIncField;
    sqlImprimirClientecli_nome: TStringField;
    sqlImprimirClientecli_endereco: TStringField;
    sqlImprimirClientecli_bairro: TStringField;
    sqlImprimirClientecli_cidade: TStringField;
    sqlImprimirClientecli_estado: TStringField;
    sqlImprimirClientecli_rg: TStringField;
    sqlImprimirClientecli_cpf: TStringField;
    sqlImprimirClientecli_telefone: TStringField;
    sqlImprimirClientecli_celular: TStringField;
    sqlImprimirClientecli_data_nasc: TDateField;
    sqlImprimirClientecli_data_cad: TDateField;
    sqlImprimirClientecli_situacao: TStringField;
    sqlImprimirClientecli_email: TStringField;
    sqlImprimirClientecli_cep: TStringField;
    sqlImprimirClientecli_uf: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := 'sistema_cliente';
  FDConnection1.Params.UserName := 'jovio';
  FDConnection1.Params.Password := 'MaverickV8';

  FDConnection1.Connected := True;

  driver.VendorLib := GetCurrentDir + '\lib\libmysql.dll';

  tbClientes.TableName := 'clientes';
  tbClientes.Active := True;
end;

end.
