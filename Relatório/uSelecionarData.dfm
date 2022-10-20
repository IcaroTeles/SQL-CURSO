object frmselecionardata: Tfrmselecionardata
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecionar Data'
  ClientHeight = 88
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 8
    Top = 9
    Width = 51
    Height = 13
    Caption = 'Data In'#237'cio'
  end
  object Label1: TLabel
    Left = 160
    Top = 9
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object edtdatainicio: TDateEdit
    Left = 8
    Top = 28
    Width = 121
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a Data'
    NumGlyphs = 2
    CalendarStyle = csDialog
    TabOrder = 0
  end
  object edtdatafinal: TDateEdit
    Left = 160
    Top = 28
    Width = 121
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a Data'
    NumGlyphs = 2
    CalendarStyle = csDialog
    TabOrder = 1
  end
  object btnok: TBitBtn
    Left = 72
    Top = 55
    Width = 145
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = btnokClick
  end
end
