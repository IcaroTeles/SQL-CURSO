program SQLprojeto;

uses
  Vcl.Forms,
  SQLProj in 'SQLProj.pas' {formMenu},
  DTMConexão in 'DataModule\DTMConexão.pas' {dtmConect: TDataModule},
  TelaHeranca in 'Heranca\TelaHeranca.pas' {frmTelaHeranca},
  CadCategorias in 'Cadastro\CadCategorias.pas' {frmCadCategoria},
  uEnum in 'Heranca\uEnum.pas',
  Enter in 'terceiros\Enter.pas',
  cCadCategoria in 'Classes\cCadCategoria.pas',
  CadCliente in 'Cadastro\CadCliente.pas' {frmCadCliente},
  cCadClientes in 'Classes\cCadClientes.pas',
  CadProduto in 'Cadastro\CadProduto.pas' {frmCadProduto},
  cCadProduto in 'Classes\cCadProduto.pas',
  ufrmatualizadb in 'DataModule\ufrmatualizadb.pas' {frmatualizadb},
  DTMvenda in 'DataModule\DTMvenda.pas' {dtmvendas: TDataModule},
  uProVendas in 'Processo\uProVendas.pas' {frmprovendas},
  cProVenda in 'Classes\cProVenda.pas',
  cControleEstoque in 'Classes\cControleEstoque.pas',
  uRelVenda in 'Relatório\uRelVenda.pas' {frmrelvenda},
  uRelFichaClientes in 'Relatório\uRelFichaClientes.pas' {frmrelclientesficha},
  uRelClientes in 'Relatório\uRelClientes.pas' {frmrelclientes},
  uRelCategoria in 'Relatório\uRelCategoria.pas' {frmrelcategoria},
  uRelProd in 'Relatório\uRelProd.pas' {frmrelproduto},
  uSelecionarData in 'Relatório\uSelecionarData.pas' {frmselecionardata},
  uRelProdCategoria in 'Relatório\uRelProdCategoria.pas' {frmrelprodutocategoria},
  uRelVendaPorData in 'Relatório\uRelVendaPorData.pas' {frmrelvendapordata};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMenu, formMenu);
  Application.Run;
end.
