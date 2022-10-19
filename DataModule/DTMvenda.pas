unit DTMvenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Datasnap.DBClient;

type
  Tdtmvendas = class(TDataModule)
    qrycliente: TZQuery;
    qryclienteclienteid: TIntegerField;
    qryclientenome: TWideStringField;
    qryprodutos: TZQuery;
    qryprodutosprodutoid: TIntegerField;
    qryprodutosnome: TWideStringField;
    qryprodutosvalor: TFloatField;
    qryprodutosquantidade: TFloatField;
    dtsprodutos: TDataSource;
    dtscliente: TDataSource;
    cdsitensvenda: TClientDataSet;
    cdsitensvendaprodutoid: TIntegerField;
    cdsitensvendanome: TStringField;
    cdsitensvendaquantidade: TFloatField;
    cdsitensvendavalorunit: TFloatField;
    cdsitensvendavalortotalproduto: TFloatField;
    cdsitensvendavalortotal: TAggregateField;
    dtsitensvenda: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmvendas: Tdtmvendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdtmvendas.DataModuleCreate(Sender: TObject);
begin
  cdsitensvenda.CreateDataSet;
  qrycliente.Open;
  qryprodutos.open;
end;

procedure Tdtmvendas.DataModuleDestroy(Sender: TObject);
begin
  cdsitensvenda.Close;
  qrycliente.close;
  qryprodutos.close;
end;

end.
