object frmTransform: TfrmTransform
  Left = 190
  Top = 119
  Caption = '  Merge ANSI text into image & retrieve it again'
  ClientHeight = 525
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 811
    Height = 465
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '   MERGE text into BMP    '
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      DesignSize = (
        803
        436)
      object imgPic: TImage
        Left = 16
        Top = 40
        Width = 209
        Height = 345
      end
      object lblEncrypt: TLabel
        Left = 112
        Top = 400
        Width = 72
        Height = 14
        Caption = 'MERGING  [%]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCapac: TLabel
        Left = 112
        Top = 416
        Width = 77
        Height = 14
        Caption = 'Capacity used'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTSize: TLabel
        Left = 428
        Top = 79
        Width = 29
        Height = 14
        Caption = 'Size: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCache: TLabel
        Left = 413
        Top = 387
        Width = 250
        Height = 14
        Caption = 'Caching text to memory and marking with eoL && eoF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblChars: TLabel
        Left = 244
        Top = 387
        Width = 6
        Height = 14
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 240
        Top = 20
        Width = 78
        Height = 14
        Caption = 'Bitmap Details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 428
        Top = 20
        Width = 80
        Height = 14
        Caption = 'Textfile Details'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lstInfo: TListBox
        Left = 232
        Top = 40
        Width = 177
        Height = 97
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
      end
      object btnLoadPic: TButton
        Left = 16
        Top = 8
        Width = 209
        Height = 25
        Caption = '1. Load Picture'
        TabOrder = 1
        OnClick = btnLoadPicClick
      end
      object mmText: TMemo
        Left = 232
        Top = 146
        Width = 568
        Height = 239
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 2
        WordWrap = False
      end
      object btnLoadText: TButton
        Left = 428
        Top = 112
        Width = 90
        Height = 25
        Caption = '2. Load Text'
        TabOrder = 3
        OnClick = btnLoadTextClick
      end
      object btnMerge: TButton
        Left = 695
        Top = 112
        Width = 90
        Height = 25
        Caption = '3. Merge!'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = btnMergeClick
      end
      object btnSaveNew: TButton
        Left = 677
        Top = 405
        Width = 123
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '4. Save Pic 2 File'
        TabOrder = 5
        OnClick = btnSaveNewClick
      end
      object prgCaps: TProgressBar
        Left = 232
        Top = 421
        Width = 433
        Height = 9
        Anchors = [akLeft, akTop, akRight]
        Smooth = True
        Step = 1
        TabOrder = 6
      end
      object prgEncrypt: TProgressBar
        Left = 232
        Top = 405
        Width = 433
        Height = 9
        Anchors = [akLeft, akTop, akRight]
        Smooth = True
        Step = 1
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = '    EXTRACT text from BMP    '
      ImageIndex = 1
      DesignSize = (
        803
        436)
      object Label5: TLabel
        Left = 8
        Top = 14
        Width = 96
        Height = 16
        Caption = 'Encoded Image'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object imgCoded: TImage
        Left = 0
        Top = 41
        Width = 201
        Height = 345
      end
      object Label8: TLabel
        Left = 3
        Top = 418
        Width = 134
        Height = 13
        Caption = 'Chars extracted from BMP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblRead: TLabel
        Left = 141
        Top = 417
        Width = 7
        Height = 15
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnDecode: TButton
        Left = 296
        Top = 8
        Width = 137
        Height = 25
        Caption = 'Decode / Extract data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnDecodeClick
      end
      object mmDecoded: TMemo
        Left = 208
        Top = 41
        Width = 594
        Height = 393
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object btnLoad: TButton
        Left = 128
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Load Image'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnLoadClick
      end
      object btnSave: TButton
        Left = 464
        Top = 8
        Width = 90
        Height = 25
        Caption = 'Save to File'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnSaveClick
      end
      object edtFName: TEdit
        Left = 560
        Top = 10
        Width = 137
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'ExtractedANSItext.txt'
      end
    end
  end
  object stsInfo: TStatusBar
    Left = 0
    Top = 506
    Width = 811
    Height = 19
    Panels = <
      item
        Width = 450
      end
      item
        Text = '  Save file name: '
        Width = 0
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 41
    Align = alTop
    Color = clCream
    TabOrder = 2
    object lblFinish: TLabel
      Left = 507
      Top = 12
      Width = 175
      Height = 23
      Caption = 'Process Finished! '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Visible = False
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 8
  end
end
