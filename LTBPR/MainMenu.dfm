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
      Height = 345
      Caption = 'Group  Menu 1'
      Color = clGray
      TabOrder = 0
      OnClick = CategoryPanel2Click
      object bt_formA0301: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0301 - Riwayat Pendirian BPR'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_formA0301Click
        ExplicitTop = 12
      end
      object bt_formA0304: TcxButton
        Left = 0
        Top = 40
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0304 - Penjelasan NPL'
        TabOrder = 1
        WordWrap = True
        OnClick = bt_formA0304Click
        ExplicitTop = 46
      end
      object cxButton1: TcxButton
        Left = 0
        Top = 80
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0305 - Pengembangan Usaha'
        TabOrder = 2
        WordWrap = True
        OnClick = bt_formA0304Click
        ExplicitLeft = 14
        ExplicitTop = 86
      end
      object bt_formA0502: TcxButton
        Left = 0
        Top = 160
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0502 - Bidang Usaha'
        TabOrder = 3
        WordWrap = True
        OnClick = bt_formA0502Click
      end
      object cxButton3: TcxButton
        Left = 0
        Top = 120
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0400 - Strategi dan Kebijakan Manajemen'
        TabOrder = 4
        WordWrap = True
        ExplicitTop = 126
      end
      object bt_formA0506: TcxButton
        Left = 0
        Top = 200
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0506 - Kerja Sama BPR dengan Bank atau Lembaga Lain'
        TabOrder = 5
        WordWrap = True
        OnClick = bt_formA0506Click
        ExplicitLeft = -1
        ExplicitTop = 246
      end
      object bt_formA05072: TcxButton
        Left = 0
        Top = 240
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA05072 - Kegiatan Pengembangan'
        TabOrder = 6
        WordWrap = True
        OnClick = bt_formA05072Click
        ExplicitTop = 246
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
      Top = 87
      Width = 247
      Height = 25
      Align = alTop
      Caption = 'Login'
      TabOrder = 2
      OnClick = bt_loginClick
    end
    object SysLog: TcxMemo
      AlignWithMargins = True
      Left = 5
      Top = 118
      Align = alClient
      Properties.ScrollBars = ssBoth
      TabOrder = 3
      Height = 357
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
