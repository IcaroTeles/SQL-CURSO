unit DTMConexão;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TdtmConect = class(TDataModule)
    ConectDB: TZConnection;
    qryclientes: TZQuery;
    qryvendas: TZQuery;
    qrycategoria: TZQuery;
    qryprodutos: TZQuery;
    qryitens: TZQuery;
    qryscriptusuarios: TZQuery;
  private
    { Private declarations }
  public

  end;

var
  dtmConect: TdtmConect;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
