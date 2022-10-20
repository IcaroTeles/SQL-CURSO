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
  cCadProduto in 'Classes\cCadProduto.pas',
  ufrmatualizadb in 'DataModule\ufrmatualizadb.pas' {frmatualizadb},
  DTMvenda in 'DataModule\DTMvenda.pas' {dtmvendas: TDataModule},
  uProVendas in 'Processo\uProVendas.pas' {frmprovendas},
  cProVenda in 'Classes\cProVenda.pas',
  cControleEstoque in 'Classes\cControleEstoque.pas',
  uRelVenda in 'Relat�rio\uRelVenda.pas' {frmrelvenda},
  uRelFichaClientes in 'Relat�rio\uRelFichaClientes.pas' {frmrelclientesficha},
  uRelClientes in 'Relat�rio\uRelClientes.pas' {frmrelclientes},
  uRelCategoria in 'Relat�rio\uRelCategoria.pas' {frmrelcategoria},
  uRelProd in 'Relat�rio\uRelProd.pas' {frmrelproduto},
  uSelecionarData in 'Relat�rio\uSelecionarData.pas' {frmselecionardata},
  uRelProdCategoria in 'Relat�rio\uRelProdCategoria.pas' {frmrelprodutocategoria},
  uRelVendaPorData in 'Relat�rio\uRelVendaPorData.pas' {frmrelvendapordata};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMenu, formMenu);
  Application.Run;
end.
