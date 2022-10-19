unit uProVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  DTMvenda, RxToolEdit, RxCurrEdit, uenum, cprovenda, DTMConexão;

type
  Tfrmprovendas = class(TfrmTelaHeranca)
    QryListvendaid: TIntegerField;
    QryListclienteid: TIntegerField;
    QryListnome: TWideStringField;
    QryListdatavenda: TDateTimeField;
    QryListtotalvenda: TFloatField;
    lkpproduto: TDBLookupComboBox;
    edtdatavenda: TDateEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    edtvalorvenda: TCurrencyEdit;
    Label1: TLabel;
    lkpcliente: TDBLookupComboBox;
    edtvalorunit: TCurrencyEdit;
    Label2: TLabel;
    edtquantidade: TCurrencyEdit;
    edtvalortotal: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    btnadicionar: TBitBtn;
    btnremover: TBitBtn;
    edt_codigo: TLabeledEdit;
    dbgriditensvenda: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgriditensvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMudarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnadicionarClick(Sender: TObject);
    procedure lkpprodutoExit(Sender: TObject);
    procedure edtquantidadeEnter(Sender: TObject);
    procedure edtvalorunitEnter(Sender: TObject);
    procedure edtvalortotalEnter(Sender: TObject);
    procedure edtquantidadeChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgriditensvendaDblClick(Sender: TObject);
    procedure btnremoverClick(Sender: TObject);
  private
    { Private declarations }
    dtmvenda:Tdtmvendas;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):boolean; override;
    function excluir:Boolean; override;
    function totalizarproduto(valorunitario, quantidade: double): double;
    procedure limparcomponenteitem;
    procedure LimparCds;
    procedure CarregarRegistroSelecionado;
    function TotalizarVenda: Double;
  public
    { Public declarations }
  end;

var
  frmprovendas: Tfrmprovendas;
  oVenda:TVenda;


implementation

{$R *.dfm}

procedure Tfrmprovendas.btnadicionarClick(Sender: TObject);
begin
  inherited;
  if lkpProduto.KeyValue=Null then
  begin
     MessageDlg('Produto é um campo obrigatório' ,mtInformation,[mbOK],0);
     lkpProduto.SetFocus;
     abort;
  end;

  if edtValorUnit.value<=0 then
  begin
     MessageDlg('Valor Unitário não pode ser Zero' ,mtInformation,[mbOK],0);
     edtValorUnit.SetFocus;
     abort;
  end;

  if edtQuantidade.value<=0 then
  begin
     MessageDlg('Quantidade não pode ser Zero' ,mtInformation,[mbOK],0);
     edtQuantidade.SetFocus;
     abort;
  end;

  if dtmVendas.cdsItensVenda.Locate('produtoId', lkpProduto.KeyValue, []) then
  begin
     MessageDlg('Este Produto já foi selecionado' ,mtInformation,[mbOK],0);
     lkpProduto.SetFocus;
     abort;
  end;

  edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
  dtmVendas.cdsItensVenda.Append;
  dtmVendas.cdsItensVenda.FieldByName('produtoid').AsString:= lkpproduto.KeyValue;
  dtmVendas.cdsItensVenda.FieldByName('nome').AsString:= dtmvendas.QryProdutos.FieldByName('nome').AsString;
  dtmVendas.cdsItensVenda.FieldByName('quantidade').AsFloat:= edtquantidade.Value;
  dtmVendas.cdsItensVenda.FieldByName('valorunit').AsFloat:= edtvalorunit.Value;
  dtmVendas.cdsItensVenda.FieldByName('valortotalproduto').AsFloat:= edtvalortotal.Value;
  dtmVendas.cdsItensVenda.Post;
  lkpProduto.SetFocus;
  edtvalorvenda.Value:=TotalizarVenda;
  limparcomponenteitem;

end;

procedure tfrmprovendas.limparcomponenteitem;
begin
lkpProduto.KeyValue   := null;
  edtQuantidade.Value   := 0;
  edtValorUnit.Value:= 0;
  edtvalorTotal.Value := 0;
end;

procedure TfrmProVendas.LimparCds;
begin
  dtmVendas.cdsItensVenda.First;
  while not dtmVendas.cdsItensVenda.Eof do
    dtmVendas.cdsItensVenda.Delete;
end;

function Tfrmprovendas.totalizarproduto (valorunitario, quantidade:double):double;
begin
  result :=valorUnitario * Quantidade;
end;


procedure Tfrmprovendas.btnCancelarClick(Sender: TObject);
begin
  inherited;
 LimparCds;
end;

procedure Tfrmprovendas.btnMudarClick(Sender: TObject);
begin
  if oVenda.Selecionar(QryList.FieldByName('vendaId').AsInteger, dtmvendas.cdsitensvenda) then begin
     edt_codigo.Text     :=IntToStr(oVenda.VendaId);
     lkpCliente.KeyValue :=oVenda.ClienteId;
     edtDataVenda.Date   :=oVenda.DataVenda;
     edtValorvenda.Value :=oVenda.TotalVenda;
  end

  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

