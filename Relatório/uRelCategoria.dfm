object frmrelcategoria: Tfrmrelcategoria
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtscategorias
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
        Width = 141
        Height = 16
        Caption = 'Listagem de Categorias'
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
      Top = 147
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
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 123
      Width = 718
      Height = 24
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 67
        Height = 16
        DataField = 'categoriaid'
        DataSource = dtscategorias
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 76
        Top = 6
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = dtscategorias
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 34
      BandType = btColumnHeader
      object RLLabel3: TRLLabel
        Left = 3
        Top = 12
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel4: TRLLabel
        Left = 76
        Top = 12
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
    end
  end
  object qrycategorias: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      'select categoriaid, descricao from categorias')
    Params = <>
    Left = 624
    Top = 312
    object qrycategoriascategoriaid: TIntegerField
      FieldName = 'categoriaid'
      ReadOnly = True
    end
    object qrycategoriasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtscategorias: TDataSource
    DataSet = qrycategorias
    Left = 624
    Top = 272
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 624
    Top = 232
  end
end
