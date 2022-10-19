unit ufrmatualizadb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrmatualizadb = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    chkconexao: TCheckBox;
    chkcategoria: TCheckBox;
    chkclientes: TCheckBox;
    chkprodutos: TCheckBox;
    chkvendas: TCheckBox;
    chkitens: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmatualizadb: Tfrmatualizadb;

implementation

{$R *.dfm}

end.
