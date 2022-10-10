unit CadCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset,
   ZDataset, Vcl.DBCtrls, Vcl.Grids, cCadCategoria,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, uenum, DTMConexão;

type
  TfrmCadCategoria = class(TfrmTelaHeranca)
    QryListcategoriaID: TIntegerField;
    QryListdescricao: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    oCategoria: TCategoria;
    function excluir:boolean; override;
    function gravar (EstadodoCadastro: TEstadoDoCadastro):boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadCategoria: TfrmCadCategoria;

implementation

{$R *.dfm}


procedure TfrmCadCategoria.btnSalvarClick(Sender: TObject);
begin
  oCategoria.codigo:= 100;
  oCategoria.descricao:= ('teste');
  showmessage (oCategoria.descricao);
  inherited;
end;

procedure TfrmCadCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned (oCategoria) then
  Freeandnil (ocategoria);

end;

procedure TfrmCadCategoria.FormCreate(Sender: TObject);
begin
  inherited;
oCategoria:= TCategoria.Create(dtmConect.ConectDB);
indiceatual:= 'descricao';
end;
  {$region 'Override'}
function TfrmCadCategoria.excluir: boolean;
begin
   result:= ocategoria.Apagar;
end;

function TfrmCadCategoria.gravar(EstadodoCadastro: TEstadoDoCadastro): boolean;
begin
  if (estadodocadastro=ecNovo) then
      result:= ocategoria.Gravar
  else
  if (estadodocadastro=ecAlterar) then
      result:= ocategoria.Atualizar;
end;
{$endregion}
end.
