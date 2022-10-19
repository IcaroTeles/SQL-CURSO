unit CadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit,uenum,cCadProduto, DTMConexão;

type
  TfrmCadProduto = class(TfrmTelaHeranca)
    QryListprodutoid: TIntegerField;
    QryListnome: TWideStringField;
    QryListdescricao: TWideStringField;
    QryListvalor: TFloatField;
    QryListquantidade: TFloatField;
    QryListcategoriaid: TIntegerField;
    QryListdescricaocategoria: TWideStringField;
    edtdescricao: TMemo;
    lbldescricao: TLabel;
    edtvalor: TCurrencyEdit;
    edtquantidade: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    lkpcategoria: TDBLookupComboBox;
    Label3: TLabel;
    qrycategoria: TZQuery;
    dtscategoria: TDataSource;
    qrycategoriacategoriaid: TIntegerField;
    qrycategoriadescricao: TWideStringField;
    edt_codigo: TLabeledEdit;
    edt_descricao: TLabeledEdit;
    procedure btnMudarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    oProduto:TProduto;
    function excluir:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

{$R *.dfm}

{$region 'Override'}
procedure TfrmCadProduto.btnMudarClick(Sender: TObject);
begin

  if oProduto.Selecionar(QryList.FieldByName('produtoId').AsInteger) then begin
     edt_codigo.Text     :=IntToStr(oProduto.codigo);
     edt_descricao.Text          :=oProduto.nome;
     edtDescricao.Text     :=oProduto.descricao;
     lkpCategoria.KeyValue :=oProduto.categoriaId;
     edtValor.value        :=oProduto.valor;
     edtQuantidade.value   :=oProduto.quantidade;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadProduto.btnnovoClick(Sender: TObject);
begin
  inherited;
  edt_descricao.SetFocus;
end;

function TfrmCadProduto.excluir: Boolean;
begin
  if oProduto.Selecionar(QryList.FieldByName('produtoId').AsInteger) then
  begin
     Result:=oProduto.Apagar;
  end;
end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QryCategoria.Close;
  if Assigned(oProduto) then
     FreeAndNil(oProduto);
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  oProduto:=TProduto.Create(dtmConect.ConectDB);

  IndiceAtual:='nome';
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  QryCategoria.Open;
end;

function TfrmCadProduto.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if edt_codigo.Text<>EmptyStr then
     oProduto.codigo:=StrToInt(edt_codigo.Text)
  else
     oProduto.codigo:=0;

  oProduto.nome           :=edt_descricao.Text;
  oProduto.descricao      :=edtDescricao.Text;
  oProduto.categoriaId    :=lkpCategoria.KeyValue;
  oProduto.valor          :=edtValor.Value;
  oProduto.quantidade     :=edtQuantidade.Value;

  if (EstadoDoCadastro=ecnovo) then
     Result:=oProduto.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=oProduto.Atualizar;
end;

procedure TfrmCadProduto.GridListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
bloqueiactrldelgrid(key,shift);
end;

{$endregion}

end.
