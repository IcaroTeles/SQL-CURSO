object formMenu: TformMenu
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 218
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuPrinc
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stbprincipal: TStatusBar
    Left = 0
    Top = 199
    Width = 453
    Height = 19
    Panels = <
      item
        Width = 150
      end>
  end
  object menuPrinc: TMainMenu
    Left = 400
    Top = 96
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object N1: TMenuItem
        Caption = 'CLIENTE'
        OnClick = N1Click
      end
      object CATEGORIA1: TMenuItem
        Caption = '-'
      end
      object PRODUTO1: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = PRODUTO1Click
      end
      object N2: TMenuItem
        Caption = 'PRODUTO'
        OnClick = N2Click
      end
      object FECHAR1: TMenuItem
        Caption = '-'
      end
      object USURIO1: TMenuItem
        Caption = 'USU'#193'RIO'
        OnClick = USURIO1Click
      end
      object ALTERARSENHA1: TMenuItem
        Caption = 'ALTERAR SENHA'
        OnClick = ALTERARSENHA1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object menuFechar: TMenuItem
        Caption = 'FECHAR'
        OnClick = menuFecharClick
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = 'MOVIMENTA'#199#195'O'
      object VENDA1: TMenuItem
        Caption = 'VENDA'
        OnClick = VENDA1Click
      end
    end
    object RELATRIO1: TMenuItem
      Caption = 'RELAT'#211'RIO'
      object CLIENTE1: TMenuItem
        Caption = 'CLIENTES'
        OnClick = CLIENTE1Click
      end
      object FICHACLIENTE1: TMenuItem
        Caption = 'FICHA CLIENTE'
        OnClick = FICHACLIENTE1Click
      end
      object CATEGORIA2: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CATEGORIA2Click
      end
      object CLIENTE2: TMenuItem
        Caption = '-'
      end
      object PRODUTO2: TMenuItem
        Caption = 'PRODUTO'
        OnClick = PRODUTO2Click
      end
      object PRODUTOPORCATEGORIA1: TMenuItem
        Caption = 'PRODUTO POR CATEGORIA'
        OnClick = PRODUTOPORCATEGORIA1Click
      end
      object PRODUTO3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDATA1: TMenuItem
        Caption = 'VENDA POR DATA'
        OnClick = VENDAPORDATA1Click
      end
    end
  end
end
