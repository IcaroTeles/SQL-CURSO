object formMenu: TformMenu
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 201
  ClientWidth = 447
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
  PixelsPerInch = 96
  TextHeight = 13
  object menuPrinc: TMainMenu
    Left = 400
    Top = 160
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
        Caption = 'CLIENTE'
      end
      object CLIENTE2: TMenuItem
        Caption = '-'
      end
      object PRODUTO2: TMenuItem
        Caption = 'PRODUTO'
      end
      object PRODUTO3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDATA1: TMenuItem
        Caption = 'VENDA POR DATA'
      end
    end
  end
end
