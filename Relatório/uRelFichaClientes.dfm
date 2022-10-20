object frmrelclientesficha: Tfrmrelclientesficha
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Categoria'
  ClientHeight = 474
  ClientWidth = 704
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
    DataSource = dtsclientesficha
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
        Width = 105
        Height = 16
        Caption = 'Ficha de Clientes'
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
      Top = 239
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
      Top = 89
      Width = 718
      Height = 150
      object RLLabel4: TRLLabel
        Left = 3
        Top = 17
        Width = 53
        Height = 16
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText1: TRLDBText
        Left = 62
        Top = 17
        Width = 52
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 155
        Top = 17
        Width = 45
        Height = 16
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 206
        Top = 17
        Width = 38
        Height = 16
        DataField = 'Nome'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 39
        Width = 34
        Height = 16
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText5: TRLDBText
        Left = 43
        Top = 39
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 155
        Top = 39
        Width = 82
        Height = 16
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText6: TRLDBText
        Left = 243
        Top = 39
        Width = 57
        Height = 16
        DataField = 'endereco'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 61
        Width = 47
        Height = 16
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText7: TRLDBText
        Left = 56
        Top = 61
        Width = 36
        Height = 16
        DataField = 'bairro'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 190
        Top = 61
        Width = 53
        Height = 16
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText8: TRLDBText
        Left = 243
        Top = 61
        Width = 42
        Height = 16
        DataField = 'cidade'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 83
        Width = 64
        Height = 16
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 72
        Top = 83
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel13: TRLLabel
        Left = 190
        Top = 83
        Width = 44
        Height = 16
        Caption = 'Email:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 240
        Top = 83
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel6: TRLLabel
        Left = 3
        Top = 103
        Width = 115
        Height = 16
        Caption = 'Data Nascimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText10: TRLDBText
        Left = 123
        Top = 103
        Width = 98
        Height = 16
        DataField = 'dataNascimento'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 374
        Top = 61
        Width = 25
        Height = 16
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDBText9: TRLDBText
        Left = 405
        Top = 61
        Width = 43
        Height = 16
        DataField = 'estado'
        DataSource = dtsclientesficha
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 133
        Width = 718
        Height = 17
        Align = faClientBottom
        DrawKind = dkLine
      end
    end
  end
  object qryclientesficha: TZQuery
    Connection = dtmConect.ConectDB
    SQL.Strings = (
      'SELECT clienteId,'
      '          Nome,'
      #9#9'  cep,'
      #9#9'  endereco,'
      #9#9'  bairro,'
      #9#9'  cidade,'
      #9#9'  estado,'
      #9#9'  email,'
      #9#9'  telefone,'
      #9#9'  dataNascimento'
      #9' FROM clientes')
    Params = <>
    Left = 632
    Top = 336
    object qryclientesfichaclienteId: TIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object qryclientesfichaNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object qryclientesfichaemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object qryclientesfichatelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
  end
  object dtsclientesficha: TDataSource
    DataSet = qryclientesficha
    Left = 560
    Top = 336
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 496
    Top = 336
  end
end
