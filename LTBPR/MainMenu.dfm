object fr_MainMenu: Tfr_MainMenu
  Left = 0
  Top = 0
  Caption = 'Main Menu - Development Version'
  ClientHeight = 576
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
    Height = 576
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
    object cp_lap_lanjutan: TCategoryPanel
      Top = 386
      Height = 31
      Caption = 'Laporan Keberlanjutan'
      Color = clGray
      TabOrder = 0
      ExplicitTop = 331
    end
    object cp_transparasi: TCategoryPanel
      Top = 356
      Height = 30
      Caption = 'Transparansi Tata Kelola'
      Color = clGray
      Collapsed = True
      TabOrder = 1
      ExplicitTop = 301
      ExpandedHeight = 723
      object bt_formE0100: TcxButton
        Left = 0
        Top = 0
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0100 - Penjelasan Umum Penerapan Tata Kelola'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_formE0100Click
      end
      object bt_formE0201: TcxButton
        Left = 0
        Top = 40
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0201 - Pelaksanaan Tugas dan Tanggung Jawab Anggota Direksi'
        TabOrder = 1
        WordWrap = True
      end
      object bt_formE0202: TcxButton
        Left = 0
        Top = 80
        Width = 338
        Height = 40
        Align = alTop
        Caption = 
          'FormE0202 - Pelaksanaan Tugas dan Tanggung Jawab Anggota Dewan K' +
          'omisaris'
        TabOrder = 2
        WordWrap = True
        OnClick = bt_formE0202Click
      end
      object bt_formE0203: TcxButton
        Left = 0
        Top = 120
        Width = 338
        Height = 40
        Align = alTop
        Caption = 
          'FormE0203 - Tugas, Tanggung Jawab, Program Kerja, dan Realisasi ' +
          'Program Kerja Komite'
        TabOrder = 3
        WordWrap = True
        OnClick = bt_formE0203Click
      end
      object bt_formE0204: TcxButton
        Left = 0
        Top = 160
        Width = 338
        Height = 40
        Align = alTop
        Caption = 
          'FormE0204 - Struktur, Keanggotaan, Keahlian, dan Independensi An' +
          'ggota Komite'
        TabOrder = 4
        WordWrap = True
      end
      object bt_formE0600: TcxButton
        Left = 0
        Top = 400
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E0600 - Rasio Gaji Tertinggi dan Gaji Terendah'
        TabOrder = 5
        WordWrap = True
        OnClick = bt_formE0600Click
      end
      object bt_formE0500: TcxButton
        Left = 0
        Top = 360
        Width = 338
        Height = 40
        Align = alTop
        Caption = 
          'Form E0500 - Paket/Kebijakan Remunerasi dan Fasilitas Lain bagi ' +
          'Direksi dan Dewan Komisaris yang ditetapkan berdasarkan RUPS'
        TabOrder = 6
        WordWrap = True
        OnClick = bt_formE0402Click
      end
      object bt_formE0402: TcxButton
        Left = 0
        Top = 320
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E0402 - Hubungan Keluarga Direksi Pemegang Saham'
        TabOrder = 7
        WordWrap = True
        OnClick = bt_formE0402Click
      end
      object bt_formE0401: TcxButton
        Left = 0
        Top = 280
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E0401 - Hubungan Keuangan Direksi Pemegang Saham'
        TabOrder = 8
        WordWrap = True
        OnClick = bt_formE0401Click
      end
      object bt_formE0303: TcxButton
        Left = 0
        Top = 240
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0303 - Kepemilikan Saham Pada Perusahaan Lain'
        TabOrder = 9
        WordWrap = True
        OnClick = bt_formE0303Click
      end
      object bt_formE0302: TcxButton
        Left = 0
        Top = 200
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0302 - Kepemilikan Saham Pada Kelompok Usaha BPR'
        TabOrder = 10
        WordWrap = True
        OnClick = bt_formE0302Click
      end
      object bt_formE0701: TcxButton
        Left = 0
        Top = 440
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0701 - Pelaksanaan Rapat dalam 1 (satu) Tahun'
        TabOrder = 11
        WordWrap = True
        OnClick = bt_formE0701Click
      end
      object bt_formE0702: TcxButton
        Left = 0
        Top = 480
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormE0702 - Kehadiran Anggota Dewan Komisaris'
        TabOrder = 12
        WordWrap = True
        OnClick = bt_formE0702Click
      end
      object bt_formE0800: TcxButton
        Left = 0
        Top = 520
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E0800 - Jumlah Penyimpangan Internal (Internal Fraud)'
        TabOrder = 13
        WordWrap = True
        OnClick = bt_formE0800Click
      end
      object bt_formE0900: TcxButton
        Left = 0
        Top = 560
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E0900 - Permasalahan Hukum yang Dihadapi'
        TabOrder = 14
        WordWrap = True
      end
      object bt_formE1000: TcxButton
        Left = 0
        Top = 600
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'Form E1000 - Transaksi yang Mengandung Benturan Kepentingan'
        TabOrder = 15
        WordWrap = True
      end
      object bt_formE1100: TcxButton
        Left = 0
        Top = 640
        Width = 338
        Height = 40
        Align = alTop
        Caption = 
          'Form E1100 - Pemberian Dana untuk Kegiatan Sosial dan Kegiatan P' +
          'olitik'
        TabOrder = 16
        WordWrap = True
      end
    end
    object cp_sp_kebenaran_lpran: TCategoryPanel
      Top = 325
      Height = 31
      Caption = 'Surat Pernyataan Kebenaran Laporan Keuangan Tahunan'
      Color = clGray
      TabOrder = 2
      ExplicitTop = 270
    end
    object cp_opini_akuntan: TCategoryPanel
      Top = 295
      Height = 30
      Caption = 'Opini dari Akuntan'
      Color = clGray
      Collapsed = True
      TabOrder = 3
      ExplicitTop = 240
      ExpandedHeight = 31
    end
    object cp_lap_akuntan_publik: TCategoryPanel
      Top = 265
      Height = 30
      Caption = 'Laporan Akuntan Publik'
      Color = clGray
      Collapsed = True
      TabOrder = 4
      ExplicitTop = 210
      ExpandedHeight = 31
    end
    object cp_lap_keuangan: TCategoryPanel
      Top = 235
      Height = 30
      Caption = 'Laporan Keuangan Tahunan'
      Color = clGray
      Collapsed = True
      TabOrder = 5
      ExplicitTop = 180
      ExpandedHeight = 185
    end
    object cp_sdm: TCategoryPanel
      Top = 205
      Height = 30
      Caption = 'Pengembangan Sumber Daya Manusia'
      Color = clGray
      Collapsed = True
      TabOrder = 6
      ExplicitTop = 150
      ExpandedHeight = 73
      object bt_formA05072: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA05072 - Kegiatan Pengembangan'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_formA05072Click
      end
    end
    object cp_laporan_manajemen: TCategoryPanel
      Top = 175
      Height = 30
      Caption = 'Laporan Manajemen'
      Color = clGray
      Collapsed = True
      TabOrder = 7
      ExplicitTop = 120
      ExpandedHeight = 121
      object bt_formA0502: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0502 - Bidang Usaha'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_formA0502Click
      end
      object bt_formA0506: TcxButton
        Left = 0
        Top = 40
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0506 - Kerja Sama BPR dengan Bank atau Lembaga Lain'
        TabOrder = 1
        WordWrap = True
        OnClick = bt_formA0506Click
      end
    end
    object cp_strategi: TCategoryPanel
      Top = 145
      Height = 30
      Caption = 'Strategi Dan Kebijakan Manejemen'
      Color = clGray
      Collapsed = True
      TabOrder = 8
      ExplicitTop = 90
      ExpandedHeight = 65
      object cxButton3: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'FormA0400 - Strategi dan Kebijakan Manajemen'
        TabOrder = 0
        WordWrap = True
      end
    end
    object cp_perkembanganbpr: TCategoryPanel
      Top = 115
      Height = 30
      Caption = 'Perkembangan Usaha BPR'
      Color = clGray
      Collapsed = True
      TabOrder = 9
      ExplicitTop = 60
      ExpandedHeight = 156
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
      end
    end
    object cp_kepemilikan: TCategoryPanel
      Top = 85
      Height = 30
      Caption = 'Kepemilikan'
      Color = clGray
      Collapsed = True
      TabOrder = 10
      ExplicitTop = 30
      ExpandedHeight = 85
    end
    object cp_kepengurusan: TCategoryPanel
      Top = 0
      Height = 85
      Caption = 'Kepengurusan'
      Color = clGray
      TabOrder = 11
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
    Height = 570
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
      Height = 447
      Width = 247
    end
  end
  object PopupMenu1: TPopupMenu
    Images = dm_bpr1.ImageList1
    Left = 320
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
    Left = 464
    Top = 24
  end
end
