unit SQLProj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
   System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,
  uProVendas,Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
   Enter, CadCliente, CadProduto, ufrmatualizadb, cUsuarioLogado,
   cUsuario,Vcl.ComCtrls, cAtualizacaoBancodeDados, cArquivoIni;

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
    USURIO1: TMenuItem;
    N3: TMenuItem;
    ALTERARSENHA1: TMenuItem;
    stbprincipal: TStatusBar;
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
    procedure USURIO1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ALTERARSENHA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: Tmrenter;
    procedure AtualizarBancoDeDados(aForm: Tfrmatualizadb);
  public
    { Public declarations }
  end;

var
  formMenu: TformMenu;
  oUsuarioLogado: TUsuarioLogado;

implementation

{$R *.dfm}

uses DTMConexão, CadCategorias, uRelCategoria, uRelClientes, uRelFichaClientes,
  uRelProd, uRelProdCategoria, uSelecionarData, uRelVendaPorData, uCadUsuarios,
  uLogin, uAlterarSenha;

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
if not FileExists(TArquivoIni.ArquivoIni) then
  begin
    TArquivoIni.AtualizarIni('SERVER', 'TipoDataBase', 'MSSQL');
    TArquivoIni.AtualizarIni('SERVER', 'HostName', '.\SQLEXPRESS');
    TArquivoIni.AtualizarIni('SERVER', 'Port', '1433');
    TArquivoIni.AtualizarIni('SERVER', 'Database', 'Azax');
    MessageDlg('Arquivo '+ TArquivoIni.ArquivoIni +' Criado com sucesso' +#13+
               'Configure o arquivo antes de inicializar aplicação',MtInformation,[mbok],0);

    Application.Terminate;
  end
  else
  begin
  frmatualizadb:= Tfrmatualizadb.create (self);
  frmatualizadb.show;
  frmatualizadb.refresh;
  dtmConect := TdtmConect.create(nil);
  with dtmConect.ConectDB do
    begin
    SQLHourGlass:= True;
    if TArquivoIni.LerIni('SERVER','TipoDataBase')='MSSQL' then
         Protocol:='mssql';  //Protocolo do banco de dados
    LibraryLocation:= 'C:\Azax\ntwdblib.dll';
    HostName:= TArquivoIni.LerIni('SERVER','HostName');
    Port:= StrToInt(TArquivoIni.LerIni('SERVER','Port'));
    Database:= TArquivoIni.LerIni('SERVER','DataBase');
    Autocommit:= true;
    Connected:= true;
    end;
  AtualizarBancoDeDados(frmatualizadb);
  frmatualizadb.Free;
  TeclaEnter:= Tmrenter.create (self);
  teclaenter.FocusEnabled:= true;
  teclaenter.FocusColor:=clinfobk;
  end;
end;

procedure TformMenu.FormShow(Sender: TObject);
begin
  try
    oUsuarioLogado := TUsuarioLogado.Create;

    frmLogin:=TfrmLogin.Create(Self);
    frmLogin.ShowModal;

  finally
    frmLogin.Release;
     StbPrincipal.Panels[0].Text:='USUÁRIO: '+oUsuarioLogado.nome;
  end;
end;

procedure TformMenu.ALTERARSENHA1Click(Sender: TObject);
begin
  frmalterarsenha:= Tfrmalterarsenha.Create (self);
  frmalterarsenha.ShowModal;
  frmalterarsenha.Release;
end;

procedure TformMenu.AtualizarBancoDeDados(aForm:Tfrmatualizadb);
var oAtualizarMSSQL:TAtualizaBancoDadosMSSQL;
begin
  try
    oAtualizarMSSQL:=TAtualizaBancoDadosMSSQL.Create(Dtmconect.ConectDB);
    oAtualizarMSSQL.AtualizarBancoDeDadosMSSQL;
  finally
    if Assigned(oAtualizarMSSQL) then
       FreeAndNil(oAtualizarMSSQL);
  end;
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

procedure TformMenu.USURIO1Click(Sender: TObject);
begin
  frmcadusuario:= Tfrmcadusuario.create(self);
  frmcadusuario.showModal;
  frmcadusuario.release;
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
