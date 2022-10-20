unit uRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelclientes = class(TForm)
    qryclientes: TZQuery;
    dtsclientes: TDataSource;
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
    qryclientesclienteId: TIntegerField;
    qryclientesNome: TWideStringField;
    qryclientesemail: TWideStringField;
    qryclientestelefone: TWideStringField;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelclientes: Tfrmrelclientes;

implementation

{$R *.dfm}

procedure Tfrmrelclientes.FormCreate(Sender: TObject);
begin
 qryclientes.Open;
end;

procedure Tfrmrelclientes.FormDestroy(Sender: TObject);
begin
 qryclientes.Close;
end;

end.
