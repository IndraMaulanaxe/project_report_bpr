object fr_MainMenu: Tfr_MainMenu
  Left = 0
  Top = 0
  Caption = 'Main Menu - Development Version'
  ClientHeight = 686
  ClientWidth = 1135
  Color = 3355443
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentBackground = False
    TabOrder = 0
    Height = 60
    Width = 1135
    object cxButton2: TcxButton
      Left = 2
      Top = 2
      Width = 75
      Height = 56
      Align = alLeft
      OptionsImage.ImageIndex = 8
      OptionsImage.Images = dm_bpr1.ImageList3
      TabOrder = 0
    end
    object ProductName: TcxLabel
      Left = 303
      Top = 2
      Align = alClient
      Caption = 
        'Laporan Tahunan - Aplikasi Pelaporan Online OJK, Modul Laporan B' +
        'ank Perekonomian Rakyat (BPR), '#13#10'File Export berupa Text File se' +
        'suai Format yang ditentukan OJK yang terdiri dari 44 File'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Width = 830
      AnchorX = 718
      AnchorY = 30
    end
    object cxLabel1: TcxLabel
      Left = 77
      Top = 2
      Align = alLeft
      Caption = 'Laporan Tahunan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -29
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 190
      AnchorY = 30
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 616
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 1
    Height = 70
    Width = 1135
    object bt_proses: TcxButton
      Left = 933
      Top = 2
      Width = 100
      Height = 66
      Align = alRight
      Caption = 'Export ALL'
      OptionsImage.ImageIndex = 39
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      WordWrap = True
      OnClick = bt_prosesClick
    end
    object bt_save: TcxButton
      Left = 833
      Top = 2
      Width = 100
      Height = 66
      Align = alRight
      Caption = 'Save Point'
      Enabled = False
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 1
      WordWrap = True
      OnClick = bt_saveClick
    end
    object bt_import_text_all: TcxButton
      Left = 733
      Top = 2
      Width = 100
      Height = 66
      Align = alRight
      Caption = 'Import All'
      OptionsImage.ImageIndex = 39
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 2
      WordWrap = True
      OnClick = bt_import_text_allClick
    end
    object bt_export_excel: TcxButton
      Left = 633
      Top = 2
      Width = 100
      Height = 66
      Align = alRight
      Caption = 'Export All Excel'
      OptionsImage.ImageIndex = 39
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 3
      WordWrap = True
      OnClick = bt_export_excelClick
    end
    object bt_update_status: TcxButton
      Left = 302
      Top = 2
      Width = 100
      Height = 66
      Align = alLeft
      Caption = 'Update Status'
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      WordWrap = True
      OnClick = bt_update_statusClick
    end
    object bt_restore_point: TcxButton
      Left = 202
      Top = 2
      Width = 100
      Height = 66
      Align = alLeft
      Caption = 'Restore Point'
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
      WordWrap = True
      OnClick = bt_restore_pointClick
    end
    object bt_restore_data: TcxButton
      Left = 102
      Top = 2
      Width = 100
      Height = 66
      Align = alLeft
      Caption = 'Restore Data'
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 6
      WordWrap = True
      OnClick = bt_restore_dataClick
    end
    object bt_ganti_bulan: TcxButton
      Left = 2
      Top = 2
      Width = 100
      Height = 66
      Align = alLeft
      Caption = 'Ganti Bulan'
      OptionsImage.ImageIndex = 50
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 7
      WordWrap = True
      OnClick = bt_ganti_bulanClick
    end
    object bt_close: TcxButton
      Left = 1033
      Top = 2
      Width = 100
      Height = 66
      Align = alRight
      Caption = 'Close'
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = dm_bpr1.ImageList2
      OptionsImage.Layout = blGlyphTop
      TabOrder = 8
      WordWrap = True
      OnClick = bt_closeClick
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 60
    Align = alTop
    Caption = 'Jenis Laporan'
    PanelStyle.Active = True
    ParentBackground = False
    TabOrder = 2
    Height = 60
    Width = 1135
    object cxLabel3: TcxLabel
      Left = 12
      Top = 23
      Caption = 'Kode Jenis Laporan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 69
      AnchorY = 33
    end
    object no_surat: TcxTextEdit
      Left = 635
      Top = 22
      TabOrder = 1
      Width = 198
    end
    object cxLabel4: TcxLabel
      Left = 559
      Top = 23
      Caption = 'No Surat'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 586
      AnchorY = 33
    end
    object cb_jenis_laporan: TcxComboBox
      Left = 147
      Top = 22
      Properties.Items.Strings = (
        'Laporan BPR Rutin'
        'Laporan BPR Perubahan Inisiatif BPR'
        'Laporan BPR Penyesuaian Pengawas OJK'
        'Laporan BPR Penyesuaian Kantor Akuntan Publik')
      TabOrder = 3
      Text = 'Laporan BPR Rutin'
      Width = 198
    end
    object koreksi_ke: TcxSpinEdit
      Left = 504
      Top = 22
      TabOrder = 4
      Width = 44
    end
    object flg_koreksi: TcxCheckBox
      Left = 356
      Top = 22
      Caption = 'Laporan Koreksi ke'
      TabOrder = 5
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 120
    Align = alTop
    Caption = 'Periode Laporan'
    PanelStyle.Active = True
    ParentBackground = False
    TabOrder = 3
    Height = 60
    Width = 1135
    object cxLabel5: TcxLabel
      Left = 12
      Top = 23
      Caption = 'Kode Sektor LJK'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 60
      AnchorY = 33
    end
    object kode_sektor_ljk: TcxTextEdit
      Left = 147
      Top = 22
      TabOrder = 1
      Width = 198
    end
    object cxLabel6: TcxLabel
      Left = 362
      Top = 23
      Caption = 'Kode LJK'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 389
      AnchorY = 33
    end
    object kode_ljk: TcxTextEdit
      Left = 432
      Top = 22
      TabOrder = 3
      Width = 198
    end
    object cxLabel7: TcxLabel
      Left = 652
      Top = 23
      Caption = 'Periode'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 676
      AnchorY = 33
    end
    object per_tgl: TDateTimePicker
      Left = 714
      Top = 22
      Width = 131
      Height = 24
      Date = 42583.000000000000000000
      Format = 'MMMM yyyy'
      Time = 0.690934780090174200
      DateMode = dmUpDown
      TabOrder = 5
    end
  end
  object dxGaugeControl1: TdxGaugeControl
    Left = 0
    Top = 600
    Width = 1135
    Height = 16
    Align = alBottom
    object sGaugeStatus: TdxGaugeDigitalScale
      StyleName = 'DarkNight'
      Value = '5'
      object sGaugeStatusCaption1: TdxGaugeDigitalScaleCaption
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clWindowText
        OptionsView.Font.Height = -11
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
      end
    end
  end
  object dxGaugeControl2: TdxGaugeControl
    Left = 0
    Top = 584
    Width = 1135
    Height = 16
    Align = alBottom
    object sGaugeJenisLaporan: TdxGaugeDigitalScale
      StyleName = 'DarkNight'
      object sGaugeJenisLaporanCaption1: TdxGaugeDigitalScaleCaption
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clWindowText
        OptionsView.Font.Height = -11
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
      end
    end
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 180
    Width = 361
    Height = 404
    VertScrollBar.Tracking = True
    DoubleBuffered = True
    Color = clGray
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentDoubleBuffered = False
    TabOrder = 6
    object cp_lap_lanjutan: TCategoryPanel
      Top = 386
      Height = 31
      Caption = 'Laporan Keberlanjutan'
      Color = clGray
      TabOrder = 0
    end
    object cp_transparasi: TCategoryPanel
      Top = 356
      Height = 30
      Caption = 'Transparansi Tata Kelola'
      Color = clGray
      Collapsed = True
      TabOrder = 1
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
        OnClick = bt_formE0201Click
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
        OnClick = bt_formE0204Click
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
        OnClick = bt_formE0500Click
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
        OnClick = bt_formE0900Click
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
        OnClick = bt_formE1000Click
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
        OnClick = bt_formE1100Click
      end
    end
    object cp_sp_kebenaran_lpran: TCategoryPanel
      Top = 325
      Height = 31
      Caption = 'Surat Pernyataan Kebenaran Laporan Keuangan Tahunan'
      Color = clGray
      TabOrder = 2
    end
    object cp_opini_akuntan: TCategoryPanel
      Top = 295
      Height = 30
      Caption = 'Opini dari Akuntan'
      Color = clGray
      Collapsed = True
      TabOrder = 3
      ExpandedHeight = 31
    end
    object cp_lap_akuntan_publik: TCategoryPanel
      Top = 265
      Height = 30
      Caption = 'Laporan Akuntan Publik'
      Color = clGray
      Collapsed = True
      TabOrder = 4
      ExpandedHeight = 31
    end
    object cp_lap_keuangan: TCategoryPanel
      Top = 235
      Height = 30
      Caption = 'Laporan Keuangan Tahunan'
      Color = clGray
      Collapsed = True
      TabOrder = 5
      ExpandedHeight = 185
    end
    object cp_sdm: TCategoryPanel
      Top = 205
      Height = 30
      Caption = 'Pengembangan Sumber Daya Manusia'
      Color = clGray
      Collapsed = True
      TabOrder = 6
      ExpandedHeight = 73
      object bt_formA05072: TcxButton
        Left = 0
        Top = 0
        Width = 338
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
      ExpandedHeight = 121
      object bt_formA0502: TcxButton
        Left = 0
        Top = 0
        Width = 338
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
        Width = 338
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
      ExpandedHeight = 65
      object cxButton3: TcxButton
        Left = 0
        Top = 0
        Width = 338
        Height = 40
        Align = alTop
        Caption = 'FormA0400 - Strategi dan Kebijakan Manajemen'
        TabOrder = 0
        WordWrap = True
        OnClick = cxButton3Click
      end
    end
    object cp_perkembanganbpr: TCategoryPanel
      Top = 115
      Height = 30
      Caption = 'Perkembangan Usaha BPR'
      Color = clGray
      Collapsed = True
      TabOrder = 9
      ExpandedHeight = 156
      object bt_formA0301: TcxButton
        Left = 0
        Top = 0
        Width = 338
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
        Width = 338
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
        Width = 338
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
    Left = 416
    Top = 16
  end
  object MyQuery1: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      '')
    Left = 632
    Top = 112
  end
  object MyQFormLapBul: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT `id`, `kode_form`, `nama_form`, `nama_table`'
      'FROM `pr_ref_kode_form` '
      '#where nama_table in ('#39'apolo_f0600'#39')'
      'ORDER BY kode_form')
    Left = 680
    Top = 112
    object MyQFormLapBulid: TIntegerField
      FieldName = 'id'
    end
    object MyQFormLapBulkode_form: TStringField
      FieldName = 'kode_form'
      FixedChar = True
      Size = 4
    end
    object MyQFormLapBulnama_form: TStringField
      FieldName = 'nama_form'
      Size = 250
    end
    object MyQFormLapBulnama_table: TStringField
      FieldName = 'nama_table'
      Size = 250
    end
  end
  object MyQField: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      '')
    Left = 448
    Top = 328
  end
end
