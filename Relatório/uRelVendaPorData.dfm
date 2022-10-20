object frmrelvendapordata: Tfrmrelvendapordata
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Categoria'
  ClientHeight = 474
  ClientWidth = 666
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
    DataSource = dtsvendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 112
      object RLDraw3: TRLDraw
        Left = 0
        Top = 95
        Width = 718
        Height = 17
        Align = faClientBottom
        DrawKind = dkLine
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 72
        Width = 47
        Height = 16
        DataField = 'vendaId'
        DataSource = dtsvendas
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 96
        Top = 70
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = dtsvendas
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 394
        Top = 69
        Width = 66
        Height = 16
        DataField = 'totalVenda'
        DataSource = dtsvendas
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 50
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel10: TRLLabel
        Left = 96
        Top = 48
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel11: TRLLabel
        Left = 394
        Top = 47
        Width = 34
        Height = 16
        Caption = 'Valor'
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 16
        Width = 88
        Height = 16
        Caption = 'C'#243'digo Cliente'
      end
      object RLDBText5: TRLDBText
        Left = 112
        Top = 16
        Width = 52
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsvendas
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 248
        Top = 48
        Width = 90
        Height = 16
        Caption = 'Data da Venda'
      end
      object RLDBText7: TRLDBText
        Left = 248
        Top = 71
        Width = 66
        Height = 16
        DataField = 'dataVenda'
        DataSource = dtsvendas
        Text = ''
      end
    end
    object cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 16
        Width = 151
        Height = 16
        Caption = 'Listagem Venda por Data'
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
      Top = 217
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
      object RLLabel4: TRLLabel
        Left = 248
        Top = 21
        Width = 79
        Height = 16
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBResult2: TRLDBResult
        Left = 333
        Top = 21
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsvendas
        Info = riSum
        Text = ''
        Transparent = False
      end
    end
  end
  object qryvendas: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      #9'SELECT vendas.vendaId,'
      #9'             vendas.clienteId,'
      '                             clientes.nome,'
      #9#9'     vendas.dataVenda,'
      #9#9'     vendas.totalVenda'
      #9'  FROM vendas'
      
        #9'       INNER JOIN clientes on clientes.clienteId = vendas.clien' +
        'teId'
      '   WHERE vendas.dataVenda BETWEEN :DataInicio AND :DataFim'
      #9' ORDER BY vendas.dataVenda, vendas.clienteId')
    Params = <
      item
        DataType = ftUnknown
        Name = 'DataInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFim'
        ParamType = ptUnknown
      end>
    Left = 624
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataFim'
        ParamType = ptUnknown
      end>
    object qryvendasvendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object qryvendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object qryvendasnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object qryvendasdataVenda: TDateTimeField
      FieldName = 'dataVenda'
      Required = True
    end
    object qryvendastotalVenda: TFloatField
      FieldName = 'totalVenda'
      Required = True
    end
  end
  object dtsvendas: TDataSource
    DataSet = qryvendas
    Left = 624
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
end
