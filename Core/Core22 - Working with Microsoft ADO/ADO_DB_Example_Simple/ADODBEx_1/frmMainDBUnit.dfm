object frmDBExample: TfrmDBExample
  Left = 0
  Top = 0
  Caption = 'ADO DB Example'
  ClientHeight = 441
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 20
  object DBText1: TDBText
    Left = 64
    Top = 296
    Width = 65
    Height = 17
  end
  object dbgrdInstructors: TDBGrid
    Left = 8
    Top = 40
    Width = 977
    Height = 153
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavInstructors: TDBNavigator
    Left = 8
    Top = 208
    Width = 240
    Height = 25
    TabOrder = 1
  end
  object btnFirst: TButton
    Left = 280
    Top = 209
    Width = 75
    Height = 25
    Caption = '<<'
    TabOrder = 2
    OnClick = btnFirstClick
  end
  object btnPrior: TButton
    Left = 361
    Top = 209
    Width = 75
    Height = 25
    Caption = '<'
    TabOrder = 3
    OnClick = btnPriorClick
  end
  object btnNext: TButton
    Left = 442
    Top = 209
    Width = 75
    Height = 25
    Caption = '>'
    TabOrder = 4
    OnClick = btnNextClick
  end
  object btnLast: TButton
    Left = 523
    Top = 209
    Width = 75
    Height = 25
    Caption = '>>'
    TabOrder = 5
    OnClick = btnLastClick
  end
  object btnSalDet: TButton
    Left = 624
    Top = 209
    Width = 337
    Height = 25
    Caption = 'Salary PA > 140 000 (Dataset)'
    TabOrder = 6
    OnClick = btnSalDetClick
  end
  object btnSalDetQry: TButton
    Left = 624
    Top = 240
    Width = 337
    Height = 25
    Caption = 'Salary PA > 140 000 (Query)'
    TabOrder = 7
    OnClick = btnSalDetQryClick
  end
  object DBEdit1: TDBEdit
    Left = 216
    Top = 293
    Width = 177
    Height = 28
    TabOrder = 8
  end
  object btnIncreaseSalPA: TButton
    Left = 624
    Top = 319
    Width = 337
    Height = 25
    Caption = 'Increase Sal PA +  2000'
    TabOrder = 9
    OnClick = btnIncreaseSalPAClick
  end
  object btnSalQryWithParameter: TButton
    Left = 624
    Top = 271
    Width = 337
    Height = 25
    Caption = 'Salary PA >  (Query with Parameter)'
    TabOrder = 10
    OnClick = btnSalQryWithParameterClick
  end
end
