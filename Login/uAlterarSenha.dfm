object frmalterarsenha: Tfrmalterarsenha
  Left = 0
  Top = 0
  Caption = 'Alterar Senha'
  ClientHeight = 201
  ClientWidth = 214
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
  object edtsenhaatual: TLabeledEdit
    Left = 32
    Top = 32
    Width = 156
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha Atual'
    PasswordChar = '*'
    TabOrder = 0
  end
  object edtsenhanova: TLabeledEdit
    Left = 32
    Top = 80
    Width = 156
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha Nova'
    PasswordChar = '*'
    TabOrder = 1
  end
  object edtrepetirnovasenha: TLabeledEdit
    Left = 32
    Top = 123
    Width = 156
    Height = 21
    EditLabel.Width = 96
    EditLabel.Height = 13
    EditLabel.Caption = 'Repetir Senha Nova'
    PasswordChar = '*'
    TabOrder = 2
  end
  object btnfechar: TButton
    Left = 113
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnfecharClick
  end
  object btnalterarsenha: TButton
    Left = 32
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btnalterarsenhaClick
  end
end