procedure Tfrmprovendas.btnnovoClick(Sender: TObject);
begin
  inherited;
  edtDatavenda.Date:=Date;
  lkpcliente.SetFocus;
  LimparCds;
end;

procedure Tfrmprovendas.btnremoverClick(Sender: TObject);
begin
  inherited;
if lkpProduto.KeyValue=Null then
  begin
     MessageDlg('Selecione o Produto a ser excluído' ,mtInformation,[mbOK],0);
     dbgridItensVenda.SetFocus;
     abort;
  end;

if dtmVendas.cdsItensVenda.Locate('produtoId', lkpProduto.KeyValue, []) then
  begin
     dtmVendas.cdsItensVenda.Delete;
     edtvalorvenda.Value:=TotalizarVenda;
     LimparComponenteItem;
  end;
end;

procedure Tfrmprovendas.btnSalvarClick(Sender: TObject);
begin
  inherited;
LimparCds;
end;

procedure TfrmProVendas.CarregarRegistroSelecionado;
begin
  lkpProduto.KeyValue   := dtmVendas.cdsItensVenda.FieldByName('produtoId').AsString;
  edtQuantidade.Value   := dtmVendas.cdsItensVenda.FieldByName('quantidade').AsFloat;
  edtValorUnit.Value    := dtmVendas.cdsItensVenda.FieldByName('valorUnit').AsFloat;
  edtvalorTotal.Value   := dtmVendas.cdsItensVenda.FieldByName('valorTotalProduto').AsFloat;
end;

procedure Tfrmprovendas.dbgriditensvendaDblClick(Sender: TObject);
begin
  inherited;
  CarregarRegistroSelecionado;
end;

procedure Tfrmprovendas.dbgriditensvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
bloqueiactrldelgrid(key,shift);
end;

procedure Tfrmprovendas.edtquantidadeChange(Sender: TObject);
begin
  inherited;
edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
end;

procedure Tfrmprovendas.edtquantidadeEnter(Sender: TObject);
begin
  inherited;
edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
end;

procedure Tfrmprovendas.edtvalortotalEnter(Sender: TObject);
begin
  inherited;
edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
end;

procedure Tfrmprovendas.edtvalorunitEnter(Sender: TObject);
begin
  inherited;
edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
end;

function Tfrmprovendas.excluir: Boolean;
begin
if oVenda.Selecionar(QryList.FieldByName('vendaId').AsInteger, dtmvendas.cdsitensvenda)then
  begin
     Result:=oVenda.Apagar;
  end;

end;

procedure Tfrmprovendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(dtmvendas) then
  begin
    freeandnil(dtmvendas);
  end;

  if Assigned(oVenda) then
     FreeAndNil(oVenda);
end;

procedure Tfrmprovendas.FormCreate(Sender: TObject);
begin
  inherited;
  dtmvendas:=Tdtmvendas.Create(self);
  oVenda:=TVenda.Create(dtmconect.ConectDB);
  IndiceAtual:='clienteid';
end;

procedure Tfrmprovendas.FormShow(Sender: TObject);
begin
  inherited;
  dbgriditensvenda.DataSource := dtmvendas.dtsitensvenda;
  lkpproduto.ListSource := dtmvendas.dtsprodutos;
end;

function Tfrmprovendas.Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean;
begin
 if edt_codigo.Text<>EmptyStr then
     oVenda.VendaId:=StrToInt(edt_codigo.Text)
  else
     oVenda.VendaId:=0;

  oVenda.ClienteId        :=lkpCliente.KeyValue;
  oVenda.DataVenda        :=edtDataVenda.Date;
  oVenda.TotalVenda       :=edtvalorvenda.Value;

  if (EstadoDoCadastro=ecNovo) then
  result:= ovenda.Inserir (dtmvendas.cdsitensvenda)
  else if (EstadoDoCadastro=ecAlterar) then
     result:=ovenda.Atualizar(dtmvendas.cdsitensvenda);
end;

function TfrmProVendas.TotalizarVenda:Double;
begin
  result:=0;
  dtmVendas.cdsItensVenda.First;
  while not dtmVendas.cdsItensVenda.Eof do
  begin
    result := result + dtmVendas.cdsItensVenda.FieldByName('valorTotalProduto').AsFloat;
    dtmVendas.cdsItensVenda.Next;
  end;
end;

procedure Tfrmprovendas.lkpprodutoExit(Sender: TObject);
begin
  inherited;
   if TDBLookupComboBox(sender).KeyValue<>Null then
  begin
    edtValorUnit.Value:= dtmVendas.QryProdutos.FieldByName('valor').AsFloat;
    edtQuantidade.Value:=1;
    edtvalorTotal.Value:=TotalizarProduto(edtValorUnit.Value, edtQuantidade.Value);
  end;
end;

end.
