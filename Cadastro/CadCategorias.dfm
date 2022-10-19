inherited frmCadCategoria: TfrmCadCategoria
  Anchors = [akLeft, akTop, akBottom]
  Caption = 'Cadastro de Categoria'
  ClientWidth = 756
  ExplicitWidth = 762
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc_1: TPageControl
    Width = 756
    ExplicitWidth = 756
    inherited tabManu: TTabSheet
      ExplicitWidth = 748
      object edt_codigo: TLabeledEdit
        Left = 19
        Top = 48
        Width = 56
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 60
        ReadOnly = True
        TabOrder = 0
      end
      object edt_descricao: TLabeledEdit
        Left = 19
        Top = 96
        Width = 310
        Height = 21
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o'
        MaxLength = 60
        TabOrder = 1
      end
    end
    inherited tabList: TTabSheet
      ExplicitWidth = 748
      inherited pnl_listop: TPanel
        Width = 748
        ExplicitWidth = 748
        inherited btnpesq: TBitBtn
          Top = 26
          Height = 23
          ExplicitTop = 26
          ExplicitHeight = 23
        end
      end
      inherited GridList: TDBGrid
        Width = 748
        Anchors = [akLeft, akTop, akRight]
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaID'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 144
            Visible = True
          end>
      end
    end
  end
  inherited pnl_1: TPanel
    Width = 756
    ExplicitWidth = 756
    inherited dbnavega: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited btnFechar: TBitBtn
    Width = 76
    Anchors = [akLeft, akTop, akRight]
    ExplicitWidth = 76
  end
  inherited QryList: TZQuery
    Left = 476
    object QryListcategoriaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaID'
      ReadOnly = True
    end
    object QryListdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
  inherited DataList: TDataSource
    Left = 524
  end
end
