object frmMyFirstProgram: TfrmMyFirstProgram
  Left = 0
  Top = 0
  Caption = 'My First Program'
  ClientHeight = 516
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -22
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 30
  object imgBootCamp: TImage
    Left = 136
    Top = 40
    Width = 577
    Height = 217
  end
  object lblFirst: TLabel
    Left = 472
    Top = 336
    Width = 40
    Height = 30
    Caption = 'First'
  end
  object btnRun: TButton
    Left = 136
    Top = 304
    Width = 193
    Height = 97
    Caption = 'Run'
    TabOrder = 0
    OnClick = btnRunClick
  end
end
