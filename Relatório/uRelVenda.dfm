object frmrelvenda: Tfrmrelvenda
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Categoria'
  ClientHeight = 474
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsVendasItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 16
        Width = 41
        Height = 16
        Caption = 'Venda'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 34
        Width = 718
        Height = 17
        Align = faClientBottom
        DrawKind = dkLine
      end
    end
    object rodape: TRLBand
      Left = 38
      Top = 209
      Width = 718
      Height = 40
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        Align = faClientTop
        DrawKind = dkLine
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 23
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 556
        Top = 23
        Width = 22
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 592
        Top = 23
        Width = 35
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 584
        Top = 23
        Width = 10
        Height = 16
        Caption = '/'
      end
      object RLLabel6: TRLLabel
        Left = 263
        Top = 21
        Width = 85
        Height = 16
        Caption = 'Total Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult1: TRLDBResult
        Left = 341
        Top = 21
        Width = 118
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsvendas
        Text = ''
        Transparent = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 120
      object RLDraw3: TRLDraw
        Left = 0
        Top = 114
        Width = 718
        Height = 6
        Align = faClientBottom
        DrawKind = dkLine
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 12
        Width = 53
        Height = 16
        Caption = 'Venda: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 62
        Top = 13
        Width = 55
        Height = 16
        Alignment = taRightJustify
        DataField = 'vendaId'
        DataSource = dtsvendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 35
        Width = 57
        Height = 16
        Caption = 'Cliente: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 66
        Top = 35
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = dtsvendas
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 205
        Top = 13
        Width = 37
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 248
        Top = 13
        Width = 66
        Height = 16
        Alignment = taRightJustify
        DataField = 'dataVenda'
        DataSource = dtsvendas
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 30
        Top = 66
        Width = 54
        Height = 16
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 137
        Top = 67
        Width = 78
        Height = 16
        Alignment = taRightJustify
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 248
        Top = 67
        Width = 92
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 369
        Top = 67
        Width = 90
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 1
        Top = 89
        Width = 24
        Height = 16
        Alignment = taRightJustify
        DataField = 'produtoId'
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 31
        Top = 88
        Width = 38
        Height = 16
        DataField = 'Nome'
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 137
        Top = 89
        Width = 67
        Height = 16
        Alignment = taRightJustify
        DataField = 'quantidade'
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 266
        Top = 89
        Width = 74
        Height = 16
        Alignment = taRightJustify
        DataField = 'valorUnitario'
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 385
        Top = 89
        Width = 74
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalProduto'
        DataSource = dtsVendasItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
        Transparent = False
      end
    end
  end
  object dtsvendas: TDataSource
    DataSet = QryVendas
    Left = 632
    Top = 344
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 624
    Top = 296
  end
  object QryVendaItens: TZQuery
    Connection = dtmConect.ConectDB
    Active = True
    SQL.Strings = (
      'SELECT vendasItens.vendaId,'
      '       vendasItens.produtoId,'
      #9'     produtos.Nome,'
      #9'     vendasItens.quantidade,'
      #9'     vendasItens.valorUnitario,'
      #9'     vendasItens.totalProduto'
      '  FROM vendasItens'
      
        '       INNER JOIN produtos on produtos.produtoId = vendasItens.p' +
        'rodutoId'
      ' WHERE vendasItens.vendaId =:vendaId'
      ' ORDER BY vendasItens.produtoId'
      ''
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = '48'
      end>
    Left = 576
    Top = 398
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = '48'
      end>
    object QryVendaItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object QryVendaItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object QryVendaItensNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryVendaItensquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object QryVendaItensvalorUnitario: TFloatField
      FieldName = 'valorUnitario'
      Required = True
    end
    object QryVendaItenstotalProduto: TFloatField
      FieldName = 'totalProduto'
      Required = True
    end
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendaItens
    Left = 576
    Top = 342
  end
  object QryVendas: TZQuery
    Connection = dtmConect.ConectDB
    Active = True
    SQL.Strings = (
      #9'SELECT vendas.vendaId,'
      #9'       vendas.clienteId,'
      #9#9'     clientes.nome,'
      '   '#9#9'   vendas.dataVenda,'
      #9'  '#9'   vendas.totalVenda'
      #9'  FROM vendas'
      
        #9'       INNER JOIN clientes on clientes.clienteId = vendas.clien' +
        'teId'
      '   WHERE vendas.vendaId =:vendaId'
      #9' ORDER BY vendas.dataVenda, clienteId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = '48'
      end>
    Left = 632
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = '48'
      end>
    object QryVendasvendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object QryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object QryVendasnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TDateTimeField
      FieldName = 'dataVenda'
      Required = True
    end
    object QryVendastotalVenda: TFloatField
      FieldName = 'totalVenda'
      Required = True
    end
  end
end
