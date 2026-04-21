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
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
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
      Left = 127
      Top = 2
      Align = alClient
      Caption = 
        'LPS - Aplikasi Pelaporan Lembaga Penjamin Simpanan Online LPS, M' +
        'odul Laporan Bulanan Bank Perkreditan Rakyat (LB-BPR),'#13#10'File Exp' +
        'ort Text File sesuai format yang ditentukan LPS, yang terdiri da' +
        'ri 4 file.'
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
      Width = 1006
      AnchorX = 630
      AnchorY = 30
    end
    object cxLabel1: TcxLabel
      Left = 77
      Top = 2
      Align = alLeft
      Caption = 'LPS'
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
      AnchorX = 102
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
      Enabled = False
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
      Enabled = False
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
    object LabelSurat: TcxLabel
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
      OnEditing = cb_jenis_laporanEditing
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
      Caption = 'Kode Kepesertaan LPS'
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
      AnchorX = 78
      AnchorY = 33
    end
    object kode_kepesertaan: TcxTextEdit
      Left = 165
      Top = 22
      TabOrder = 1
      Width = 198
    end
    object cxLabel7: TcxLabel
      Left = 373
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
      AnchorX = 397
      AnchorY = 33
    end
    object per_tgl: TDateTimePicker
      Left = 435
      Top = 22
      Width = 131
      Height = 24
      Date = 42583.000000000000000000
      Format = 'MMMM yyyy'
      Time = 0.690934780090174200
      DateMode = dmUpDown
      TabOrder = 3
    end
  end
  object CategoryPanelGroup1: TCategoryPanelGroup
    Left = 0
    Top = 180
    Width = 361
    Height = 388
    VertScrollBar.Tracking = True
    DoubleBuffered = True
    Color = clGray
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentDoubleBuffered = False
    TabOrder = 4
    ExplicitHeight = 394
    object cp_lap_akuntan_publik: TCategoryPanel
      Top = 0
      Caption = 'Form Laporan Bulanan 0001'
      Color = clGray
      TabOrder = 0
      object bt_form0004: TcxButton
        Left = 0
        Top = 120
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'Form 0004 - Data Simpanan Join'
        TabOrder = 0
        WordWrap = True
        OnClick = bt_form0004Click
      end
      object bt_FormDK0003: TcxButton
        Left = 0
        Top = 80
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'Form 0003 - Kewajiban Nasabah'
        TabOrder = 1
        WordWrap = True
        OnClick = bt_FormDK0003Click
        ExplicitTop = 86
      end
      object bt_form0002: TcxButton
        Left = 0
        Top = 40
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'Form 0002 - Daftar Data Simpanan Nasabah'
        TabOrder = 2
        WordWrap = True
        OnClick = bt_form0002Click
      end
      object bt_form0001: TcxButton
        Left = 0
        Top = 0
        Width = 355
        Height = 40
        Align = alTop
        Caption = 'Form 0001 - Daftar Data Nasabah'
        TabOrder = 3
        WordWrap = True
        OnClick = bt_form0001Click
      end
    end
  end
  object sGaugeStatus: TcxProgressBar
    Left = 0
    Top = 592
    Align = alBottom
    Properties.AnimationPath = cxapPingPong
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clWindowText
    Properties.ShowTextStyle = cxtsText
    TabOrder = 5
    Visible = False
    ExplicitTop = 595
    Width = 1135
  end
  object sGaugeJenisLaporan: TcxProgressBar
    Left = 0
    Top = 568
    Align = alBottom
    Properties.AnimationPath = cxapPingPong
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clWindowText
    Properties.PeakValue = 100.000000000000000000
    Properties.ShowTextStyle = cxtsText
    TabOrder = 6
    Visible = False
    ExplicitTop = 571
    Width = 1135
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
    Top = 235
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
    Left = 928
    Top = 72
  end
  object MyQFormLapBul: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT id, kode_form, nama_form, nama_table, kode_laporan'
      'FROM lps_ref_kode_form'
      '#WHERE nama_table IN ('#39'lps_dn_f0001'#39')'
      'ORDER BY kode_form;')
    Left = 856
    Top = 72
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
    object MyQFormLapBulkode_laporan: TStringField
      FieldName = 'kode_laporan'
      Size = 10
    end
  end
  object MyQField: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      '')
    Left = 448
    Top = 328
  end
  object OpenDialog1: TOpenDialog
    Left = 560
    Top = 352
  end
end
