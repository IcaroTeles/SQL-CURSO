unit SQLProj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Enter;

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
    procedure menuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: Tmrenter;
  public
    { Public declarations }
  end;

var
  formMenu: TformMenu;

implementation

{$R *.dfm}

uses DTMConexão, CadCategorias;

procedure TformMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Freeandnil (teclaenter);
    freeandnil (dtmConect);
end;

procedure TformMenu.FormCreate(Sender: TObject);
begin
  dtmConect := TdtmConect.create(nil);
  with dtmConect.ConectDB do
  begin
    SQLHourGlass:= True;
    Protocol:= 'mssql';
    LibraryLocation:= 'D:\Projetos\Cursos\SQL-CURSO\ntwdblib.dll';
    HostName:= '.\SQLEXPRESS';
    Port:= 1433;
  end;

  TeclaEnter:= Tmrenter.create (self);
  teclaenter.FocusEnabled:= true;
  teclaenter.FocusColor:=clinfobk;
end;

procedure TformMenu.menuFecharClick(Sender: TObject);
begin
close;
end;

procedure TformMenu.PRODUTO1Click(Sender: TObject);
begin
  frmCadCategoria:= TfrmCadCategoria.Create (self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

end.
