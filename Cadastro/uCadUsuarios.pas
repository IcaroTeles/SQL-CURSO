unit uCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, uenum, cusuario, dtmconexão;

type
  Tfrmcadusuario = class(TfrmTelaHeranca)
    edtusuarioid: TLabeledEdit;
    edtnome: TLabeledEdit;
    edtsenha: TLabeledEdit;
    QryListusuarioid: TIntegerField;
    QryListnome: TWideStringField;
    QryListsenha: TWideStringField;
    procedure btnMudarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    oUsuario:TUsuario;
    function excluir: Boolean; override;
    function Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadusuario: Tfrmcadusuario;

implementation

{$R *.dfm}

{ Tfrmcadusuario }

procedure Tfrmcadusuario.btnMudarClick(Sender: TObject);
begin
if oUsuario.Selecionar(QryList.FieldByName('usuarioID').AsInteger) then
  begin
     edtUsuarioId.Text:=IntToStr(oUsuario.codigo);
     edtNome.Text     :=oUsuario.nome;
     edtSenha.Text    :=oUsuario.senha;
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;
end;

procedure Tfrmcadusuario.btnnovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure Tfrmcadusuario.btnSalvarClick(Sender: TObject);
begin
  if oUsuario.UsuarioExiste(edtNome.Text) then
  begin
    MessageDlg('Usuário já cadastrado', mtInformation, [mbok],0);
    edtNome.SetFocus;
    abort;
  end;

  if edtUsuarioId.Text<>EmptyStr then
     oUsuario.codigo:=StrToInt(edtUsuarioId.Text)
  else
     oUsuario.codigo:=0;

  oUsuario.nome :=edtNome.Text;
  oUsuario.senha:=edtSenha.Text;

  inherited;
end;

function Tfrmcadusuario.excluir: Boolean;
  begin
    if oUsuario.Selecionar(QryList.FieldByName('usuarioID').AsInteger) then begin
     Result:=oUsuario.Apagar;
    end;
  end;

procedure Tfrmcadusuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    if Assigned(oUsuario) then
     FreeAndNil(oUsuario);
end;

procedure Tfrmcadusuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuario:=TUsuario.Create(dtmconect.ConectDB);
  IndiceAtual:='nome';
end;

function Tfrmcadusuario.Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean;
  begin
    if EstadoDoCadastro=ecnovo then
     Result:= oUsuario.Inserir
    else if EstadoDoCadastro=ecAlterar then
     Result:= oUsuario.Atualizar;
  end;

end.
