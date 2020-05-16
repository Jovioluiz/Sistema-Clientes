unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    Fechar1: TMenuItem;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Sair1: TMenuItem;
    pnlTopo: TPanel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uClientes;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  frmCadClientes := TfrmCadClientes.Create(Self);
  frmCadClientes.ShowModal;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[3].Text := 'Data: ' + FormatDateTime('dddd, dd " de " mmmm " de " yyyy', Now);
  StatusBar1.Panels[4].Text := FormatDateTime('hh:mm:ss', Now);
end;

end.
