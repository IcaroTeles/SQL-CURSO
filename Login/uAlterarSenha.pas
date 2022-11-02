unit uAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
   cUsuario, DTMConexão,cUsuarioLogado, SQLProj;

type
  Tfrmalterarsenha = class(TForm)
    edtsenhaatual: TLabeledEdit;
    edtsenhanova: TLabeledEdit;
    edtrepetirnovasenha: TLabeledEdit;
    btnfechar: TButton;
    btnalterarsenha: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnalterarsenhaClick(Sender: TObject);
  private
    procedure LimparEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmalterarsenha: Tfrmalterarsenha;

implementation

{$R *.dfm}

procedure Tfrmalterarsenha.btnalterarsenhaClick(Sender: TObject);
Var oUsuario:TUsuario;
begin
  if (edtSenhaAtual.Text=oUsuarioLogado.senha) then
  begin
    if (edtSenhaNova.Text=edtRepetirNovaSenha.Text) then
    begin
      try
        oUsuario:=TUsuario.Create(Dtmconect.ConectDB);
        oUsuario.codigo := oUsuarioLogado.codigo;
        oUsuario.senha  := edtSenhaNova.Text;
        oUsuario.AlterarSenha;
        oUsuarioLogado.senha := edtSenhaNova.Text;
        MessageDlg('Senha Alterada',MtInformation,[mbok],0);
        LimparEdits;
      finally
        FreeAndNil(oUsuario);
      end;
    end
    else
    begin
      MessageDlg('Senhas digitadas não coincidem,',mtinformation,[mbok],0);
      edtSenhaNova.SetFocus;
    end;

  end
  else
  begin
    MessageDlg('Senha Atual está inválida',mtinformation,[mbok],0);
  end;
end;

procedure Tfrmalterarsenha.btnfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmalterarsenha.FormShow(Sender: TObject);
begin
  LimparEdits;
end;

procedure TfrmAlterarSenha.LimparEdits;
begin
  edtsenhaatual.Clear;
  edtSenhaNova.Clear;
  edtRepetirNovaSenha.Clear;
end;


end.
