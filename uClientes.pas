unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Param;

type
  TfrmCadClientes = class(TForm)
    PageControl1: TPageControl;
    tbCadastro: TTabSheet;
    tbConsulta: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    lblEndereco: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnFechar: TSpeedButton;
    btnLocalizar: TSpeedButton;
    edtID: TDBEdit;
    edtNome: TDBEdit;
    edtEndereco: TDBEdit;
    edtBairro: TDBEdit;
    edtCidade: TDBEdit;
    edtUF: TDBComboBox;
    edtSituacao: TDBComboBox;
    edtCEP: TDBEdit;
    edtRg: TDBEdit;
    edtCpf: TDBEdit;
    edtTelefone: TDBEdit;
    edtCelular: TDBEdit;
    edtEmail: TDBEdit;
    edtDataNasc: TDBEdit;
    edtDataCad: TDBEdit;
    btnVoltar: TButton;
    DBGrid1: TDBGrid;
    btnImprimir: TButton;
    btnPesquisar: TButton;
    edtBuscar: TEdit;
    lblBuscar: TLabel;
    rgOpcoes: TRadioGroup;
    data_nasc: TDateTimePicker;
    lblMensagem: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure rgOpcoesClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    procedure ConfigBotoes;
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmCadClientes.btnCancelarClick(Sender: TObject);
begin
  dm.tbClientes.Cancel;
  ConfigBotoes;
end;

procedure TfrmCadClientes.btnEditarClick(Sender: TObject);
begin
  dm.tbClientes.Edit;
  ConfigBotoes;
end;

