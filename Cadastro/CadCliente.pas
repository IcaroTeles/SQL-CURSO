unit CadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit,cCadClientes, uenum, DTMConexão;

type
  TfrmCadCliente = class(TfrmTelaHeranca)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtendereco: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtemail: TLabeledEdit;
    edtbairro: TLabeledEdit;
    edtestado: TLabeledEdit;
    edtcep: TMaskEdit;
    edttelefone: TMaskEdit;
    edtdata: TDateEdit;
    QryListendereco: TWideStringField;
    QryListcidade: TWideStringField;
    QryListbairro: TWideStringField;
    QryListestado: TWideStringField;
    QryListcep: TWideStringField;
    QryListtelefone: TWideStringField;
    QryListemail: TWideStringField;
    QryListdatanascimento: TDateTimeField;
    QryListclienteid: TIntegerField;
    QryListnome: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnMudarClick(Sender: TObject);
  private
    { Private declarations }
     oCliente:TCliente;
    function excluir:Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}
{ TfrmCadCliente }

{$region 'Override'}

procedure TfrmCadCliente.btnMudarClick(Sender: TObject);
begin
if oCliente.Selecionar(QryList.FieldByName('clienteId').AsInteger) then
  begin
     edt_codigo.Text:=IntToStr(oCliente.codigo);
     edt_descricao.Text     :=oCliente.nome;
     edtCEP.Text      :=oCliente.cep;
     edtEndereco.Text :=oCliente.endereco;
     edtBairro.Text   :=oCliente.bairro;
     edtCidade.Text   :=oCliente.cidade;
     edtTelefone.Text :=oCliente.telefone;
     edtEmail.Text    :=oCliente.email;
     edtData.Date:=oCliente.dataNascimento;

  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;
end;

procedure TfrmCadCliente.btnnovoClick(Sender: TObject);
begin
  inherited;
  edtData.Date:=Date;
  edt_descricao.SetFocus;
end;

function TfrmCadCliente.excluir: Boolean;
begin
  if oCliente.Selecionar(QryList.FieldByName('clienteId').AsInteger) then begin
     Result:=oCliente.Apagar;
  end;
end;

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  inherited;
  ocliente:= Tcliente.Create(dtmconect.ConectDB);
  indiceatual:= 'nome';
end;

function TfrmCadCliente.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if edt_codigo.Text<>EmptyStr then
     oCliente.codigo:=StrToInt(edt_codigo.Text)
  else
     oCliente.codigo:=0;

  oCliente.nome           :=edt_descricao.Text;
  oCliente.cep            :=edtCEP.Text;
  oCliente.endereco       :=edtEndereco.Text;
  oCliente.bairro         :=edtBairro.Text;
  oCliente.cidade         :=edtCidade.Text;
  oCliente.telefone       :=edtTelefone.Text;
  oCliente.email          :=edtEmail.Text;
  oCliente.dataNascimento :=edtData.Date;

  if (EstadoDoCadastro=ecNovo) then
     Result:=oCliente.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
     Result:=oCliente.Atualizar;
end;
{$endregion}
end.
