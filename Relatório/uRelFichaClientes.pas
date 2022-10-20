unit uRelFichaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport, RLFilters, RLPDFFilter;

type
  Tfrmrelclientesficha = class(TForm)
    qryclientesficha: TZQuery;
    dtsclientesficha: TDataSource;
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
    qryclientesfichaclienteId: TIntegerField;
    qryclientesfichaNome: TWideStringField;
    qryclientesfichaemail: TWideStringField;
    qryclientesfichatelefone: TWideStringField;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw3: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelclientesficha: Tfrmrelclientesficha;

implementation

{$R *.dfm}

procedure Tfrmrelclientesficha.FormCreate(Sender: TObject);
begin
 qryclientesficha.Open;
end;

procedure Tfrmrelclientesficha.FormDestroy(Sender: TObject);
begin
 qryclientesficha.Close;
end;

end.
