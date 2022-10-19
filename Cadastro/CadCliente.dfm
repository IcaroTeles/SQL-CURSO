inherited frmCadCliente: TfrmCadCliente
  ActiveControl = nil
  Caption = 'Cadastro de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 372
    Top = 53
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label2: TLabel [1]
    Left = 372
    Top = 157
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label3: TLabel [2]
    Left = 19
    Top = 251
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  object Label6: TLabel [3]
    Left = 19
    Top = 227
    Width = 81
    Height = 13
    Caption = 'Data Nascimento'
  end
  inherited pgc_1: TPageControl
    inherited tabManu: TTabSheet
      object Label4: TLabel
        Left = 476
        Top = 87
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label5: TLabel
        Left = 364
        Top = 87
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label7: TLabel
        Left = 19
        Top = 235
        Width = 81
        Height = 13
        Caption = 'Data Nascimento'
      end
      object edtendereco: TLabeledEdit
        Left = 19
        Top = 152
        Width = 310
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 2
      end
      object edtCidade: TLabeledEdit
        Left = 19
        Top = 200
        Width = 310
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 60
        TabOrder = 4
      end
      object edtemail: TLabeledEdit
        Left = 364
        Top = 152
        Width = 306
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        MaxLength = 100
        TabOrder = 3
      end
      object edtbairro: TLabeledEdit
        Left = 364
        Top = 200
        Width = 173
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 40
        TabOrder = 5
      end
      object edtestado: TLabeledEdit
        Left = 564
        Top = 200
        Width = 106
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Estado'
        MaxLength = 2
        TabOrder = 6
      end
      object edtcep: TMaskEdit
        Left = 364
        Top = 106
        Width = 69
        Height = 21
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .   -   '
      end
      object edttelefone: TMaskEdit
        Left = 476
        Top = 106
        Width = 85
        Height = 21
        EditMask = '(99)99999-9999;1;_'
        MaxLength = 14
        TabOrder = 1
        Text = '(  )     -    '
      end
      object edtdata: TDateEdit
        Left = 19
        Top = 254
        Width = 121
        Height = 21
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 7
        OnKeyDown = edtdataKeyDown
      end
      object edt_codigo: TLabeledEdit
        Left = 19
        Top = 48
        Width = 46
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 60
        ReadOnly = True
        TabOrder = 8
      end
      object edt_descricao: TLabeledEdit
        Left = 19
        Top = 106
        Width = 310
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 9
      end
    end
    inherited tabList: TTabSheet
      inherited GridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'clienteid'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Width = 332
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
      'select'
      'clienteid,'
      ' nome, '
      ' endereco,'
      ' cidade,'
      ' bairro,'
      ' estado,'
      ' cep,'
      ' telefone,'
      ' email,'
      ' datanascimento'
      'from clientes')
    Left = 580
    Top = 32
    object QryListclienteid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteid'
      ReadOnly = True
    end
    object QryListnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object QryListcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 50
    end
    object QryListbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 40
    end
    object QryListestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object QryListcep: TWideStringField
      DisplayLabel = 'Cep'
      FieldName = 'cep'
      Size = 10
    end
    object QryListtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object QryListemail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object QryListdatanascimento: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'datanascimento'
    end
  end
  inherited DataList: TDataSource
    Left = 644
    Top = 32
  end
end