procedure TfrmCadClientes.btnExcluirClick(Sender: TObject);
begin
  case Application.MessageBox('Deseja Excluir o cliente?', 'Excluir Cliente', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      dm.tbClientes.Delete;
      ShowMessage('Cliente Excluido');
    end;

    IDNO:
    begin
      Exit;
    end;
  end;
end;

procedure TfrmCadClientes.btnFecharClick(Sender: TObject);
begin
  if dm.tbClientes.State in [dsInsert, dsEdit] then
    begin
      ShowMessage('Salve ou cancele o registro antes de fechar');
      Exit;
    end
  else
    begin
      Close;
    end;
end;

procedure TfrmCadClientes.btnInserirClick(Sender: TObject);
begin

  //iniciando a inserção na tabela
  dm.tbClientes.Active := True;
  dm.tbClientes.Insert;

  //habilitando os botões
  ConfigBotoes;

  dm.tbClientescli_data_cad.Value := date;
  dm.tbClientescli_cidade.Value := 'Chapecó';
  dm.tbClientescli_uf.Value := 'SC';
  dm.tbClientescli_situacao.Value := 'Ativo';
  edtNome.SetFocus;
end;

procedure TfrmCadClientes.btnLocalizarClick(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
  tbConsulta.TabVisible := True;
  tbCadastro.TabVisible := false;
end;

procedure TfrmCadClientes.btnPesquisarClick(Sender: TObject);
begin
{
  if edtBuscar.Text = '' then
    begin
      ShowMessage('Digite algo para buscar');
      edtBuscar.SetFocus;
      Exit;
    end;}

    with dm.sqlConsultaCliente do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from clientes ');

        case rgOpcoes.ItemIndex of
        0:
        begin
          SQL.Add('where cli_id = :codigo');
          ParamByName('codigo').Value := edtBuscar.Text;
        end;

        1:
        begin
          SQL.Add('where cli_nome like :nome');
          ParamByName('nome').Value := '%' + edtBuscar.Text + '%';
        end;

        2:
        begin
          SQL.Add('where cli_cpf = :cpf');
          ParamByName('cpf').Value := edtBuscar.Text;
        end;

        3:
        begin
          SQL.Add('where cli_rg = :rg');
          ParamByName('rg').Value := edtBuscar.Text;
        end;

        4:
        begin
          SQL.Add('where cli_data_nasc = :data_nasc');
          ParamByName('data_nasc').AsDate := StrToDate(FormatDateTime('dd/mm/yyyy', data_nasc.Date));
        end;

        end;

        Open();

        if RecordCount = 0 then
          begin
            lblMensagem.Visible := True;
            lblMensagem.Caption := '';
            lblMensagem.Caption := 'Nenhum Cliente Encontrado';
            btnImprimir.Enabled := false;
          end;

        if RecordCount = 1 then
          begin
            lblMensagem.Visible := True;
            lblMensagem.Caption := 'Foi encontrado '+ IntToStr(dm.sqlConsultaCliente.RecordCount) +' Cliente';
            btnImprimir.Enabled := True;
          end;

        if RecordCount > 1 then
          begin
            lblMensagem.Visible := True;
            lblMensagem.Caption := 'Foram encontrados '+ IntToStr(dm.sqlConsultaCliente.RecordCount) +' Clientes';
            btnImprimir.Enabled := True;
          end;


      end;

end;

procedure TfrmCadClientes.btnSalvarClick(Sender: TObject);
begin
  dm.tbClientes.Post;
  ShowMessage('Cliente Salvo com sucesso!');
  ConfigBotoes;
end;

procedure TfrmCadClientes.btnVoltarClick(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tbConsulta.TabVisible := false;
  tbCadastro.TabVisible := True;
end;

procedure TfrmCadClientes.ConfigBotoes;
begin
  btnInserir.Enabled := dm.tbClientes.State in [dsbrowse];
  btnExcluir.Enabled := dm.tbClientes.State in [dsbrowse];
  btnEditar.Enabled := dm.tbClientes.State in [dsbrowse];
  btnSalvar.Enabled := dm.tbClientes.State in [dsinsert, dsedit]; //estado de inserção e edição
  btnCancelar.Enabled := dm.tbClientes.State in [dsinsert, dsedit];
end;

procedure TfrmCadClientes.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tbConsulta.TabVisible := false;

  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;

 edtBuscar.Visible := false;
 lblBuscar.Visible := false;
 data_nasc.Visible := false;

 btnImprimir.Enabled := false;
 btnPesquisar.Enabled := false;

end;

procedure TfrmCadClientes.rgOpcoesClick(Sender: TObject);
begin
  case rgOpcoes.ItemIndex of
  0:
  begin
    edtBuscar.Visible := True;
    lblBuscar.Visible := True;
    lblBuscar.Caption := 'Digite o código do cliente';
    data_nasc.Visible := false;
    edtBuscar.Clear;
    btnPesquisar.Enabled := True;
    edtBuscar.SetFocus
  end;

  1:
  begin
    edtBuscar.Visible := True;
    lblBuscar.Visible := True;
    lblBuscar.Caption := 'Digite o nome do cliente';
    data_nasc.Visible := false;
    edtBuscar.Clear;
    btnPesquisar.Enabled := True;
    edtBuscar.SetFocus
  end;

  2:
  begin
    edtBuscar.Visible := True;
    lblBuscar.Visible := True;
    lblBuscar.Caption := 'Digite o CPF do cliente';
    data_nasc.Visible := false;
    edtBuscar.Clear;
    btnPesquisar.Enabled := True;
    edtBuscar.SetFocus
  end;

  3:
  begin
    edtBuscar.Visible := True;
    lblBuscar.Visible := True;
    lblBuscar.Caption := 'Digite o RG do cliente';
    data_nasc.Visible := false;
    edtBuscar.Clear;
    btnPesquisar.Enabled := True;
    edtBuscar.SetFocus
  end;

  4:
  begin
    edtBuscar.Visible := false;
    lblBuscar.Visible := True;
    lblBuscar.Caption := 'Data de nascimento do cliente';
    data_nasc.Visible := True;
    edtBuscar.Clear;
    btnPesquisar.Enabled := True;
  end;

  end;
end;

end.
