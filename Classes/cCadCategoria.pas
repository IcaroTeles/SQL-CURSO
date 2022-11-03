unit cCadCategoria;

interface

uses system.Classes,
     Vcl.Extctrls,
     Vcl.Dialogs,
     Vcl.Controls,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.SysUtils;

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
function Inserir:boolean;
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
var Qry:TZquery;
begin
    if messagedlg ('apagar o registo: '+#13+#13+
                   'código: '+inttostr(f_categoriaid)+#13+
                   'descricao: '+(f_descricao),mtconfirmation,[mbYes, mbNo],0)=mrNo
    then
    begin
      result:=false;
      abort;
    end;


    try
    Result:= true;
    Qry:= Tzquery.Create(nil);
    Qry.Connection:= conectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add( ' DELETE FROM categorias ' +
                 ' WHERE categoriaid=:categoriaid');
    qry.ParamByName('categoriaid').AsInteger:= f_categoriaid;
    try
      ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    end;
  finally
    if Assigned (Qry) then
       FreeAndNil (Qry)
  end;
end;

function TCategoria.Atualizar: boolean;
var Qry:TZquery;
begin
  try
    Result:= true;
    Qry:= Tzquery.Create(nil);
    Qry.Connection:= conectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add( ' UPDATE categorias ' +
                 ' SET descricao =:descricao ' +
                 ' WHERE  categoriaid=:categoriaid ');
    qry.ParamByName('descricao').AsString:= self.F_descricao;
    qry.ParamByName('categoriaid').AsInteger:= self.F_categoriaid;
    try
      ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    end;
  finally
    if Assigned (Qry) then
       FreeAndNil (Qry)
  end;
end;

function TCategoria.Inserir: boolean;
var Qry:TZquery;
begin
  try
    Result:= true;
    Qry:= Tzquery.Create(nil);
    Qry.Connection:= conectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('Insert into categorias (descricao) values (:descricao)');
    Qry.ParamByName('descricao').AsString:= self.f_descricao;
    try
       ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    end;
  finally
    if Assigned (Qry) then
       FreeAndNil (Qry)
  end;
end;

function TCategoria.Selecionar(id: integer): boolean;
var Qry:TZquery;
begin
  try
    Result:= true;
    Qry:= Tzquery.Create(nil);
    Qry.Connection:= conectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add( 'SELECT categoriaid, ' +
                 '          descricao ' +
                 '   FROM   categorias' +
                 ' WHERE  categoriaid=:categoriaid');
    Qry.ParamByName('categoriaid').AsInteger:= id;
    try
      Qry.Open;

      self.F_categoriaid:=qry.FieldByName('categoriaid').AsInteger;
      self.F_descricao  :=qry.FieldByName('descricao').Asstring;
    except
      result:=false;
    end;
  finally
    if Assigned (Qry) then
       FreeAndNil (Qry)
  end;
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
