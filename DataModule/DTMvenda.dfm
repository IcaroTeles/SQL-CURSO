object dtmvendas: Tdtmvendas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 294
  Width = 497
  object qrycliente: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      'select clienteid, nome from clientes')
    Params = <>
    Left = 64
    Top = 48
    object qryclienteclienteid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteid'
      ReadOnly = True
    end
    object qryclientenome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
  end
  object qryprodutos: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      'select produtoid, nome, valor, quantidade from produtos')
    Params = <>
    Left = 216
    Top = 48
    object qryprodutosprodutoid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoid'
      ReadOnly = True
    end
    object qryprodutosnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qryprodutosvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object qryprodutosquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
  end
  object dtsprodutos: TDataSource
    DataSet = qryprodutos
    Left = 216
    Top = 104
  end
  object dtscliente: TDataSource
    DataSet = qrycliente
    Left = 64
    Top = 104
  end
  object cdsitensvenda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 176
    object cdsitensvendaprodutoid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoid'
    end
    object cdsitensvendanome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'nome'
    end
    object cdsitensvendaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsitensvendavalorunit: TFloatField
      DisplayLabel = 'Valor Unit.'
      FieldName = 'valorunit'
    end
    object cdsitensvendavalortotalproduto: TFloatField
      DisplayLabel = 'Valor Total do Produto'
      FieldName = 'valortotalproduto'
    end
    object cdsitensvendavalortotal: TAggregateField
      FieldName = 'valortotal'
      DisplayName = ''
      Expression = 'SUM(valortotalproduto)'
    end
  end
  object dtsitensvenda: TDataSource
    DataSet = cdsitensvenda
    Left = 336
    Top = 232
  end
end
