object fr_MainMenu: Tfr_MainMenu
  Left = 0
  Top = 0
  Caption = 'Main Menu - Development Version'
  ClientHeight = 486
  ClientWidth = 1135
  Color = 3355443
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 0
    Width = 361
    Height = 486
    VertScrollBar.Tracking = True
    DoubleBuffered = True
    Color = clGray
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentDoubleBuffered = False
    TabOrder = 0
    object CategoryPanel2: TCategoryPanel
      Top = 0
      Height = 68
      Caption = 'Group  Menu 1'
      Color = clGray
      TabOrder = 0
      OnClick = CategoryPanel2Click
      object bt_form0100: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'Menu 1'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_form0100Click
      end
    end
  end
  object grp_login: TcxGroupBox
    AlignWithMargins = True
    Left = 875
    Top = 3
    Margins.Left = 500
    Align = alRight
    Caption = 'Login As'
    TabOrder = 1
    Height = 480
    Width = 257
    object Label1: TcxLabel
      AlignWithMargins = True
      Left = 5
      Top = 24
      Align = alTop
      AutoSize = False
      Caption = 'Username'
      Transparent = True
      Height = 20
      Width = 247
    end
    object user_id: TcxTextEdit
      AlignWithMargins = True
      Left = 5
      Top = 50
      Align = alTop
      ParentFont = False
      Style.Edges = [bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'hamsudi'
      Width = 247
    end
    object bt_login: TcxButton
      AlignWithMargins = True
      Left = 5
      Top = 77
      Width = 247
      Height = 25
      Align = alTop
      Caption = 'Login'
      TabOrder = 2
      OnClick = bt_loginClick
      ExplicitTop = 87
    end
    object SysLog: TcxMemo
      AlignWithMargins = True
      Left = 5
      Top = 108
      Align = alClient
      Properties.ScrollBars = ssBoth
      TabOrder = 3
      ExplicitTop = 118
      ExplicitHeight = 357
      Height = 367
      Width = 247
    end
  end
  object PopupMenu1: TPopupMenu
    Images = dm_bpr1.ImageList1
    Left = 312
    Top = 14
    object M1: TMenuItem
      Caption = 'Manual Book'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object S1: TMenuItem
      Caption = 'Setting Max. Record Per File'
      Hint = 'Setting Max. Record Per File'
      ImageIndex = 5
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SkinOn: TMenuItem
      Caption = 'Skin On'
    end
    object SkinOff: TMenuItem
      Caption = 'Skin Off'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AndroidOSinternal1: TMenuItem
      Caption = 'Android OS (internal)'
    end
    object BlackBoxinternal1: TMenuItem
      Caption = 'Black Box (internal)'
    end
    object BluePlasticinternal1: TMenuItem
      Caption = 'BluePlastic (internal)'
    end
    object DarkGlassinternal1: TMenuItem
      Caption = 'DarkGlass (internal)'
    end
    object Steam2internal1: TMenuItem
      Caption = 'Steam2 (internal)'
    end
    object UnderWaterinternal1: TMenuItem
      Caption = 'UnderWater (internal)'
    end
    object WLMinternal1: TMenuItem
      Caption = 'WLM (internal)'
    end
    object Woodinternal1: TMenuItem
      Caption = 'Wood (internal)'
    end
  end
  object TrayIcon1: TTrayIcon
    Animate = True
    BalloonTitle = 'Update Status :'
    BalloonTimeout = 60000
    BalloonFlags = bfInfo
    Left = 336
    Top = 267
  end
  object TimerUpdater: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerUpdaterTimer
    Left = 392
    Top = 248
  end
  object ZipForge1: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clMax
    CompressionMode = 9
    CurrentVersion = '6.93 '
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.FirstVolumeSize = 0
    SpanningOptions.VolumeSize = vsAutoDetect
    SpanningOptions.CustomVolumeSize = 65536
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    FileMasks.Strings = (
      '*.*')
    InMemory = False
    Zip64Mode = zmDisabled
    UnicodeFilenames = False
    EncryptionMethod = caPkzipClassic
    Left = 448
    Top = 251
  end
  object HTTP1: TipwHTTP
    SSLCertStore = 'MY'
    Left = 336
    Top = 328
  end
  object sPathDialog1: TsPathDialog
    Path = 'C:\SlikClient\inisialisasi'
    Root = 'C:\'
    Caption = 'Pilih Folder Penyimpanan'
    ShowRootBtns = True
    Left = 376
    Top = 16
  end
end
