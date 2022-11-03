unit DTMConexão;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TdtmConect = class(TDataModule)
    ConectDB: TZConnection;
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
