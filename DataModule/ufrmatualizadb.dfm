object frmatualizadb: Tfrmatualizadb
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmatualizadb'
  ClientHeight = 240
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 240
    Align = alClient
    BevelOuter = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    Caption = 'Panel1'
    Color = clBackground
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 6
      Top = 6
      Width = 451
      Height = 228
      Align = alClient
      BevelOuter = bvNone
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 12
      ExplicitTop = -10
      object Label1: TLabel
        Left = 112
        Top = 24
        Width = 235
        Height = 23
        Caption = 'Atualiza'#231#227'o Banco de Dados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object chkconexao: TCheckBox
        Left = 112
        Top = 58
        Width = 193
        Height = 17
        Caption = 'Conex'#227'o com Banco de Dados'
        TabOrder = 0
      end
      object chkcategoria: TCheckBox
        Left = 112
        Top = 83
        Width = 193
        Height = 17
        Caption = 'Categoria'
        TabOrder = 1
      end
      object chkclientes: TCheckBox
        Left = 112
        Top = 106
        Width = 193
        Height = 17
        Caption = 'Clientes'
        TabOrder = 2
      end
      object chkprodutos: TCheckBox
        Left = 112
        Top = 129
        Width = 193
        Height = 17
        Caption = 'Produtos'
        TabOrder = 3
      end
      object chkvendas: TCheckBox
        Left = 112
        Top = 152
        Width = 193
        Height = 17
        Caption = 'Vendas'
        TabOrder = 4
      end
      object chkitens: TCheckBox
        Left = 112
        Top = 175
        Width = 193
        Height = 17
        Caption = 'Itens'
        TabOrder = 5
      end
    end
  end
end
