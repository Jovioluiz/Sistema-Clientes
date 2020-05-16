program SistemaClientes;

uses
  Vcl.Forms,
  uPrincipal in 'fontes\uPrincipal.pas' {frmPrincipal},
  uDm in 'fontes\uDm.pas' {dm: TDataModule},
  uClientes in 'fontes\uClientes.pas' {frmCadClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCadClientes, frmCadClientes);
  Application.Run;
end.
