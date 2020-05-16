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
    btnBuscarTodos: TButton;
    edtImpressao: TEdit;
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
    procedure btnBuscarTodosClick(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    procedure ConfigBotoes;
    procedure QtdadeRegistros;
    procedure BuscarTodos;
    procedure DesabilitarCampos;
    procedure HabilitarCampos;
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

uses uDm;

procedure TfrmCadClientes.btnBuscarTodosClick(Sender: TObject);
begin
  BuscarTodos;
end;

procedure TfrmCadClientes.btnCancelarClick(Sender: TObject);
begin
  dm.tbClientes.Cancel;
  ConfigBotoes;
end;

procedure TfrmCadClientes.btnEditarClick(Sender: TObject);
begin
  dm.tbClientes.Edit;
  ConfigBotoes;
  HabilitarCampos;
end;

procedure TfrmCadClientes.btnExcluirClick(Sender: TObject);
begin
  case Application.MessageBox('Deseja Excluir o cliente?', 'Excluir Cliente', MB_YESNO + MB_ICONQUESTION) of
    IDYES:
    begin
      dm.sqlConsultaCliente.Close;
      dm.sqlConsultaCliente.SQL.Clear;
      dm.sqlConsultaCliente.SQL.Add('select *from clientes where cli_id = :codigo');
      dm.sqlConsultaCliente.ParamByName('codigo').Value := edtID.Text;
      dm.sqlConsultaCliente.Open();
      dm.sqlConsultaCliente.Delete;
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

procedure TfrmCadClientes.btnImprimirClick(Sender: TObject);
begin
  with dm.sqlImprimirCliente do
    begin
      Close;
      SQL.Clear;
      if edtImpressao.Text = '' then
        begin
          SQL.Add('select *from clientes');
        end
      else
        begin
          SQL.Add('select *from clientes where cli_id = :codigo');
          ParamByName('codigo').Value := StrToInt(edtImpressao.Text);
        end;

      Open();

      dm.reportCliente.LoadFromFile(GetCurrentDir + '\rel\relatorio_cliente.fr3');
      dm.reportCliente.ShowReport();
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
  dm.sqlConsultaCliente.Open();
  dm.sqlConsultaCliente.Refresh;
  QtdadeRegistros;
  HabilitarCampos;
end;

procedure TfrmCadClientes.btnPesquisarClick(Sender: TObject);
begin
  if edtBuscar.Text = '' then
    begin
      ShowMessage('Digite algo para buscar');
      edtBuscar.SetFocus;
      Exit;
    end;

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
        QtdadeRegistros;
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

procedure TfrmCadClientes.BuscarTodos;
begin
  dm.sqlConsultaCliente.Close;
  dm.sqlConsultaCliente.SQL.Clear;
  dm.sqlConsultaCliente.SQL.Add('select *from clientes');
  dm.sqlConsultaCliente.Open();
  btnImprimir.Enabled := true;
  QtdadeRegistros;
end;

procedure TfrmCadClientes.ConfigBotoes;
begin
  btnInserir.Enabled := dm.tbClientes.State in [dsbrowse];
  btnExcluir.Enabled := dm.tbClientes.State in [dsbrowse];
  btnEditar.Enabled := dm.tbClientes.State in [dsbrowse];
  btnSalvar.Enabled := dm.tbClientes.State in [dsinsert, dsedit]; //estado de inserção e edição
  btnCancelar.Enabled := dm.tbClientes.State in [dsinsert, dsedit];
end;

procedure TfrmCadClientes.DBGrid1CellClick(Column: TColumn);
begin
  edtImpressao.Text := IntToStr(dm.sqlConsultaClientecli_id.Value);
  edtImpressao.Enabled := true;
end;

procedure TfrmCadClientes.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
  tbConsulta.TabVisible := false;
  tbCadastro.TabVisible := true;

  edtID.Text := IntToStr(dm.sqlConsultaClientecli_id.Value);
  edtNome.Text := dm.sqlConsultaClientecli_nome.AsString;
  edtEndereco.Text := dm.sqlConsultaClientecli_endereco.AsString;
  edtBairro.Text := dm.sqlConsultaClientecli_bairro.AsString;
  edtCidade.Text := dm.sqlConsultaClientecli_cidade.AsString;
  edtUF.Text := dm.sqlConsultaClientecli_uf.AsString;
  edtRg.Text := dm.sqlConsultaClientecli_rg.AsString;
  edtCpf.Text := dm.sqlConsultaClientecli_cpf.AsString;
  edtCEP.Text := dm.sqlConsultaClientecli_cep.AsString;
  edtTelefone.Text := dm.sqlConsultaClientecli_telefone.AsString;
  edtCelular.Text := dm.sqlConsultaClientecli_celular.AsString;
  edtEmail.Text := dm.sqlConsultaClientecli_email.AsString;
  edtDataNasc.Text := DateToStr(dm.sqlConsultaClientecli_data_nasc.Value);
  edtDataCad.Text := DateToStr(dm.sqlConsultaClientecli_data_cad.Value);
  edtSituacao.Text := dm.sqlConsultaClientecli_situacao.AsString;

  DesabilitarCampos;

end;

procedure TfrmCadClientes.DesabilitarCampos;
begin
  edtID.Enabled := false;
  edtNome.Enabled := false;
  edtEndereco.Enabled := false;
  edtBairro.Enabled := false;
  edtCidade.Enabled := false;
  edtUF.Enabled := false;
  edtSituacao.Enabled := false;
  edtCEP.Enabled := false;
  edtRg.Enabled := false;
  edtCpf.Enabled := false;
  edtTelefone.Enabled := false;
  edtCelular.Enabled := false;
  edtEmail.Enabled := false;
  edtDataNasc.Enabled := false;
  edtDataCad.Enabled := false;
end;

procedure TfrmCadClientes.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  case rgOpcoes.ItemIndex of
  0:
    begin
      if(Key in ['0'..'9'] = false) and (word (key) <> VK_BACK) then
        begin
          ShowMessage('Digite somente números');
          Key := #0;
        end;
    end;
  2:
    begin
      if(Key in ['0'..'9'] = false) and (word (key) <> VK_BACK) then
        begin
          ShowMessage('Digite somente números');
          Key := #0;
        end;
    end;
  3:
    begin
      if(Key in ['0'..'9'] = false) and (word (key) <> VK_BACK) then
        begin
          ShowMessage('Digite somente números');
          Key := #0;
        end;
    end;
  end;

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
 QtdadeRegistros;

end;

procedure TfrmCadClientes.HabilitarCampos;
begin
  edtID.Enabled := true;
  edtNome.Enabled := true;
  edtEndereco.Enabled := true;
  edtBairro.Enabled := true;
  edtCidade.Enabled := true;
  edtUF.Enabled := true;
  edtSituacao.Enabled := true;
  edtCEP.Enabled := true;
  edtRg.Enabled := true;
  edtCpf.Enabled := true;
  edtTelefone.Enabled := true;
  edtCelular.Enabled := true;
  edtEmail.Enabled := true;
  edtDataNasc.Enabled := true;
  edtDataCad.Enabled := true;
end;

procedure TfrmCadClientes.QtdadeRegistros;
begin
  if dm.sqlConsultaCliente.RecordCount = 1 then
      begin
        lblMensagem.Visible := True;
        lblMensagem.Caption := 'Foi encontrado '+ IntToStr(dm.sqlConsultaCliente.RecordCount) +' Cliente';
        btnImprimir.Enabled := True;
      end;

    if dm.sqlConsultaCliente.RecordCount > 1 then
      begin
        lblMensagem.Visible := True;
        lblMensagem.Caption := 'Foram encontrados '+ IntToStr(dm.sqlConsultaCliente.RecordCount) +' Clientes';
        btnImprimir.Enabled := True;
      end;
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
    edtBuscar.Text := 'a';
    btnPesquisar.Enabled := True;
  end;

  end;
end;

end.
