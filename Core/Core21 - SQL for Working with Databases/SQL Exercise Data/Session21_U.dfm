object frmSession21Ex1: TfrmSession21Ex1
  Left = 0
  Top = 0
  Caption = 'Session 21 - Ex 1'
  ClientHeight = 514
  ClientWidth = 979
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 22
    Top = 160
    Width = 931
    Height = 346
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'SQL'
      object dbgSQL: TDBGrid
        Left = 24
        Top = 16
        Width = 865
        Height = 137
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 24
        Top = 184
        Width = 865
        Height = 125
        Color = clSilver
        ParentBackground = False
        TabOrder = 1
        object btnQ1_2: TButton
          Left = 208
          Top = 24
          Width = 121
          Height = 41
          Caption = 'Q1_2'
          TabOrder = 0
          OnClick = btnQ1_2Click
        end
        object btnQ1_3: TButton
          Left = 352
          Top = 24
          Width = 113
          Height = 41
          Caption = 'Q1_3'
          TabOrder = 1
          OnClick = btnQ1_3Click
        end
        object btnQ1_4: TButton
          Left = 496
          Top = 24
          Width = 105
          Height = 41
          Caption = 'Q1_4'
          TabOrder = 2
          OnClick = btnQ1_4Click
        end
        object btnQ1_5: TButton
          Left = 624
          Top = 24
          Width = 105
          Height = 41
          Caption = 'Q1_5'
          TabOrder = 3
          OnClick = btnQ1_5Click
        end
        object btnQ1_6: TButton
          Left = 760
          Top = 24
          Width = 97
          Height = 41
          Caption = 'Q1_6'
          TabOrder = 4
          OnClick = btnQ1_6Click
        end
        object btnQ1_1: TButton
          Left = 48
          Top = 24
          Width = 121
          Height = 41
          Caption = 'Q1_1'
          TabOrder = 5
          OnClick = btnClick
        end
        object btnQ1_7: TButton
          Left = 48
          Top = 71
          Width = 121
          Height = 42
          Caption = 'Q1_7'
          TabOrder = 6
          OnClick = btnQ1_7Click
        end
        object btnQ1_8: TButton
          Left = 208
          Top = 71
          Width = 121
          Height = 42
          Caption = 'Q1_8'
          TabOrder = 7
          OnClick = btnQ1_8Click
        end
        object btnQ1_9: TButton
          Left = 352
          Top = 71
          Width = 113
          Height = 42
          Caption = 'Q1_9'
          TabOrder = 8
          OnClick = btnQ1_9Click
        end
        object btnQ1_10: TButton
          Left = 496
          Top = 71
          Width = 105
          Height = 42
          Caption = 'Q1_10'
          TabOrder = 9
          OnClick = btnQ1_10Click
        end
      end
    end
  end
  object dbgViolations: TDBGrid
    Left = 22
    Top = 8
    Width = 931
    Height = 153
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid1: TDBGrid
    Left = 1008
    Top = 480
    Width = 320
    Height = 120
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
