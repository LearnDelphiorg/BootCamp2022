object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Btngreetings: TButton
    Left = 152
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Click ME!'
    TabOrder = 0
    OnClick = BtngreetingsClick
  end
  object edtGreet: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'type a greeting here'
  end
  object pnlOut: TPanel
    Left = 88
    Top = 144
    Width = 217
    Height = 57
    Caption = 'pnlOut'
    TabOrder = 2
  end
  object edtWho: TEdit
    Left = 280
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtWho'
  end
  object btnAdd: TButton
    Left = 288
    Top = 88
    Width = 75
    Height = 25
    Caption = 'btnAdd'
    TabOrder = 4
    OnClick = btnAddClick
  end
end
