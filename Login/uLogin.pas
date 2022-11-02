unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cUsuario, dtmconexão;

type
  Tfrmlogin = class(TForm)
    edtusuario: TLabeledEdit;
    edtsenha: TLabeledEdit;
    btnacessar: TButton;
    btnfechar: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnacessarClick(Sender: TObject);
  private
    { Private declarations }
    bFechar:Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
  public
    { Public declarations }
  end;

var
  frmlogin: Tfrmlogin;

implementation

uses SQLProj;

{$R *.dfm}

procedure Tfrmlogin.btnacessarClick(Sender: TObject);
var oUsuario:TUsuario;
begin
  Try
    oUsuario:=TUsuario.Create(dtmconect.ConectDB);
    if oUsuario.Logar(edtUsuario.Text,edtSenha.Text) then begin
       oUsuarioLogado.codigo := oUsuario.codigo;
       oUsuarioLogado.nome   := oUsuario.nome;
       oUsuarioLogado.senha  := oUsuario.senha;

       FecharFormulario //Fecha o Formulario do Login
    end
    else begin
      MessageDlg('Usuário Inválido',mtInformation,[mbok],0);
      edtUsuario.SetFocus;
    end;

  Finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  End;
end;

procedure Tfrmlogin.btnfecharClick(Sender: TObject);
begin
  FecharAplicacao;
end;

procedure TfrmLogin.FecharAplicacao;
begin
  bFechar := true;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFechar := true;
  Close;
end;

procedure Tfrmlogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=bFechar;
end;

procedure Tfrmlogin.FormShow(Sender: TObject);
begin
  bFechar:=false;
end;

end.
