object frmTestExcelChart: TfrmTestExcelChart
  Left = 192
  Top = 124
  Caption = '  Import CSV file -> String grid -> Excel (Chart)'
  ClientHeight = 448
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    603
    448)
  TextHeight = 15
  object Label1: TLabel
    Left = 10
    Top = 123
    Width = 196
    Height = 16
    Caption = 'CSV data parsed into grid cells'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 119
    Top = 97
    Width = 74
    Height = 3
    Brush.Color = clSilver
  end
  object Shape2: TShape
    Left = 371
    Top = 97
    Width = 80
    Height = 3
    Brush.Color = clSilver
  end
  object btnImport: TButton
    Left = 203
    Top = 86
    Width = 162
    Height = 25
    Caption = 'Import CSV file to Grid'
    TabOrder = 0
    OnClick = btnImportClick
  end
  object memCSV: TMemo
    Left = 8
    Top = 8
    Width = 588
    Height = 72
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnGridToExcel: TButton
    Left = 462
    Top = 86
    Width = 133
    Height = 25
    Caption = 'Export Grid to Excel'
    TabOrder = 2
    OnClick = btnGridToExcelClick
  end
  object strgData: TStringGrid
    Left = 0
    Top = 144
    Width = 603
    Height = 304
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DefaultRowHeight = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    ParentFont = False
    TabOrder = 3
  end
  object btnRead: TButton
    Left = 8
    Top = 86
    Width = 105
    Height = 25
    Caption = 'Read CSV file'
    TabOrder = 4
    OnClick = btnReadClick
  end
  object btnChart: TButton
    Left = 462
    Top = 113
    Width = 133
    Height = 25
    Caption = 'Add Chart!'
    TabOrder = 5
    OnClick = btnChartClick
  end
end
