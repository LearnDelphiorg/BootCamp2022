object Form1: TForm1
  Left = 214
  Top = 174
  Width = 997
  Height = 724
  VertScrollBar.Range = 210
  Caption = 'Demo of Pandas4D'
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
    Top = 0
    Width = 981
    Height = 486
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 636
  end
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Center = True
    Stretch = True
    OnClick = Image1Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 645
    Width = 981
    Height = 0
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Pitch = fpVariable
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 644
    Width = 981
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 109
      Height = 13
      Caption = 'Select Python version :'
    end
    object Button1: TButton
      Left = 273
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Execute'
      TabOrder = 0
      OnClick = Button1Click
    end
    object cbPyVersions: TComboBox
      Left = 122
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnSelect = cbPyVersionsSelect
    end
    object Button2: TButton
      Left = 441
      Top = 6
      Width = 91
      Height = 25
      Caption = 'Load script...'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 538
      Top = 6
      Width = 90
      Height = 25
      Caption = 'Save script...'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 354
      Top = 6
      Width = 81
      Height = 25
      Caption = 'Show plot'
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object Memo2: TMemo
    Left = 0
    Top = 486
    Width = 981
    Height = 159
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
  object StringGrid1: TStringGrid
    Left = 646
    Top = 39
    Width = 330
    Height = 441
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 646
    Top = 8
    Width = 235
    Height = 21
    TabOrder = 4
  end
  object Button5: TButton
    Left = 887
    Top = 8
    Width = 86
    Height = 25
    Caption = 'Load *.csv file..'
    TabOrder = 5
    OnClick = Button5Click
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    UnicodeIO = True
    RawOutput = False
    Output = Memo2
    Left = 224
    Top = 544
  end
  object OpenDialog1: TOpenDialog
    Left = 328
    Top = 952
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 944
  end
  object OpenDialog2: TOpenDialog
    DefaultExt = '*.csv'
    Left = 744
    Top = 120
  end
end
