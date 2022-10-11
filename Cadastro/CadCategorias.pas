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
    procedure btnMudarClick(Sender: TObject);
    procedure GridListDblClick(Sender: TObject);
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
procedure TfrmCadCategoria.btnMudarClick(Sender: TObject);
begin
  if oCategoria.Selecionar(qrylist.FieldByName('categoriaid').AsInteger) then
  begin
    edt_codigo.Text:=IntToStr(oCategoria.codigo);
    edt_descricao.Text:=oCategoria.descricao;
  end
  else
  begin
      btncancelar.Click;
      abort;
  end;
  inherited;
end;

function TfrmCadCategoria.excluir: boolean;
begin
  if oCategoria.Selecionar(qrylist.FieldByName('categoriaid').AsInteger) then
   result:= oCategoria.Apagar;
end;

function TfrmCadCategoria.gravar(EstadodoCadastro: TEstadoDoCadastro): boolean;
begin
  if (edt_codigo.Text<>EmptyStr) then
  ocategoria.codigo:= StrToInt(edt_codigo.Text)
  else
  ocategoria.codigo:=0;
  ocategoria.descricao:= edt_descricao.Text;
  if (estadodocadastro=ecNovo) then
      result:= ocategoria.Inserir
  else
  if (estadodocadastro=ecAlterar) then
      result:= ocategoria.Atualizar;
end;
procedure TfrmCadCategoria.GridListDblClick(Sender: TObject);
begin
  inherited;

end;

{$endregion}
end.
