object frmTimeObjectExample: TfrmTimeObjectExample
  Left = 0
  Top = 0
  Caption = 'frmTimeObjectExample'
  ClientHeight = 380
  ClientWidth = 624
  Color = 10345983
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 25
  object Image1: TImage
    Left = 51
    Top = 0
    Width = 153
    Height = 90
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000800000
      00800806000000C33E61CB0000000473424954080808087C0864880000000970
      485973000003B1000003B101F583ED490000001974455874536F667477617265
      007777772E696E6B73636170652E6F72679BEE3C1A000003644944415478DAED
      DD3D6813611CC7F1FF934E82832FD841900EA24E5633692D9D043745A4E05251
      32080E2204BAE96407A508BA0A96521D7D195C1584825A148A16478722080A8A
      832022ED632A169B547277B97B9A7BF2FB7ED7CB71CFF3BF0F21A539E28CA473
      DD5E00753700880700F100201E00C403807800100F00E201403C00880700F100
      201E00C403807800100F00E201403C00880700F100201E00C4CB0DC0CF5FF5DD
      DE8472AE7A25D73D0440E401403C00880700F100201E00C4038078C1002C4C8C
      70637BA8FD9767FF7BAF01201200C403807800100F00E201403C0088573880F3
      7303DDDE13ADE9F6A1C5B6C701D0E301403C00880700F100201E00C403807800
      100F00E2950EC0D0416FE3356F3BB666DBC8E7AF669353157BF926FD397D7D66
      A78E7A1B3BE1EDE72FD738DFD9AB85CE06196AFDA1E7513A000F6E2D5BFFB66C
      9B5DED5363D3A3972AA95E3BB8D75BFD9CD9EE5DFF96FBE59BD9C98BE9CEDFA8
      F5879E47E900CCDE5DEE6CB77F1B39D37EC3DBB778BB70DAECD8B037E7B29F9F
      54D1EB0F3D0F1900AB6FF7B5516F9B37753EB0A400503080A40DA479FDE03EB3
      FA59DFF4769F7660493720E9F579D71F621E6BEB6900496FF7EF3FB8752800D0
      5CD400A626BCED1958BF9CEF3F1AC7EE3B7BF8D4D9B3E96C37A03500B4542600
      C3556FD7EACDCB793E6F7663BAF2E7CFA434D70340C40056BA5E5FB62355B3C5
      8F6637679CBD7EE7329D9F3500940CC0CE7E6B00F0F6E889B3A5A5FCD74B0A00
      25039014000090EBFCD0EB07000082CE030000687B9C7F07F77800100F00E201
      40BCD201E043A0F88740000020E8868B3E3FF4FA010080A0F3000000DA1E0740
      C600008042D70F0000049D0700F84A58DBE30000406F3C1892F67A4503C8BB7E
      F907438ADE70D2F500D05CCF3E1CBA5AD11F027938342780C307CCC66BD937BD
      B2D9C93BCEE6DE66FB218CA20114BDFED0F3281D00DAD800201E00C403807800
      100F00E201403C00880700F10020DE8603A0B802807800100F00E201403C0088
      0700F100205E6600AD0D1D1FEB2A88178FEF65FB8E58978B655E0008542CF302
      40A0629917000215CBBC0010A858E6058040C5322F00042A9679012050B1CC2B
      AAA152F101403C00880700F100201E00C403807800100F00E201403C00880700
      F100201E00C403807800100F00E201403C00880700F100201E00C4FB0D63EA7A
      BD75B107840000000049454E44AE426082}
    Stretch = True
  end
  object Label1: TLabel
    Left = 344
    Top = 33
    Width = 100
    Height = 25
    Caption = 'List of times'
  end
  object Label2: TLabel
    Left = 40
    Top = 282
    Width = 26
    Height = 25
    Caption = 'HH'
  end
  object Label3: TLabel
    Left = 143
    Top = 282
    Width = 34
    Height = 25
    Caption = 'MM'
  end
  object Bevel1: TBevel
    Left = 31
    Top = 282
    Width = 274
    Height = 71
    Shape = bsFrame
  end
  object Shape1: TShape
    Left = 66
    Top = 26
    Width = 123
    Height = 39
    Brush.Color = 3618615
  end
  object lblTime: TLabel
    Left = 87
    Top = 28
    Width = 84
    Height = 35
    Caption = 'lblTime'
    Color = 4194304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -24
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lstTimes: TListBox
    Left = 344
    Top = 64
    Width = 169
    Height = 281
    ItemHeight = 25
    TabOrder = 0
  end
  object btnIncHours: TButton
    Left = 31
    Top = 96
    Width = 257
    Height = 33
    Caption = 'Increment Hours'
    TabOrder = 1
    OnClick = btnIncHoursClick
  end
  object btnIncMins: TButton
    Left = 31
    Top = 135
    Width = 257
    Height = 33
    Caption = 'Increment Minutes'
    TabOrder = 2
    OnClick = btnIncMinsClick
  end
  object btnListTime: TButton
    Left = 31
    Top = 174
    Width = 257
    Height = 33
    Caption = 'List the time'
    TabOrder = 3
    OnClick = btnListTimeClick
  end
  object btnList5: TButton
    Left = 31
    Top = 213
    Width = 257
    Height = 33
    Caption = 'List 5 Increments of minutes'
    TabOrder = 4
    OnClick = btnList5Click
  end
  object sedHours: TSpinEdit
    Left = 40
    Top = 310
    Width = 49
    Height = 35
    MaxValue = 23
    MinValue = 0
    TabOrder = 5
    Value = 0
  end
  object cmbSeparator: TComboBox
    Left = 95
    Top = 310
    Width = 42
    Height = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'cmbSeparator'
    Font.Style = []
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = ':'
    Items.Strings = (
      ':'
      '|'
      '#')
  end
  object sedMins: TSpinEdit
    Left = 143
    Top = 310
    Width = 49
    Height = 35
    MaxValue = 59
    MinValue = 0
    TabOrder = 7
    Value = 0
  end
  object btnSetTime: TButton
    Left = 198
    Top = 308
    Width = 99
    Height = 33
    Caption = 'Set time'
    TabOrder = 8
    OnClick = btnSetTimeClick
  end
end
