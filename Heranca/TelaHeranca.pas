unit TelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, DTMConexão, uEnum, rxcurredit,
  rxtooledit;

type
  TfrmTelaHeranca = class(TForm)
    pgc_1: TPageControl;
    pnl_1: TPanel;
    tabManu: TTabSheet;
    tabList: TTabSheet;
    pnl_listop: TPanel;
    GridList: TDBGrid;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    dbnavega: TDBNavigator;
    QryList: TZQuery;
    DataList: TDataSource;
    btnnovo: TBitBtn;
    btnMudar: TBitBtn;
    lb_indice: TLabel;
    mskpesquisar: TMaskEdit;
    btnpesq: TBitBtn;
    edt_descricao: TLabeledEdit;
    edt_codigo: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnMudarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridListTitleClick(Column: TColumn);
    procedure mskpesquisarChange(Sender: TObject);
    procedure GridListDblClick(Sender: TObject);

  private
    procedure ControlarBtn (btnnovo, btnMudar, btncancelar, btnsalvar,
    btnapagar : TBitBtn; dbnavega : TDBNavigator; pgc_1 : TpageControl; Flag: Boolean);
    procedure Controlarindicetab(pgc_1: TpageControl; i: integer);
    function RetornarCampoTraduzido(campo: string): string;
    procedure ExibirLabelIndice(campo: string; aLabel: TLabel);
    function ExisteCampoObrigatorio: boolean;
    procedure DesabilitarEditPK;
    procedure Limparedits;
    { Private declarations }

  public
    { Public declarations }
    IndiceAtual: String;
    EstadodoCadastro: TEstadoDoCadastro;
    function excluir:boolean; virtual;
    function gravar (EstadodoCadastro: TEstadoDoCadastro):boolean; virtual;
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

{$region 'Botões'}
procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
  try
    if excluir then
    begin
      controlarbtn (btnnovo, btnMudar, btncancelar,
      btnsalvar, btnapagar, dbnavega, pgc_1,true);
      controlarindicetab (pgc_1, 1);
      limparedits;
      qrylist.Refresh;
    end
    else
    begin
      messagedlg ('erro na exclusão', mterror, [mbok], 0);
    end;
  finally
    EstadodoCadastro:= ecNada;
  end;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  controlarbtn (btnnovo, btnMudar, btncancelar,
  btnsalvar, btnapagar, dbnavega, pgc_1,true);
  controlarindicetab (pgc_1, 1);
  EstadodoCadastro:= ecNada;
  limparedits;
end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.btnMudarClick(Sender: TObject);
begin
controlarbtn (btnnovo, btnMudar, btncancelar, btnsalvar, btnapagar, dbnavega, pgc_1,
              false);
 EstadodoCadastro:= ecAlterar;
end;

procedure TfrmTelaHeranca.btnSalvarClick(Sender: TObject);
begin
  if ExisteCampoObrigatorio then
    Abort;

    try
       if gravar (estadodocadastro) then
     begin
        controlarbtn (btnnovo, btnMudar, btncancelar, btnsalvar,
        btnapagar, dbnavega, pgc_1,true);
        controlarindicetab (pgc_1, 0);
        EstadoDoCadastro := ecnada;
        limparedits;
        qrylist.Refresh;
     end
     else
     begin
        messagedlg ('erro na gravação', mtwarning, [mbok], 0);
     end;
   finally
  end;
end;

procedure TfrmTelaHeranca.btnnovoClick(Sender: TObject);
begin
  controlarbtn (btnnovo, btnMudar, btncancelar, btnsalvar, btnapagar,
  dbnavega, pgc_1,false);
  EstadodoCadastro:= ecNovo;
  limparedits;
end;
{$endregion}

{$region 'Formulário'}
procedure TfrmTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Qrylist.close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  QryList.Connection:= dtmConect.ConectDB;
  DataList.DataSet := QryList;
  Gridlist.DataSource := Datalist;
  GridList.Options:= [dgTitles,dgIndicator,dgColumnResize,
                     dgColLines,dgRowLines,dgTabs,dgRowSelect,
                     dgAlwaysShowSelection,dgCancelOnExit,dgTitleClick,
                     dgTitleHotTrack];
end;

procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  if (Qrylist.sql.Text<>'') then
  begin
     qrylist.IndexFieldNames:= Indiceatual;
     Exibirlabelindice(indiceatual, lb_indice);
     Qrylist.Open;
  end;
  controlarindicetab (pgc_1, 1);
  DesabilitarEditPK;
  controlarbtn (btnnovo, btnMudar, btncancelar, btnsalvar, btnapagar, dbnavega, pgc_1,
              true);
