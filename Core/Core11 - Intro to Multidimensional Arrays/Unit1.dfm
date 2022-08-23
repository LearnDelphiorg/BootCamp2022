object frmDemo: TfrmDemo
  Left = 0
  Top = 0
  Caption = 'Coding Boot Camp 2022 - 2D Arrays'
  ClientHeight = 373
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblNewTime: TLabel
    Left = 16
    Top = 16
    Width = 169
    Height = 25
    Caption = 'Enter a new time:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPosition: TLabel
    Left = 81
    Top = 55
    Width = 104
    Height = 25
    Caption = 'at position:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblWeek: TLabel
    Left = 97
    Top = 96
    Width = 88
    Height = 25
    Caption = 'for week:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object sedPosition: TSpinEdit
    Left = 191
    Top = 52
    Width = 73
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 0
    Value = 3
  end
  object edtTime: TEdit
    Left = 191
    Top = 13
    Width = 73
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '12.05'
  end
  object btnChangeTime: TButton
    Left = 81
    Top = 134
    Width = 183
    Height = 49
    Caption = 'Change Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnChangeTimeClick
  end
  object btnWeeklyAvg: TButton
    Left = 81
    Top = 244
    Width = 183
    Height = 49
    Caption = 'Weekly Average'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnWeeklyAvgClick
  end
  object btnBestTime: TButton
    Left = 81
    Top = 189
    Width = 183
    Height = 49
    Caption = 'Best Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnBestTimeClick
  end
  object sedWeek: TSpinEdit
    Left = 191
    Top = 93
    Width = 73
    Height = 35
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 5
    Value = 4
  end
  object sgdData: TStringGrid
    Left = 288
    Top = 16
    Width = 312
    Height = 294
    DefaultColWidth = 70
    DefaultRowHeight = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btnDisplayCodes: TButton
    Left = 447
    Top = 316
    Width = 153
    Height = 49
    Caption = 'Display Codes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnDisplayCodesClick
  end
  object btnDisplayTimes: TButton
    Left = 288
    Top = 316
    Width = 153
    Height = 49
    Caption = 'Display Times'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnDisplayTimesClick
  end
  object redDisplay: TRichEdit
    Left = 606
    Top = 16
    Width = 161
    Height = 294
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redDisplay')
    ParentFont = False
    TabOrder = 9
    Zoom = 100
  end
end
