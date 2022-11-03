inherited frmprovendas: Tfrmprovendas
  ActiveControl = nil
  Caption = 'Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc_1: TPageControl
    inherited tabManu: TTabSheet
      object TLabel
        Left = 139
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object TLabel
        Left = 19
        Top = 75
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object edtdatavenda: TDateEdit
        Left = 347
        Top = 48
        Width = 121
        Height = 21
        ClickKey = 114
        DialogTitle = 'Selecione a Data'
        NumGlyphs = 2
        CalendarStyle = csDialog
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 75
        Width = 754
        Height = 253
        Align = alBottom
        TabOrder = 3
        object Panel2: TPanel
          Left = 1
          Top = 43
          Width = 752
          Height = 168
          Align = alClient
          TabOrder = 0
          object dbgriditensvenda: TDBGrid
            Left = 1
            Top = 1
            Width = 750
            Height = 166
            Align = alClient
            DataSource = dtmvendas.dtsitensvenda
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = dbgriditensvendaDblClick
            OnKeyDown = dbgriditensvendaKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'produtoid'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valorunit'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valortotalproduto'
                Width = 64
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 211
          Width = 752
          Height = 41
          Align = alBottom
          TabOrder = 1
          object Label1: TLabel
            Left = 625
            Top = 1
            Width = 116
            Height = 13
            Caption = 'Valor Total da Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtvalorvenda: TCurrencyEdit
            Left = 625
            Top = 17
            Width = 121
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 752
          Height = 42
          Align = alTop
          TabOrder = 2
          object Label2: TLabel
            Left = 408
            Top = -1
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object Label3: TLabel
            Left = 346
            Top = -1
            Width = 50
            Height = 13
            Caption = 'Valor Unit.'
          end
          object Label4: TLabel
            Left = 479
            Top = -1
            Width = 51
            Height = 13
            Caption = 'Valor Total'
          end
          object edtvalorunit: TCurrencyEdit
            Left = 346
            Top = 18
            Width = 56
            Height = 21
            Color = clBtnFace
            DisplayFormat = ' ,0.00;-,0.00'
            TabOrder = 2
            OnEnter = edtvalorunitEnter
          end
          object edtquantidade: TCurrencyEdit
            Left = 408
            Top = 18
            Width = 65
            Height = 21
            DisplayFormat = '0'
            TabOrder = 0
            OnChange = edtquantidadeChange
            OnEnter = edtquantidadeEnter
          end
          object edtvalortotal: TCurrencyEdit
            Left = 479
            Top = 18
            Width = 58
            Height = 21
            TabStop = False
            DisplayFormat = ' ,0.00;-,0.00'
            ParentColor = True
            ReadOnly = True
            TabOrder = 3
            OnEnter = edtvalortotalEnter
          end
          object btnadicionar: TBitBtn
            Left = 541
            Top = 14
            Width = 75
            Height = 23
            Caption = '&Adicionar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFC1C1C1
              C1C1C1C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0FF00FFFF00FFFF00FFC7C7C7FEFEFEE1E1E1FCFCFCFCFCFCFCFCFCFC
              FCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFEFEC6C6C6FF00FFFF00FFFF00FFCCCCCC
              CACACAE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
              DECBCBCBFF00FFFF00FFFF00FFD1D1D1FDFDFDE1E1E1F5F5F5F5F5F5F5F5F5F5
              F5F5F5F5F5F4F4F4F4F4F4F3F3F3FCFCFCD0D0D0FF00FFFF00FFFF00FFD5D5D5
              DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
              DED4D4D4FF00FFFF00FFFF00FFD7D7D7FDFDFDE1E1E1F8F8F8F8F8F8F8F8F8F8
              F8F8F7F7F7F7F7F7F7F7F7F6F6F6FDFDFDD7D7D7FF00FFFF00FFFF00FFDADADA
              DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
              DEDADADAFF00FFFF00FFFF00FFDCDCDCCACACAE1E1E1FAFAFAFAFAFAFAFAFAFA
              FAFAFAFAFAF9F9F9F9F9F9F8F8F8FDFDFDDCDCDCFF00FFFF00FFFF00FFDDDDDD
              DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
              DEDDDDDDFF00FFFF00FFFF00FFDEDEDEFEFEFEE1E1E1FCFCFCFCFCFCFCFCFCFC
              FCFCFBFBFBFBFBFBFAFAFAFAFAFAFEFEFEDEDEDEFF00FFFF00FFFF00FFDFDFDF
              DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
              DEDFDFDFFF00FFFF00FFFF00FFDFDFDFFEFEFEE1E1E1FDFDFDFDFDFDFDFDFDFD
              FDFDFDFDFDFCFCFCFCFCFCFBFBFBFEFEFEDFDFDFFF00FFFF00FFFF00FFE0E0E0
              DEDEDEE1E1E1DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE0E0E0E5E5E5EDED
              EDDFDFDFFF00FFFF00FFFF00FFE0E0E0CACACAE1E1E1FDFDFDFEFEFEFEFEFEFE
              FEFEFDFDFDFDFDFDE5E5E5F1F1F1DFDFDFFF00FFFF00FFFF00FFFF00FFE0E0E0
              FFFFFFE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDDFDFDFFF00
              FFFF00FFFF00FFFF00FFFF00FFE0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0
              E0E0E0E0E0E0E0E0DFDFDFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 4
            OnClick = btnadicionarClick
          end
          object btnremover: TBitBtn
            Left = 622
            Top = 17
            Width = 75
            Height = 23
            Caption = '&Remover'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              4442BC3C3CAAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0303
              7B02028CFF00FFFF00FFFF00FF514FC52222C83030C84848B7FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF1010870505A10101A204028DFF00FF5959CA2929D2
              1717D01616CE3838D15151BFFF00FFFF00FFFF00FFFF00FF2121940E0EA70101
              A60101A60101A204028D5555C34444DD1C1CDB1B1BD91A1AD53F3FD85757C4FF
              00FFFF00FF3434A41A1AB30202A80101A60101A602029F020278FF00FF6262CF
              4C4CE62121E31F1FDF1C1CDA4242DC5656C44848B72A2AC40A0AB60505AE0101
              A70505A003037BFF00FFFF00FFFF00FF6F6FD85656ED2424E82121E31D1DDD3F
              3FDA3838D31111C50D0DBC0808B40F0FA90D0D80FF00FFFF00FFFF00FFFF00FF
              FF00FF7777DD5959EF2626EA2121E41D1DDC1919D41414CB1010C21C1CB71D1D
              90FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7676DB5757EC2626EA21
              21E31C1CDA1717D02828C52B2B9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF8888D97676EE3636ED2424E81E1EDE1919D52929C72B2B9EFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9191D98D8DED6E6EF26363F14F
              4FEE3636E52121D91616CD1F1FBD1D1D92FF00FFFF00FFFF00FFFF00FFFF00FF
              9797D79E9EEB8787F57D7DF47272F37777E66D6DE15555E34646D93434CE2B2B
              B822228FFF00FFFF00FFFF00FF9C9CD4ACACEA9C9CF79494F68A8AF58B8BE776
              76CA6868C26C6CDA5B5BDE5252D54848CC4141B82F2F91FF00FF9D9DD0B4B4E7
              AEAEF8A7A7F89F9FF79B9BE68181CBFF00FFFF00FF6262B86B6BD25D5DD75151
              CE4747C54141B4323293A9A9C7B8B8EFB5B5F9AFAFF8A8A8E58888CCFF00FFFF
              00FFFF00FFFF00FF5959B06565CB5555CE4B4BC54545BB4343A4FF00FFAAA9C6
              BABAEEB1B1E48F8FCAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5656AD5C5C
              C54F4FC14D4DAAFF00FFFF00FFFF00FFACABC69898CEFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF5050A95858AFFF00FFFF00FF}
            TabOrder = 1
            TabStop = False
            OnClick = btnremoverClick
          end
        end
      end
      object lkpproduto: TDBLookupComboBox
        Left = 19
        Top = 91
        Width = 310
        Height = 21
        KeyField = 'produtoid'
        ListField = 'nome'
        ListSource = dtmvendas.dtsprodutos
        TabOrder = 2
        OnExit = lkpprodutoExit
      end
      object lkpcliente: TDBLookupComboBox
        Left = 139
        Top = 48
        Width = 190
        Height = 21
        KeyField = 'clienteid'
        ListField = 'nome'
        ListSource = dtmvendas.dtscliente
        TabOrder = 0
      end
      object edt_codigo: TLabeledEdit
        Left = 19
        Top = 48
        Width = 56
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        Enabled = False
        MaxLength = 60
        ReadOnly = True
        TabOrder = 4
      end
    end
    inherited tabList: TTabSheet
      inherited GridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'vendaid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'clienteid'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 291
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datavenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalvenda'
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
      'select vendas.vendaid,'
      #9'   vendas.clienteid,'
      #9'   clientes.nome,'
      #9'   vendas.datavenda,'
      #9'   vendas.totalvenda'
      'from vendas'
      'inner join clientes on clientes.clienteid = vendas.clienteid')
    Left = 724
    Top = 32
    object QryListvendaid: TIntegerField
      DisplayLabel = 'N'#250'mero Venda'
      FieldName = 'vendaid'
      ReadOnly = True
    end
    object QryListclienteid: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'clienteid'
      Required = True
    end
    object QryListnome: TWideStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'nome'
      Size = 60
    end
    object QryListdatavenda: TDateTimeField
      DisplayLabel = 'Data Venda'
      FieldName = 'datavenda'
      Required = True
    end
    object QryListtotalvenda: TFloatField
      DisplayLabel = 'Total da Venda'
      FieldName = 'totalvenda'
      Required = True
    end
  end
  inherited DataList: TDataSource
    Left = 684
    Top = 32
  end
end
