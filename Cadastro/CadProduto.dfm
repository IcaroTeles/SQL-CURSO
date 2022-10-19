inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro de Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc_1: TPageControl
    inherited tabManu: TTabSheet
      object lbldescricao: TLabel
        Left = 19
        Top = 141
        Width = 100
        Height = 13
        Caption = 'Descr'#231#227'o do Produto'
      end
      object Label1: TLabel
        Left = 19
        Top = 269
        Width = 82
        Height = 13
        Caption = 'Pre'#231'o de Compra'
      end
      object Label2: TLabel
        Left = 162
        Top = 269
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label3: TLabel
        Left = 368
        Top = 85
        Width = 47
        Height = 13
        Caption = 'Categoria'
      end
      object edtdescricao: TMemo
        Left = 19
        Top = 160
        Width = 726
        Height = 89
        Lines.Strings = (
          '')
        MaxLength = 255
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
      object edtvalor: TCurrencyEdit
        Left = 19
        Top = 288
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edtquantidade: TCurrencyEdit
        Left = 162
        Top = 288
        Width = 121
        Height = 21
        DisplayFormat = '0'
        TabOrder = 3
      end
      object lkpcategoria: TDBLookupComboBox
        Left = 368
        Top = 104
        Width = 145
        Height = 21
        KeyField = 'categoriaid'
        ListField = 'descricao'
        ListSource = dtscategoria
        TabOrder = 0
      end
      object edt_codigo: TLabeledEdit
        Left = 19
        Top = 48
        Width = 70
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 60
        ReadOnly = True
        TabOrder = 4
      end
      object edt_descricao: TLabeledEdit
        Left = 19
        Top = 104
        Width = 310
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 5
      end
    end
    inherited tabList: TTabSheet
      inherited GridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'produtoid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricaocategoria'
            Visible = True
          end>
      end
    end
  end
  inherited pnl_1: TPanel
    inherited dbnavega: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryList: TZQuery
    SQL.Strings = (
      'select p.produtoid,'
      #9'   p.nome,'
      #9'   p.descricao,'
      #9'   p.valor,'
      #9'   p.quantidade,'
      #9'   p.categoriaid,'
      #9'   c.descricao as descricaocategoria'
      'from produtos as p'
      'left join categorias as c on c.categoriaid = p.categoriaid')
    Left = 660
    object QryListprodutoid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoid'
      ReadOnly = True
    end
    object QryListnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 255
    end
    object QryListvalor: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'valor'
    end
    object QryListquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object QryListcategoriaid: TIntegerField
      DisplayLabel = 'C'#243'd. Categoria'
      FieldName = 'categoriaid'
    end
    object QryListdescricaocategoria: TWideStringField
      DisplayLabel = 'Cat. Descri'#231#227'o'
      FieldName = 'descricaocategoria'
      Size = 30
    end
  end
  inherited DataList: TDataSource
    Left = 700
  end
  object qrycategoria: TZQuery
    Connection = dtmConect.ConectDB
    Active = True
    SQL.Strings = (
      'select categoriaid, descricao from categorias')
    Params = <>
    Left = 396
    Top = 32
    object qrycategoriacategoriaid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaid'
      ReadOnly = True
    end
    object qrycategoriadescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtscategoria: TDataSource
    DataSet = qrycategoria
    Left = 460
    Top = 32
  end
end
