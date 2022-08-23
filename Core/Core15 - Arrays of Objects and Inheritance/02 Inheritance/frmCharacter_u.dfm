object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 705
  ClientWidth = 1338
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Consolas'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 37
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 1314
    Height = 105
    Caption = 'Characters'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 856
    Top = 119
    Width = 465
    Height = 562
    TabOrder = 1
    object rdgMage: TRadioGroup
      Left = 25
      Top = 24
      Width = 408
      Height = 169
      Caption = 'Mage'
      TabOrder = 0
      OnClick = rdgMageClick
    end
    object redOutput: TRichEdit
      Left = 24
      Top = 360
      Width = 409
      Height = 185
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object rdgKnight: TRadioGroup
      Left = 25
      Top = 192
      Width = 408
      Height = 169
      Caption = 'Knight'
      TabOrder = 2
      OnClick = rdgMageClick
    end
  end
  object PageControl1: TPageControl
    Left = 16
    Top = 119
    Width = 809
    Height = 562
    ActivePage = TabSheet2
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Create characters'
      object Label1: TLabel
        Left = 48
        Top = 131
        Width = 72
        Height = 37
        Caption = 'Type'
      end
      object Label2: TLabel
        Left = 48
        Top = 219
        Width = 108
        Height = 37
        Caption = 'Health'
      end
      object edtName: TLabeledEdit
        Left = 136
        Top = 48
        Width = 297
        Height = 45
        EditLabel.Width = 72
        EditLabel.Height = 37
        EditLabel.Caption = 'Name'
        LabelPosition = lpLeft
        LabelSpacing = 15
        TabOrder = 0
        Text = ''
      end
      object cmbType: TComboBox
        Left = 136
        Top = 128
        Width = 297
        Height = 45
        TabOrder = 1
        Items.Strings = (
          'Mage'
          'Knight')
      end
      object speHealth: TSpinEdit
        Left = 176
        Top = 216
        Width = 297
        Height = 48
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object btnCreate: TButton
        Left = 272
        Top = 344
        Width = 369
        Height = 65
        Caption = 'Create Character'
        TabOrder = 3
        OnClick = btnCreateClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Mage'
      ImageIndex = 1
      object Label3: TLabel
        Left = 32
        Top = 83
        Width = 72
        Height = 37
        Caption = 'Name'
      end
      object Label4: TLabel
        Left = 32
        Top = 219
        Width = 180
        Height = 37
        Caption = 'Magic type'
      end
      object Label5: TLabel
        Left = 32
        Top = 360
        Width = 90
        Height = 37
        Caption = 'Level'
      end
      object edtMageName: TEdit
        Left = 240
        Top = 80
        Width = 233
        Height = 45
        TabOrder = 0
      end
      object edtMagicType: TEdit
        Left = 240
        Top = 216
        Width = 233
        Height = 45
        TabOrder = 1
      end
      object speLevel: TSpinEdit
        Left = 240
        Top = 344
        Width = 233
        Height = 48
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object btnMage: TButton
        Left = 296
        Top = 424
        Width = 209
        Height = 57
        Caption = 'Mage'
        TabOrder = 3
        OnClick = btnMageClick
      end
    end
    object Knight: TTabSheet
      Caption = 'Knight'
      ImageIndex = 2
    end
  end
end
