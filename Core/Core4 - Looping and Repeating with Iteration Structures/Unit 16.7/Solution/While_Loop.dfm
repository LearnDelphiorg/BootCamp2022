object frmWhileLoop: TfrmWhileLoop
  Left = 0
  Top = 0
  Caption = 'Exploring While-Loops....'
  ClientHeight = 195
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lstResult: TListBox
    Left = 175
    Top = 8
    Width = 289
    Height = 169
    ItemHeight = 13
    TabOrder = 0
  end
  object btnWhileLoop: TButton
    Left = 16
    Top = 56
    Width = 137
    Height = 25
    Caption = 'While Loop'
    TabOrder = 1
    OnClick = btnWhileLoopClick
  end
  object btnForLoop: TButton
    Left = 16
    Top = 18
    Width = 137
    Height = 25
    Caption = 'For Loop'
    TabOrder = 2
    OnClick = btnForLoopClick
  end
end
