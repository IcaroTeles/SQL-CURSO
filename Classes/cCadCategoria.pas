unit cCadCategoria;

interface

uses system.Classes,
     Vcl.Extctrls,
     Vcl.Dialogs,
     Vcl.Controls,
     ZAbstractConnection,
     ZConnection;

type
TCategoria = class
private
conectDB: TZConnection;
F_categoriaid: integer;
f_descricao:string;
    function getcodigo: integer;
    function getdescricao: string;
    procedure setcodigo(const Value: integer);
    procedure setdescicao(const Value: string);

public
constructor Create (aconexao:TZConnection);
destructor Destroy; override;
function Gravar:boolean;
function Atualizar:boolean;
function Apagar:boolean;
function Selecionar (id:integer):boolean;

published
property codigo:integer read getcodigo write setcodigo;
property descricao:string read getdescricao write setdescicao;
end;

implementation
   {Tcategoria}

{$region 'cruds'}
function TCategoria.Apagar: boolean;
begin
  showmessage ('apagado');
  result := true
end;

function TCategoria.Atualizar: boolean;
begin
   showmessage ('atualizado');
  result := true
end;

function TCategoria.Gravar: boolean;
begin
    showmessage ('gravado');
  result := true
end;

function TCategoria.Selecionar(id: integer): boolean;
begin
   result:= true;
end;
{$endregion}

{$region 'create/destroy + get set'}
constructor TCategoria.Create (aconexao:TZConnection);
begin
  conectDB:= aconexao;
end;

destructor TCategoria.Destroy;
begin
  inherited;
end;
function TCategoria.getcodigo: integer;
begin
 Result := self.F_categoriaid;
end;

function TCategoria.getdescricao: string;
begin
  Result := self.f_descricao;
end;

procedure TCategoria.setcodigo(const Value: integer);
begin
   self.F_categoriaid := value;
end;

procedure TCategoria.setdescicao(const Value: string);
begin
   self.f_descricao := value;
end;
{$endregion}
end.
