object frmBasicForLoops: TfrmBasicForLoops
  Left = 0
  Top = 0
  Caption = 'For Loops'
  ClientHeight = 517
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCountUp: TPanel
    Left = 216
    Top = 28
    Width = 153
    Height = 481
    BevelInner = bvLowered
    Caption = 'pnlCountUp'
    TabOrder = 0
    object lblFrom: TLabel
      Left = 16
      Top = 10
      Width = 29
      Height = 13
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTo: TLabel
      Left = 16
      Top = 42
      Width = 14
      Height = 13
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUpNumberCount: TLabel
      Left = 23
      Top = 455
      Width = 71
      Height = 13
      Caption = 'Up Numbers:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCountUp: TButton
      Left = 8
      Top = 67
      Width = 129
      Height = 33
      Caption = 'List Numbers'
      TabOrder = 0
      OnClick = btnCountUpClick
    end
    object lstCountUp: TListBox
      Left = 8
      Top = 112
      Width = 137
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object sedStartNumber: TSpinEdit
      Left = 64
      Top = 7
      Width = 57
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object sedEndNumber: TSpinEdit
      Left = 64
      Top = 39
      Width = 57
      Height = 22
      MaxValue = 100
      MinValue = 0
      TabOrder = 3
      Value = 10
    end
    object pnlUpNumberCount: TPanel
      Left = 100
      Top = 447
      Width = 45
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlRepeatWord: TPanel
    Left = 8
    Top = 28
    Width = 185
    Height = 481
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 1
    object lblWord: TLabel
      Left = 16
      Top = 12
      Width = 30
      Height = 13
      Caption = 'Word'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRepetitions: TLabel
      Left = 16
      Top = 39
      Width = 61
      Height = 13
      Caption = 'Repititions'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblWordCount: TLabel
      Left = 40
      Top = 455
      Width = 69
      Height = 13
      Caption = 'Word Count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnRepeatWord: TButton
      Left = 16
      Top = 64
      Width = 153
      Height = 33
      Caption = 'Repeat Word'
      TabOrder = 0
      OnClick = btnRepeatWordClick
    end
    object lstWords: TListBox
      Left = 16
      Top = 112
      Width = 153
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object sedRepetitions: TSpinEdit
      Left = 128
      Top = 36
      Width = 41
      Height = 22
      MaxValue = 100
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object edtWord: TEdit
      Left = 52
      Top = 9
      Width = 117
      Height = 21
      TabOrder = 3
    end
    object pnlWordCount: TPanel
      Left = 124
      Top = 447
      Width = 45
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlCountDown: TPanel
    Left = 392
    Top = 28
    Width = 153
    Height = 481
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object lblDownFrom: TLabel
      Left = 16
      Top = 10
      Width = 29
      Height = 13
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlDownTo: TLabel
      Left = 16
      Top = 42
      Width = 48
      Height = 13
      Caption = 'Down To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDownNumberCount: TLabel
      Left = 8
      Top = 455
      Width = 87
      Height = 13
      Caption = 'Down Numbers:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCountDown: TButton
      Left = 8
      Top = 65
      Width = 137
      Height = 33
      Caption = 'List Numbers in Reverse'
      TabOrder = 0
      OnClick = btnCountDownClick
    end
    object lstCountDown: TListBox
      Left = 8
      Top = 112
      Width = 137
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object sedMaxNumber: TSpinEdit
      Left = 72
      Top = 7
      Width = 57
      Height = 22
      MaxValue = 100
      MinValue = 0
      TabOrder = 2
      Value = 10
    end
    object sedMinNumber: TSpinEdit
      Left = 73
      Top = 35
      Width = 57
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object pnlDownNumberCount: TPanel
      Left = 100
      Top = 447
      Width = 45
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
end
