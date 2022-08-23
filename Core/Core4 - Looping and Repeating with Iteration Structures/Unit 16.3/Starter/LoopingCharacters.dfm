object frmLoopingCharacters: TfrmLoopingCharacters
  Left = 0
  Top = 0
  Caption = 'Looping Characters'
  ClientHeight = 517
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblUppercaseHeader: TLabel
    Left = 8
    Top = 9
    Width = 120
    Height = 16
    Caption = 'Uppercase Letters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLowercaseHeader: TLabel
    Left = 211
    Top = 8
    Width = 122
    Height = 16
    Caption = 'Lowercase Letters'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUppercaseAndLowercaseHeader: TLabel
    Left = 384
    Top = 8
    Width = 146
    Height = 16
    Caption = 'Uppercase & Lowercase'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlLowercase: TPanel
    Left = 208
    Top = 28
    Width = 161
    Height = 481
    BevelInner = bvLowered
    Caption = 'pnlLowerCase'
    TabOrder = 0
    object lblFromLower: TLabel
      Left = 43
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
    object lblToLower: TLabel
      Left = 60
      Top = 37
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
    object lblLowercaseCount: TLabel
      Left = 3
      Top = 455
      Width = 99
      Height = 13
      Caption = 'Lowercase Count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLowercaseLetters: TButton
      Left = 12
      Top = 65
      Width = 129
      Height = 33
      Caption = 'Show Lowercase'
      TabOrder = 0
    end
    object lstLower: TListBox
      Left = 12
      Top = 112
      Width = 137
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object pnlLowercaseCount: TPanel
      Left = 108
      Top = 447
      Width = 41
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cboFromLower: TComboBox
      Left = 82
      Top = 7
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'a'
      Items.Strings = (
        'a'
        'b'
        'c'
        'd'
        'e'
        'f'
        'g'
        'h'
        'i'
        'j'
        'k'
        'l'
        'm'
        'n'
        'o'
        'p'
        'q'
        'r'
        's'
        't'
        'u'
        'v'
        'w'
        'x'
        'y'
        'z')
    end
    object cboToLower: TComboBox
      Left = 82
      Top = 34
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemIndex = 25
      TabOrder = 4
      Text = 'z'
      Items.Strings = (
        'a'
        'b'
        'c'
        'd'
        'e'
        'f'
        'g'
        'h'
        'i'
        'j'
        'k'
        'l'
        'm'
        'n'
        'o'
        'p'
        'q'
        'r'
        's'
        't'
        'u'
        'v'
        'w'
        'x'
        'y'
        'z')
    end
  end
  object pnlUppercase: TPanel
    Left = 8
    Top = 28
    Width = 185
    Height = 481
    BevelInner = bvLowered
    Caption = 'Uppercase'
    TabOrder = 1
    object lblFromUpper: TLabel
      Left = 48
      Top = 10
      Width = 32
      Height = 13
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblToUpper: TLabel
      Left = 63
      Top = 37
      Width = 17
      Height = 13
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUppercaseCount: TLabel
      Left = 19
      Top = 455
      Width = 99
      Height = 13
      Caption = 'Uppercase Count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnUppercaseLetters: TButton
      Left = 16
      Top = 64
      Width = 153
      Height = 33
      Caption = 'Show Uppercase'
      TabOrder = 0
    end
    object lstUpper: TListBox
      Left = 16
      Top = 112
      Width = 153
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object pnlUppercaseCount: TPanel
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
      TabOrder = 2
    end
    object cboFromUpper: TComboBox
      Left = 86
      Top = 7
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'A'
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'W'
        'X'
        'Y'
        'Z')
    end
    object cboToUpper: TComboBox
      Left = 86
      Top = 34
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemIndex = 25
      TabOrder = 4
      Text = 'Z'
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'W'
        'X'
        'Y'
        'Z')
    end
  end
  object pnlAllCharacters: TPanel
    Left = 384
    Top = 28
    Width = 161
    Height = 481
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object lblAllCharacterCount: TLabel
      Left = 6
      Top = 455
      Width = 112
      Height = 13
      Caption = 'All Character Count:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnShowUpperAndLower: TButton
      Left = 13
      Top = 65
      Width = 137
      Height = 33
      Caption = 'Show All'
      TabOrder = 0
    end
    object lstUpperAndLower: TListBox
      Left = 13
      Top = 112
      Width = 137
      Height = 329
      ItemHeight = 13
      TabOrder = 1
    end
    object pnlUpperAndLowerCount: TPanel
      Left = 117
      Top = 447
      Width = 33
      Height = 25
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object chkReverse: TCheckBox
      Left = 85
      Top = 33
      Width = 65
      Height = 17
      Caption = 'Reverse'
      TabOrder = 3
    end
  end
end
