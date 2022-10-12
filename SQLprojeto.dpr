program SQLprojeto;

uses
  Vcl.Forms,
  SQLProj in 'SQLProj.pas' {formMenu},
  DTMConex�o in 'DataModule\DTMConex�o.pas' {dtmConect: TDataModule},
  TelaHeranca in 'Heranca\TelaHeranca.pas' {frmTelaHeranca},
  CadCategorias in 'Cadastro\CadCategorias.pas' {frmCadCategoria},
  uEnum in 'Heranca\uEnum.pas',
  Enter in 'terceiros\Enter.pas',
  cCadCategoria in 'Classes\cCadCategoria.pas',
  CadCliente in 'Cadastro\CadCliente.pas' {frmCadCliente},
  cCadClientes in 'Classes\cCadClientes.pas',
  CadProduto in 'Cadastro\CadProduto.pas' {frmCadProduto},
  cCadProduto in 'Classes\cCadProduto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMenu, formMenu);
  Application.Run;
end.
