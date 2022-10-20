unit uRelProdCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelprodutocategoria = class(TForm)
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
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    qryprodutosprodutoId: TIntegerField;
    qryprodutosNome: TWideStringField;
    qryprodutosDescricao: TWideStringField;
    qryprodutosValor: TFloatField;
    qryprodutosQuantidade: TFloatField;
    qryprodutoscategoriaId: TIntegerField;
    qryprodutosDescricaoCategoria: TWideStringField;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw3: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelprodutocategoria: Tfrmrelprodutocategoria;

implementation

{$R *.dfm}

procedure Tfrmrelprodutocategoria.FormCreate(Sender: TObject);
begin
 qryprodutos.Open;
end;

procedure Tfrmrelprodutocategoria.FormDestroy(Sender: TObject);
begin
 qryprodutos.Close;
end;

end.
