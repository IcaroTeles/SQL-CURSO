inherited frmcadusuario: Tfrmcadusuario
  Caption = 'Cadastro de Usu'#225'rio'
  ClientWidth = 761
  ExplicitWidth = 767
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc_1: TPageControl
    Width = 761
    ExplicitWidth = 761
    inherited tabManu: TTabSheet
      ExplicitWidth = 753
      object edtusuarioid: TLabeledEdit
        Tag = 1
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
      object edtnome: TLabeledEdit
        Tag = 2
        Left = 19
        Top = 106
        Width = 310
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 50
        TabOrder = 1
      end
      object edtsenha: TLabeledEdit
        Tag = 2
        Left = 19
        Top = 170
        Width = 310
        Height = 21
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Senha'
        MaxLength = 40
        PasswordChar = '*'
        TabOrder = 2
      end
    end
    inherited tabList: TTabSheet
      ExplicitWidth = 753
      inherited pnl_listop: TPanel
        Width = 753
        ExplicitWidth = 753
      end
      inherited GridList: TDBGrid
        Width = 753
        Columns = <
          item
            Expanded = False
            FieldName = 'usuarioid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end>
      end
    end
  end
  inherited pnl_1: TPanel
    Width = 761
    ExplicitWidth = 761
    inherited dbnavega: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryList: TZQuery
    SQL.Strings = (
      'select usuarioid, nome, senha'
      'from usuarios')
    object QryListusuarioid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioid'
      ReadOnly = True
    end
    object QryListnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 50
    end
    object QryListsenha: TWideStringField
      FieldName = 'senha'
      Required = True
      Size = 40
    end
  end
end
