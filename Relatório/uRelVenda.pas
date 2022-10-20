unit uRelVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelvenda = class(TForm)
    dtsvendas: TDataSource;
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
    QryVendaItens: TZQuery;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    dtsVendasItens: TDataSource;
    QryVendas: TZQuery;
    QryVendaItensvendaId: TIntegerField;
    QryVendaItensprodutoId: TIntegerField;
    QryVendaItensNome: TWideStringField;
    QryVendaItensquantidade: TFloatField;
    QryVendaItensvalorUnitario: TFloatField;
    QryVendaItenstotalProduto: TFloatField;
    QryVendasvendaId: TIntegerField;
    QryVendasclienteId: TIntegerField;
    QryVendasnome: TWideStringField;
    QryVendasdataVenda: TDateTimeField;
    QryVendastotalVenda: TFloatField;
    RLLabel6: TRLLabel;
    RLDBResult1: TRLDBResult;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelvenda: Tfrmrelvenda;

implementation

{$R *.dfm}

procedure Tfrmrelvenda.FormDestroy(Sender: TObject);
begin
 qryvendas.Close;
 qryvendaitens.Close;
end;

end.
