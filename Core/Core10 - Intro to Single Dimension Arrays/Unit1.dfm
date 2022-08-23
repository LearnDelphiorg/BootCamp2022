object frmDemo: TfrmDemo
  Left = 0
  Top = 0
  Caption = 'Coding Boot Camp 2022 - Arrays'
  ClientHeight = 382
  ClientWidth = 533
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
  object redDisplay: TRichEdit
    Left = 288
    Top = 16
    Width = 231
    Height = 302
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'redDisplay')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    Zoom = 100
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
  object btnNewTime: TButton
    Left = 81
    Top = 104
    Width = 183
    Height = 49
    Caption = 'Add New Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnNewTimeClick
  end
  object btnDisplayTimes: TButton
    Left = 81
    Top = 159
    Width = 183
    Height = 49
    Caption = 'Display Times'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnDisplayTimesClick
  end
  object btnAvgTime: TButton
    Left = 81
    Top = 214
    Width = 183
    Height = 49
    Caption = 'Average Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnAvgTimeClick
  end
  object btnBestTime: TButton
    Left = 81
    Top = 269
    Width = 183
    Height = 49
    Caption = 'Best Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnBestTimeClick
  end
  object btnSort: TButton
    Left = 81
    Top = 324
    Width = 183
    Height = 50
    Caption = 'Sort Array'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnSortClick
  end
end
