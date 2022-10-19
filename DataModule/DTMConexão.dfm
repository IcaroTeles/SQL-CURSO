object dtmConect: TdtmConect
  OldCreateOrder = False
  Height = 254
  Width = 458
  object ConectDB: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'AutoEncodeStrings=True')
    Connected = True
    SQLHourGlass = True
    HostName = '.\SQLEXPRESS'
    Port = 1433
    Database = 'vendas'
    User = ''
    Password = ''
    Protocol = 'mssql'
    LibraryLocation = 'D:\Projetos\Cursos\SQL-CURSO\ntwdblib.dll'
    Left = 408
    Top = 200
  end
  object qryclientes: TZQuery
    Connection = ConectDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'clientes'#39') IS NULL'
      'BEGIN'
      #9'CREATE TABLE clientes('
      #9#9'clienteId int IDENTITY(1,1) NOT NULL,'
      #9#9'nome varchar(60) NULL,'
      #9#9'endereco varchar(60) null,'
      #9#9'cidade varchar(50) null,'
      #9#9'bairro varchar(40) null,'
      #9#9'estado varchar(2) null,'
      #9#9'cep varchar(10) null,'
      #9#9'telefone varchar(14) null,  '
      #9#9'email varchar(100) null,'
      #9#9'dataNascimento datetime null'
      #9#9'PRIMARY KEY (clienteId),'
      #9')'
      'END')
    Params = <>
    Properties.Strings = (
      'if object_id ('#39'clientes'#39') is null'
      'begin'
      'CREATE TABLE clientes ('
      ' clienteid int identity (1,1) not null,'
      ' nome varchar (60) null, '
      ' endereco varchar (60) null,'
      ' cidade varchar (50) null,'
      ' bairro varchar (40) null,'
      ' estado varchar (2) null,'
      ' cep varchar (10) null,'
      ' telefone varchar (14) null,'
      ' email varchar (100) null,'
      ' datanascimento datetime null,'
      ' primary key (clienteid)'
      ' )'
      'end')
    Left = 32
    Top = 64
  end
  object qryvendas: TZQuery
    Connection = ConectDB
    SQL.Strings = (
      'if OBJECT_ID ('#39'vendas'#39') is null'
      'begin'
      'create table vendas ('
      'vendaid int identity (1,1) not null,'
      'clienteid int not null,'
      'datavenda datetime default getdate (),'
      'totalvenda decimal (18,5) default 0.00000,'
      ''
      'primary key (vendaid),'
      'constraint fk_VendasClientes foreign key (clienteid)'
      'references clientes(clienteid)'
      ')'
      'end')
    Params = <>
    Properties.Strings = (
      'if OBJECT_ID ('#39'vendas'#39') is null'
      'begin'
      'create table vendas ('
      'vendaid int identity (1,1) not null,'
      'clienteid int not null,'
      'datavenda datetime default getdate (),'
      'totalvenda decimal (18,5) default 0.00000,'
      ''
      'primary key (vendaid),'
      'constraint fk_VendasClientes foreign key (clienteid)'
      'references clientes(clienteid)'
      ')'
      'end')
    Left = 32
    Top = 112
  end
  object qrycategoria: TZQuery
    Connection = ConectDB
    SQL.Strings = (
      'if object_id ('#39'categorias'#39') is null'
      'begin'
      'create table categorias ('
      'categoriaid int identity (1,1) not null,'
      'descricao varchar (30) null,'
      'primary key (categoriaid)'
      ')'
      'end ')
    Params = <>
    Properties.Strings = (
      'if OBJECT_ID ('#39'categorias'#39') is null'
      'begin'
      'create table categorias ('
      'categoriaid int indentity (1,1) not null,'
      'descricao varchar (30) null,'
      'primary key (categoriaid)'
      ')'
      'end')
    Left = 56
    Top = 16
  end
  object qryprodutos: TZQuery
    Connection = ConectDB
    SQL.Strings = (
      'if object_id ('#39'produtos'#39') is null'
      'begin'
      'create table produtos ('
      'produtoid int identity (1,1) not null,'
      'nome varchar (60) null,'
      'descricao varchar (255) null,'
      'valor decimal (18,5) default 0.00000 null,'
      'quantidade decimal (18,5) default 0.00000 null,'
      'categoriaid int null,'
      'primary key (produtoid),'
      'constraint fk_ProdutosCategorias'
      'foreign key (categoriaid) references categorias (categoriaid)'
      ')'
      'end')
    Params = <>
    Properties.Strings = (
      'if object_id ('#39'produtos'#39') is null'
      'begin'
      'create table produtos ('
      'produtoid int identity (1,1) not null,'
      'nome varchar (60) null,'
      'descricao varchar (255) null,'
      'valor decimal (18,5) default 0.00000 null,'
      'quantidade decimal (18,5) default 0.00000 null,'
      'categoriaid int null,'
      'primary key (produtoid),'
      'constraint fk_ProdutosCategorias'
      'foreign key (categoriaid) references categorias (categoriaid)'
      ')'
      'end')
    Left = 88
    Top = 64
  end
  object qryitens: TZQuery
    Connection = ConectDB
    SQL.Strings = (
      'if OBJECT_ID ('#39'vendasitens'#39') is null'
      'begin'
      'create table vendasitens ('
      'vendaid int not null,'
      'produtoid int not null,'
      'valorunitario decimal (18,5) default 0.0000,'
      'quantidade decimal (18,5) default 0.0000,'
      'totalproduto decimal (18,5) default 0.0000,'
      'primary key (vendaid,produtoid),'
      'constraint fk_vendasitensprodutos foreign key (produtoid)'
      'references produtos(produtoid)'
      ')'
      'end'
      '')
    Params = <>
    Properties.Strings = (
      'if OBJECT_ID ('#39'vendasitens'#39') is null'
      'begin'
      'create table vendasitens ('
      'vendaid int not null,'
      'produtoid int not null,'
      'valorunitario decimal (18,5) default 0.0000,'
      'quantidade decimal (18,5) default 0.0000,'
      'totalproduto decimal (18,5) default 0.0000,'
      'primary key (vendaid,produtoid),'
      'constraint fk_vendasitensprodutos foreign key (produtoid)'
      'references produtos(produtoid)'
      ')'
      'end')
    Left = 88
    Top = 112
  end
end
