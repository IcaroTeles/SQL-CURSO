unit cCadClientes;

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
  TCliente = class
  private
    ConectDB:TZConnection;
    F_clienteId:Integer;  //Int
    F_nome:String; //VarChar
    F_endereco: string;
    F_cidade:String;
    F_bairro: String;
    F_estado: string;
    F_cep: String;
    F_telefone: string;
    F_email: string;
    F_genero: string;
    F_racial: string;
    F_dataNascimento: TDateTime;

  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
  published
    property codigo        :Integer    read F_clienteId      write F_clienteId;
    property nome          :string     read F_nome           write F_nome;
    property genero        :string     read F_genero         write F_genero;
    property racial        :string     read F_racial         write F_racial;
    property endereco      :string     read F_endereco       write F_endereco;
    property cidade        :string     read F_cidade         write F_cidade;
    property bairro        :string     read F_bairro         write F_bairro;
    property estado        :string     read F_estado         write F_Estado;
    property cep           :string     read F_cep            write F_Cep;
    property telefone      :string     read F_telefone       write F_telefone;
    property email         :string     read F_email          write F_email;
    property dataNascimento:TDateTime  read F_dataNascimento write F_dataNascimento;
  end;

implementation

{ TCategoria }

{$region 'Constructor and Destructor'}
constructor TCliente.Create(aConexao:TZConnection);
begin
  ConectDB:=aConexao;
end;

destructor TCliente.Destroy;
begin
  inherited;
end;
{$endRegion}

{$region 'CRUD'}
function TCliente.Apagar: Boolean;
var Qry:TZQuery;
begin
  if MessageDlg('Apagar o Registro: '+#13+#13+
                'Código: '+IntToStr(F_clienteId)+#13+
                'Descrição: '+(F_nome),mtConfirmation,[mbYes, mbNo],0)=mrNo then
  begin
     Result:=false;
     abort;
  end;

  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM clientes '+
                ' WHERE clienteId=:clienteId ');
    Qry.ParamByName('clienteId').AsInteger :=F_clienteId;
    Try
       ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TCliente.Atualizar: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE clientes '+
                '   SET nome            =:nome '+
                '       ,endereco       =:endereco '+
                '       ,cidade         =:cidade '+
                '       ,bairro         =:bairro '+
                '       ,estado         =:estado '+
                '       ,racial         =:racial '+
                '       ,genero         =:genero '+
                '       ,cep            =:cep '+
                '       ,telefone       =:telefone '+
                '       ,email          =:email '+
                '       ,dataNascimento =:dataNascimento '+
                ' WHERE clienteId=:clienteId ');
    Qry.ParamByName('clienteId').AsInteger       :=Self.F_clienteId;
    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('endereco').AsString         :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString           :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString           :=Self.F_bairro;
    Qry.ParamByName('estado').AsString           :=Self.F_estado;
    Qry.ParamByName('racial').AsString           :=Self.F_racial;
    Qry.ParamByName('genero').AsString           :=Self.F_genero;
    Qry.ParamByName('cep').AsString              :=Self.F_cep;
    Qry.ParamByName('telefone').AsString         :=Self.F_telefone;
    Qry.ParamByName('email').AsString            :=Self.F_email;
    Qry.ParamByName('dataNascimento').AsDateTime :=Self.F_dataNascimento;


    Try
       ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TCliente.Inserir: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('INSERT INTO clientes (nome, '+
                '                      endereco, '+
                '                      cidade,  '+
                '                      bairro,  '+
                '                      estado, '+
                '                      racial, '+
                '                      genero, '+
                '                      cep, '+
                '                      telefone, '+
                '                      email, '+
                '                      datanascimento) '+
                ' VALUES              (:nome, '+
                '                      :endereco, '+
                '                      :cidade,  '+
                '                      :bairro,  '+
                '                      :estado, '+
                '                      :racial, '+
                '                      :genero, '+
                '                      :cep, '+
                '                      :telefone, '+
                '                      :email, '+
                '                      :datanascimento)' );

    Qry.ParamByName('nome').AsString             :=Self.F_nome;
    Qry.ParamByName('endereco').AsString         :=Self.F_endereco;
    Qry.ParamByName('cidade').AsString           :=Self.F_cidade;
    Qry.ParamByName('bairro').AsString           :=Self.F_bairro;
    Qry.ParamByName('estado').AsString           :=Self.F_estado;
    Qry.ParamByName('racial').AsString           :=Self.F_racial;
    Qry.ParamByName('genero').AsString           :=Self.F_genero;
    Qry.ParamByName('cep').AsString              :=Self.F_cep;
    Qry.ParamByName('telefone').AsString         :=Self.F_telefone;
    Qry.ParamByName('email').AsString            :=Self.F_email;
    Qry.ParamByName('dataNascimento').AsDateTime :=Self.F_dataNascimento;

    Try
       ConectDB.StartTransaction;
      Qry.ExecSQL;
      ConectDB.Commit;
    Except
      ConectDB.Rollback;
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TCliente.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConectDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT clienteid,'+
                '       nome, '+
                '       endereco, '+
                '       cidade, '+
                '       bairro, '+
                '       estado, '+
                '       racial, '+
                '       genero, '+
                '       cep, '+
                '       telefone, '+
                '       email, '+
                '       datanascimento '+
                '  FROM clientes '+
                ' WHERE clienteid=:clienteid');
    Qry.ParamByName('clienteid').AsInteger:=id;
    Try
      Qry.Open;

      Self.F_clienteId     := Qry.FieldByName('clienteId').AsInteger;
      Self.F_nome          := Qry.FieldByName('nome').AsString;
      Self.F_endereco      := Qry.FieldByName('endereco').AsString;
      Self.F_cidade        := Qry.FieldByName('cidade').AsString;
      Self.F_bairro        := Qry.FieldByName('bairro').AsString;
      Self.F_estado        := Qry.FieldByName('estado').AsString;
      Self.F_racial        := Qry.FieldByName('racial').AsString;
      Self.F_genero        := Qry.FieldByName('genero').AsString;
      Self.F_cep           := Qry.FieldByName('cep').AsString;
      Self.F_telefone      := Qry.FieldByName('telefone').AsString;
      Self.F_email         := Qry.FieldByName('email').AsString;
      Self.F_dataNascimento:= Qry.FieldByName('datanascimento').AsDateTime;

    Except
      Result:=false;
    End;

  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;
{$endregion}


end.

end.
