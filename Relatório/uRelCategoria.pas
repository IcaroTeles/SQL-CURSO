unit uRelCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelcategoria = class(TForm)
    qrycategorias: TZQuery;
    dtscategorias: TDataSource;
    qrycategoriascategoriaid: TIntegerField;
    qrycategoriasdescricao: TWideStringField;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelcategoria: Tfrmrelcategoria;

implementation

{$R *.dfm}

procedure Tfrmrelcategoria.FormCreate(Sender: TObject);
begin
 qrycategorias.Open;
end;

procedure Tfrmrelcategoria.FormDestroy(Sender: TObject);
begin
 qrycategorias.Close;
end;

end.
