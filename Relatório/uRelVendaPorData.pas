unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelvendapordata = class(TForm)
    qryvendas: TZQuery;
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
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw3: TRLDraw;
    qryvendasvendaId: TIntegerField;
    qryvendasclienteId: TIntegerField;
    qryvendasnome: TWideStringField;
    qryvendasdataVenda: TDateTimeField;
    qryvendastotalVenda: TFloatField;
    RLLabel4: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelvendapordata: Tfrmrelvendapordata;

implementation

{$R *.dfm}

procedure Tfrmrelvendapordata.FormDestroy(Sender: TObject);
begin
 qryvendas.Close;
end;

end.
