object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 418
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object ImageOrangutan: TImage
    Left = 0
    Top = 0
    Width = 503
    Height = 418
    Align = alClient
    Stretch = True
    ExplicitLeft = 112
    ExplicitTop = 48
    ExplicitWidth = 441
    ExplicitHeight = 377
  end
  object MediaPlayerJungleSounds: TMediaPlayer
    Left = 456
    Top = 72
    Width = 29
    Height = 30
    ColoredButtons = []
    VisibleButtons = []
    DoubleBuffered = True
    FileName = 
      'Z:\ProductionChapters\DelphiBook\Code\Chapter1\ImageTimer\jungle' +
      '.wav'
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object FrameTimer: TTimer
    Interval = 200
    OnTimer = FrameTimerTimer
    Left = 456
    Top = 24
  end
end