end;

{$endregion}

{$region 'Outros'}
procedure TfrmTelaHeranca.GridListDblClick(Sender: TObject);
begin
  btnMudar.Click;
end;

procedure TfrmTelaHeranca.GridListTitleClick(Column: TColumn);
begin
  IndiceAtual := Column.FieldName;
  QryList.IndexFieldNames:= IndiceAtual;
  Exibirlabelindice(indiceatual, lb_indice);
end;

procedure TfrmTelaHeranca.mskpesquisarChange(Sender: TObject);
begin
  qrylist.Locate(indiceatual, Tmaskedit(sender).Text, [lopartialkey]);
end;

{$endregion}

{$region 'procedures e funções'}

function TfrmTelaHeranca.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if (EstadoDoCadastro = ecnovo) then
    ShowMessage('Inserido')
  else if (EstadoDoCadastro = ecAlterar) then
    ShowMessage('Gravado');
  Result := True;
end;

procedure TfrmTelaHeranca.ControlarBtn (btnnovo, btnMudar, btncancelar, btnsalvar,
btnapagar : TBitBtn; dbnavega : TDBNavigator; pgc_1 : TpageControl; Flag: Boolean);
begin
  btnnovo.Enabled := flag;
  btnMudar.enabled := flag;
  btncancelar.enabled := not flag;
  btnapagar.enabled := flag;
  dbnavega.enabled := flag;
  pgc_1.pages[1].TabVisible := flag;
  btnsalvar.enabled := not flag;
end;

procedure TfrmTelaHeranca.Controlarindicetab (pgc_1 : TpageControl; i: integer);
    begin
     if (pgc_1.Pages[i].TabVisible) then
     pgc_1.TabIndex:= i;

    end;

function TfrmTelaHeranca.excluir: boolean;
begin
   showmessage ('Deletado');
   result := True;
end;

function TfrmTelaHeranca.RetornarCampoTraduzido (campo:string): string;
begin
   var i:integer;
   for I := 0 to qrylist.fields.Count -1 do
   begin
     if lowercase (qrylist.Fields[i].FieldName)=lowercase (campo) then
     begin
       result := qrylist.Fields[i].DisplayLabel;
       break;
     end;

   end;

end;

procedure TfrmTelaHeranca.ExibirLabelIndice (campo: string; aLabel: TLabel);
begin
  aLabel.Caption:= Retornarcampotraduzido (campo);
end;

function TfrmTelaHeranca.ExisteCampoObrigatorio: boolean;
var
  i:integer;
begin
result:= false;
  for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TLabeledEdit) then
      begin
        if (TLabeledEdit(Components[i]).Tag=2)  and
        (TLabeledEdit(Components[i]).Text=EmptyStr) then
        begin
          MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption + ' é um campo obrigatório', mtInformation, [mbOK],0);
          TLabeledEdit(Components[i]).SetFocus;
          Result:=true;
          break
        end;
      end;
    end;
end;

procedure TfrmTelaHeranca.DesabilitarEditPK;
var i:integer;
begin
  for i := 0 to ComponentCount -1 do
    begin
      if (Components[i] is TLabeledEdit) then
      begin
        if (TLabeledEdit(Components[i]).Tag=1) then
        begin
           TLabeledEdit(Components[i]).Enabled := false;
           break;
        end;
      end;
      end;
end;

procedure TfrmTelaHeranca.Limparedits;
var
  x:integer;
begin
  for x := 0 to ComponentCount -1 do
    begin
      if (Components[x] is TLabeledEdit) then
      begin
        begin
         TLabeledEdit(Components[x]).Text:= EmptyStr;
        end;
      end
      else if (Components[x] is TMemo) then
      begin
        begin
         TMemo(Components[x]).Text:= EmptyStr;
        end;
      end
      else if (Components[x] is TDBLookupComboBox) then
      begin
        begin
         TDBLookupComboBox(Components[x]).KeyValue:= Null;
        end;
      end
      else if (Components[x] is TCurrencyEdit) then
      begin
        begin
         TCurrencyEdit(Components[x]).Value:= 0;
        end;
      end
      else if (Components[x] is TDateEdit) then
      begin
        begin
         TDateEdit(Components[x]).Date:=0;
        end;
      end
      else if (Components[x] is TMaskEdit) then
      begin
        begin
         TMaskEdit(Components[x]).Text:= EmptyStr;
        end;
      end;
    end;
  end;
{$endregion}
end.
