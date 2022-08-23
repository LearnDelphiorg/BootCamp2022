object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Music Delphi'
  ClientHeight = 458
  ClientWidth = 655
  Color = clSkyBlue
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Rounded MT Bold'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 655
    Height = 24
    Align = alTop
    Caption = 'Music Delphi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 130
  end
  object Label3: TLabel
    Left = 48
    Top = 148
    Width = 54
    Height = 18
    Caption = 'Label3'
  end
  object BitBtn1: TBitBtn
    Left = 568
    Top = 3
    Width = 95
    Height = 41
    Kind = bkClose
    Layout = blGlyphTop
    NumGlyphs = 2
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 24
    Width = 655
    Height = 434
    ActivePage = tabArtistInfo
    Align = alClient
    TabOrder = 1
    object tabArtistStatistics: TTabSheet
      Caption = 'Artist Statistics'
      object Label5: TLabel
        Left = 232
        Top = 280
        Width = 117
        Height = 18
        Caption = 'Most Listeners'
      end
      object Label7: TLabel
        Left = 232
        Top = 318
        Width = 96
        Height = 18
        Caption = 'Most Played'
      end
      object Label8: TLabel
        Left = 232
        Top = 360
        Width = 86
        Height = 18
        Caption = 'Newcomer'
      end
      object grdArtists: TStringGrid
        Left = 3
        Top = 3
        Width = 641
        Height = 262
        ColCount = 4
        DefaultColWidth = 150
        TabOrder = 0
      end
      object btnLoad: TButton
        Left = 3
        Top = 271
        Width = 158
        Height = 34
        Caption = 'Load Artists'
        TabOrder = 1
        OnClick = btnLoadClick
      end
      object btnClear: TButton
        Left = 3
        Top = 311
        Width = 158
        Height = 34
        Caption = 'Clear'
        TabOrder = 2
        OnClick = btnClearClick
      end
      object btnStats: TButton
        Left = 0
        Top = 351
        Width = 161
        Height = 34
        Caption = 'Show Stats'
        TabOrder = 3
      end
      object edtMostListeners: TEdit
        Left = 355
        Top = 271
        Width = 270
        Height = 26
        TabOrder = 4
        Text = 'edtMostListeners'
      end
      object edtMostPlayed: TEdit
        Left = 355
        Top = 315
        Width = 270
        Height = 26
        TabOrder = 5
        Text = 'edtMostPlayed'
      end
      object edtNewComer: TEdit
        Left = 355
        Top = 360
        Width = 270
        Height = 26
        TabOrder = 6
        Text = 'edtNewComer'
      end
    end
    object tabXMLJson: TTabSheet
      Caption = 'XML and JSON'
      ImageIndex = 2
      object btnGet: TBitBtn
        Left = 464
        Top = 19
        Width = 177
        Height = 34
        Caption = 'btnGet'
        TabOrder = 0
        OnClick = btnGetClick
      end
      object edtArtistNameXMLJson: TEdit
        Left = 24
        Top = 23
        Width = 193
        Height = 26
        TabOrder = 1
        Text = 'edtArtistNameXMLJson'
      end
      object cmbRequestType: TComboBox
        Left = 249
        Top = 23
        Width = 193
        Height = 26
        TabOrder = 2
        Text = 'cmbRequestType'
        Items.Strings = (
          'XML'
          'Json')
      end
      object redtXMLJson: TRichEdit
        Left = 24
        Top = 72
        Width = 617
        Height = 345
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Lines.Strings = (
          'redtXMLJson')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 3
        Zoom = 100
      end
    end
    object tabArtistInfo: TTabSheet
      Caption = 'Artist Information'
      ImageIndex = 1
      object lblArtistName: TLabel
        Left = 16
        Top = 94
        Width = 108
        Height = 18
        Caption = 'lblArtistName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 352
        Top = 94
        Width = 102
        Height = 18
        Caption = 'Year Formed'
      end
      object Label4: TLabel
        Left = 352
        Top = 192
        Width = 86
        Height = 18
        Caption = 'Play Count'
      end
      object Label6: TLabel
        Left = 352
        Top = 142
        Width = 75
        Height = 18
        Caption = 'Listeners'
      end
      object edtSearchArtist: TEdit
        Left = 16
        Top = 21
        Width = 313
        Height = 26
        TabOrder = 0
        Text = 'edtSearchArtist'
      end
      object btnSearch: TBitBtn
        Left = 352
        Top = 17
        Width = 289
        Height = 36
        Caption = 'Search'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF3333333333333003333333333333377F333333333333
          30003FFFFFFFFFFFF77707777777777777707777777777777777033333333333
          33307FFFFFFFFFFFFFF707777777700777707777777777777777030333333000
          33307F7FFFFFF777FFF707770077777077707777777777777777030300033330
          33307F7F777FFFF7FFF707777707777077777777777777777777033333033330
          33337FFFFF7FFFF7FFFF07777707777077777777777777777777333333000000
          3333333333777777F33333333303333033333333337FFFF7F333333333000000
          3333333333777777333333333333333333333333333333333333}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnSearchClick
      end
      object edtYearFormed: TEdit
        Left = 460
        Top = 91
        Width = 181
        Height = 26
        TabOrder = 2
        Text = 'edtYearFormed'
      end
      object edtListeners: TEdit
        Left = 460
        Top = 139
        Width = 181
        Height = 26
        TabOrder = 3
        Text = 'edtListeners'
      end
      object edtPlayCount: TEdit
        Left = 460
        Top = 187
        Width = 181
        Height = 26
        TabOrder = 4
        Text = 'edtPlayCount'
      end
      object redtSummary: TRichEdit
        Left = 16
        Top = 219
        Width = 628
        Height = 182
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        Lines.Strings = (
          'redtSummary')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
        Zoom = 100
      end
      object WebBrowser1: TWebBrowser
        Left = 176
        Top = 64
        Width = 140
        Height = 146
        TabOrder = 6
        ControlData = {
          4C000000780E0000170F00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    SynchronizedEvents = False
    Left = 528
  end
  object RESTClient1: TRESTClient
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Params = <>
    Left = 448
  end
end
