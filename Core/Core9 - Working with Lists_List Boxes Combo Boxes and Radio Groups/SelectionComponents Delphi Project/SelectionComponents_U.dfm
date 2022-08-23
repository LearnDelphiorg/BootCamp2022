object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Selection Component in Delphi'
  ClientHeight = 446
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object PageControl1: TPageControl
    Left = 8
    Top = 0
    Width = 609
    Height = 438
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'List Boxes'
      object Panel1: TPanel
        Left = 191
        Top = 203
        Width = 393
        Height = 206
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        object btnSaveToFile: TButton
          Left = 224
          Top = 160
          Width = 153
          Height = 41
          Caption = 'SaveToFile'
          TabOrder = 0
          OnClick = btnSaveToFileClick
        end
        object lstNames: TListBox
          Left = 216
          Top = 16
          Width = 161
          Height = 138
          ItemHeight = 19
          Items.Strings = (
            'Sam'
            'Jen'
            'Penny'
            'Lamara'
            'Greg')
          TabOrder = 1
        end
        object lstFlowers: TListBox
          Left = 32
          Top = 15
          Width = 169
          Height = 137
          ItemHeight = 19
          TabOrder = 2
        end
        object btnLoadFromFile: TButton
          Left = 41
          Top = 158
          Width = 129
          Height = 41
          Caption = 'LoadFromFile'
          TabOrder = 3
          OnClick = btnLoadFromFileClick
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 414
        Color = clMedGray
        ParentBackground = False
        TabOrder = 1
        object btnAdd: TButton
          Left = 24
          Top = 193
          Width = 145
          Height = 25
          Caption = 'Add an item'
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnInsert: TButton
          Left = 24
          Top = 232
          Width = 145
          Height = 25
          Caption = 'Insert an item'
          TabOrder = 1
          OnClick = btnInsertClick
        end
        object btnDelete: TButton
          Left = 24
          Top = 279
          Width = 145
          Height = 25
          Caption = 'Delete an item'
          TabOrder = 2
          OnClick = btnDeleteClick
        end
        object btnClear: TButton
          Left = 24
          Top = 351
          Width = 137
          Height = 25
          Caption = 'CLEAR'
          TabOrder = 3
          OnClick = btnClearClick
        end
        object lstFruit: TListBox
          Left = 16
          Top = 16
          Width = 161
          Height = 153
          ItemHeight = 19
          Items.Strings = (
            'Apple '
            'Banana'
            'Pear'
            'Guava'
            'Pineapple')
          TabOrder = 4
        end
        object btnNoSelection: TButton
          Left = 24
          Top = 320
          Width = 145
          Height = 25
          Caption = 'No selection made'
          TabOrder = 5
          OnClick = btnNoSelectionClick
        end
      end
      object Panel3: TPanel
        Left = 191
        Top = 0
        Width = 393
        Height = 202
        Color = clMedGray
        ParentBackground = False
        TabOrder = 2
        object btnTotalItems: TButton
          Left = 16
          Top = 19
          Width = 177
          Height = 25
          Caption = 'Number of items'
          TabOrder = 0
          OnClick = btnTotalItemsClick
        end
        object btnIndexOfItem: TButton
          Left = 16
          Top = 172
          Width = 169
          Height = 25
          Caption = 'IndexOfIitem'
          TabOrder = 1
          OnClick = btnIndexOfItemClick
        end
        object btnPositionOfItem: TButton
          Left = 16
          Top = 67
          Width = 177
          Height = 25
          Caption = 'Position of item selected'
          TabOrder = 2
          OnClick = btnPositionOfItemClick
        end
        object btnItemSelected: TButton
          Left = 16
          Top = 115
          Width = 169
          Height = 25
          Caption = 'Item selected'
          TabOrder = 3
          OnClick = btnItemSelectedClick
        end
        object edtIndexOfItem: TEdit
          Left = 216
          Top = 172
          Width = 169
          Height = 27
          TabOrder = 4
        end
        object edtItemSelected: TEdit
          Left = 216
          Top = 114
          Width = 169
          Height = 27
          TabOrder = 5
        end
        object edtNumItems: TEdit
          Left = 216
          Top = 18
          Width = 169
          Height = 27
          TabOrder = 6
        end
        object edtPosOfItem: TEdit
          Left = 216
          Top = 66
          Width = 169
          Height = 27
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ComboBoxes'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 3
        Width = 601
        Height = 398
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        object btnMove1: TButton
          Left = 3
          Top = 248
          Width = 166
          Height = 25
          Caption = 'Move 1 item at a time'
          TabOrder = 0
          OnClick = btnMove1Click
        end
        object btnItemSelectedCMB: TButton
          Left = 3
          Top = 72
          Width = 153
          Height = 25
          Caption = 'Extract item selected'
          TabOrder = 1
          OnClick = btnItemSelectedCMBClick
        end
        object cmbMenu: TComboBox
          Left = 3
          Top = 16
          Width = 177
          Height = 27
          TabOrder = 2
          Text = 'Select from menu'
          Items.Strings = (
            'Burger'
            'Pizza'
            'Sandwich'
            'Pasta'
            'Curry and rice'
            'Salad')
        end
        object btnCopyAll: TButton
          Left = 3
          Top = 200
          Width = 177
          Height = 25
          Caption = 'Copy all items'
          TabOrder = 3
          OnClick = btnCopyAllClick
        end
        object lstMenu: TListBox
          Left = 253
          Top = 144
          Width = 172
          Height = 193
          ItemHeight = 19
          TabOrder = 4
        end
        object btnMoveAll: TButton
          Left = 16
          Top = 296
          Width = 153
          Height = 25
          Caption = 'Move all items'
          TabOrder = 5
          OnClick = btnMoveAllClick
        end
        object edtMenuSelected: TEdit
          Left = 184
          Top = 71
          Width = 273
          Height = 27
          TabOrder = 6
        end
        object btnCopy1: TButton
          Left = 3
          Top = 144
          Width = 198
          Height = 25
          Caption = 'Copy 1 item at a time'
          TabOrder = 7
          OnClick = btnCopy1Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Radio groups'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 3
        Top = 3
        Width = 598
        Height = 398
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object rgpMenu: TRadioGroup
          Left = 11
          Top = 48
          Width = 542
          Height = 65
          Caption = 'Select from menu'
          Columns = 4
          Items.Strings = (
            'Burger'
            'Pizza'
            'Sandwich'
            'Pasta')
          TabOrder = 0
        end
      end
    end
  end
end
