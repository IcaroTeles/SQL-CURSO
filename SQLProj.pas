unit SQLProj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,
  uProVendas,Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Enter, CadCliente, CadProduto, ufrmatualizadb;

type
  TformMenu = class(TForm)
    menuPrinc: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIO1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    PRODUTO1: TMenuItem;
    N2: TMenuItem;
    FECHAR1: TMenuItem;
    menuFechar: TMenuItem;
    VENDA1: TMenuItem;
    CLIENTE1: TMenuItem;
    CLIENTE2: TMenuItem;
    PRODUTO2: TMenuItem;
    PRODUTO3: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    CATEGORIA2: TMenuItem;
    FICHACLIENTE1: TMenuItem;
    PRODUTOPORCATEGORIA1: TMenuItem;
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PRODUTO1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure VENDA1Click(Sender: TObject);
    procedure CATEGORIA2Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
    procedure FICHACLIENTE1Click(Sender: TObject);
    procedure PRODUTO2Click(Sender: TObject);
    procedure PRODUTOPORCATEGORIA1Click(Sender: TObject);
    procedure VENDAPORDATA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: Tmrenter;
    procedure AtualizarBancoDeDados(aForm: Tfrmatualizadb);
  public
    { Public declarations }
  end;

var
  formMenu: TformMenu;

implementation

{$R *.dfm}

uses DTMConexão, CadCategorias, uRelCategoria, uRelClientes, uRelFichaClientes,
  uRelProd, uRelProdCategoria, uSelecionarData, uRelVendaPorData;

procedure TformMenu.CATEGORIA2Click(Sender: TObject);
begin
  frmrelcategoria:= Tfrmrelcategoria.create(self);
  frmrelcategoria.relatorio.previewmodal;
  frmrelcategoria.release;
end;

procedure TformMenu.CLIENTE1Click(Sender: TObject);
begin
  frmrelclientes:=Tfrmrelclientes.create(self);
  frmrelclientes.Relatorio.PreviewModal;
  frmrelclientes.Release;
end;

procedure TformMenu.FICHACLIENTE1Click(Sender: TObject);
begin
  frmrelclientesficha:= Tfrmrelclientesficha.create (self);
  frmrelclientesficha.relatorio.previewmodal;
  frmrelclientesficha.release;
end;

procedure TformMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Freeandnil (teclaenter);
    freeandnil (dtmConect);
end;

procedure TformMenu.FormCreate(Sender: TObject);
begin
  frmatualizadb:= Tfrmatualizadb.create (self);
  frmatualizadb.show;
  frmatualizadb.refresh;
  dtmConect := TdtmConect.create(nil);
  with dtmConect.ConectDB do
  begin
    SQLHourGlass:= True;
    Protocol:= 'mssql';
    LibraryLocation:= 'D:\Projetos\Cursos\SQL-CURSO\ntwdblib.dll';
    HostName:= '.\SQLEXPRESS';
    Port:= 1433;
  end;
  AtualizarBancoDeDados(frmatualizadb);
  frmatualizadb.Free;
  TeclaEnter:= Tmrenter.create (self);
  teclaenter.FocusEnabled:= true;
  teclaenter.FocusColor:=clinfobk;
end;


procedure TformMenu.AtualizarBancoDeDados(aForm:Tfrmatualizadb);
begin
aform.chkconexao.checked := true;
aform.refresh;

dtmconect.qrycategoria.execsql;
aform.chkcategoria.checked :=true;
aform.refresh;
sleep (200);

dtmconect.qryclientes.execsql;
aform.chkclientes.checked :=true;
aform.refresh;
sleep (200);

dtmconect.qryprodutos.execsql;
aform.chkprodutos.checked :=true;
aform.refresh;
sleep (200);

dtmconect.qryvendas.execsql;
aform.chkvendas.checked :=true;
aform.refresh;
sleep (200);

dtmconect.qryitens.execsql;
aform.chkitens.checked :=true;
aform.refresh;
sleep (200);
end;

procedure TformMenu.menuFecharClick(Sender: TObject);
begin
close;
end;

procedure TformMenu.N1Click(Sender: TObject);
begin
  frmCadCliente:= TfrmCadCliente.Create (self);
  frmCadCliente.ShowModal;
  frmCadCliente.Release;
end;

procedure TformMenu.N2Click(Sender: TObject);
begin
  frmCadProduto:= TfrmCadProduto.Create (self);
  frmCadProduto.ShowModal;
  frmCadProduto.Release;
end;

procedure TformMenu.PRODUTO1Click(Sender: TObject);
begin
  frmCadCategoria:= TfrmCadCategoria.Create (self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;


procedure TformMenu.PRODUTO2Click(Sender: TObject);
begin
  frmrelproduto:=Tfrmrelproduto.create(self);
  frmrelproduto.relatorio.previewmodal;
  frmrelproduto.release;
end;

procedure TformMenu.PRODUTOPORCATEGORIA1Click(Sender: TObject);
begin
  frmrelprodutocategoria:= Tfrmrelprodutocategoria.create(self);
  frmrelprodutocategoria.relatorio.previewmodal;
  frmrelprodutocategoria.release;
end;

procedure TformMenu.VENDA1Click(Sender: TObject);
begin
  frmprovendas:= Tfrmprovendas.create(self);
  frmprovendas.showModal;
  frmprovendas.release;
end;

procedure TformMenu.VENDAPORDATA1Click(Sender: TObject);
begin
  try
    frmselecionardata:= Tfrmselecionardata.create(self);
    frmselecionardata.showmodal;

    frmRelVendaPorData:=TfrmRelVendaPorData.Create(self);
    frmRelVendaPorData.QryVendas.Close;
    frmRelVendaPorData.QryVendas.ParamByName('DataInicio').AsDate:=frmSelecionarData.EdtDataInicio.Date;
    frmRelVendaPorData.QryVendas.ParamByName('DataFim').AsDate:=frmSelecionarData.EdtDataFinal.Date;
    frmRelVendaPorData.QryVendas.Open;
    frmRelVendaPorData.Relatorio.PreviewModal;
  finally
    frmselecionardata.release;
  end;


end;

end.
