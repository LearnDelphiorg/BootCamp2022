object Form1: TForm1
  Left = 214
  Top = 174
  Width = 637
  Height = 565
  VertScrollBar.Range = 210
  Caption = 'Demo of Scrapy4D'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 11
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpVariable
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 485
    Width = 621
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 169
    ExplicitWidth = 584
  end
  object Memo1: TMemo
    Left = 0
    Top = 488
    Width = 621
    Height = 3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Pitch = fpVariable
    Font.Style = []
    Lines.Strings = ('')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 485
    Width = 621
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 109
      Height = 13
      Caption = 'Select Python version :'
    end
    object Button1: TButton
      Left = 336
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Execute'
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbPyVersions: TComboBox
      Left = 144
      Top = 6
      Width = 161
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnSelect = cbPyVersionsSelect
    end
    object Button2: TButton
      Left = 417
      Top = 6
      Width = 91
      Height = 25
      Caption = 'Load script...'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 514
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Save script...'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Memo2: TMemo
    Left = 0
    Top = 0
    Width = 621
    Height = 485
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo2
    Left = 136
    Top = 16
  end
  object OpenDialog1: TOpenDialog
    Left = 288
    Top = 272
  end
  object SaveDialog1: TSaveDialog
    Left = 352
    Top = 272
  end
end
