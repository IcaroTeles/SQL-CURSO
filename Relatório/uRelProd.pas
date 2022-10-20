unit uRelProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelproduto = class(TForm)
    qryprodutos: TZQuery;
    dtsprodutos: TDataSource;
    Relatorio: TRLReport;
    cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    qryprodutosprodutoId: TIntegerField;
    qryprodutosNome: TWideStringField;
    qryprodutosDescricao: TWideStringField;
    qryprodutosValor: TFloatField;
    qryprodutosQuantidade: TFloatField;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelproduto: Tfrmrelproduto;

implementation

{$R *.dfm}

procedure Tfrmrelproduto.FormCreate(Sender: TObject);
begin
 qryprodutos.Open;
end;

procedure Tfrmrelproduto.FormDestroy(Sender: TObject);
begin
 qryprodutos.Close;
end;

end.
