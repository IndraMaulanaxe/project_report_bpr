inherited fr_FormDSN0002: Tfr_FormDSN0002
  Caption = 'Form 0002 -  Entry Daftar Simpanan Nasabah'
  ClientHeight = 440
  ClientWidth = 861
  OnShow = FormShow
  ExplicitWidth = 867
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 861
    ExplicitWidth = 861
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 861
    ExplicitHeight = 377
    Height = 374
    Width = 861
    object cxgGrid: TcxGrid
      Left = 2
      Top = 2
      Width = 857
      Height = 370
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      ExplicitHeight = 373
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsMyQDSN0002
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.HideSelection = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.Indicator = True
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object cxGridDBTableView1klasifikasi_rekening: TcxGridDBColumn
          Caption = 'Klasifikasi Rekening'
          DataBinding.FieldName = 'klasifikasi_rekening'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1jumlah_pemilik_rekening: TcxGridDBColumn
          Caption = 'Jumlah Pemilik Rekening'
          DataBinding.FieldName = 'jumlah_pemilik_rekening'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1nasabah_id: TcxGridDBColumn
          Caption = 'Nasabah ID'
          DataBinding.FieldName = 'nasabah_id'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1jenis_simpanan: TcxGridDBColumn
          Caption = 'Jenis Simpanan'
          DataBinding.FieldName = 'jenis_simpanan'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1no_rekening: TcxGridDBColumn
          Caption = 'Nomor Rekening'
          DataBinding.FieldName = 'no_rekening'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1status_dana: TcxGridDBColumn
          Caption = 'Status Dana'
          DataBinding.FieldName = 'status_dana'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tgl_mulai: TcxGridDBColumn
          Caption = 'Tanggal Mulai'
          DataBinding.FieldName = 'tgl_mulai'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1jenis_tingkat_bunga: TcxGridDBColumn
          Caption = 'Jenis Tingkat Bunga'
          DataBinding.FieldName = 'jenis_tingkat_bunga'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tingkat_bunga: TcxGridDBColumn
          Caption = 'Bunga'
          DataBinding.FieldName = 'tingkat_bunga'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1biaya_cashback: TcxGridDBColumn
          Caption = 'Cashback'
          DataBinding.FieldName = 'biaya_cashback'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tingkat_bunga_penjaminan_lps: TcxGridDBColumn
          Caption = 'Bunga Penjamin'
          DataBinding.FieldName = 'tingkat_bunga_penjaminan_lps'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1kategori_tingkat_bunga_simpanan: TcxGridDBColumn
          Caption = 'Bunga Simpanan'
          DataBinding.FieldName = 'kategori_tingkat_bunga_simpanan'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1saldo_simpanan: TcxGridDBColumn
          Caption = 'Saldo Simpanan'
          DataBinding.FieldName = 'saldo_simpanan'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1nominal_blokir: TcxGridDBColumn
          Caption = 'Nominal Blokir'
          DataBinding.FieldName = 'nominal_blokir'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1alasan_blokir: TcxGridDBColumn
          Caption = 'Alasan'
          DataBinding.FieldName = 'alasan_blokir'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1bunga_akrual: TcxGridDBColumn
          Caption = 'Bunga Akrual'
          DataBinding.FieldName = 'bunga_akrual'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tgl_akru_terakhir: TcxGridDBColumn
          Caption = 'Tanggal Akrual Terakhir'
          DataBinding.FieldName = 'tgl_akru_terakhir'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tanggal_jt: TcxGridDBColumn
          Caption = 'Tanggal Jatuh Tempo'
          DataBinding.FieldName = 'tanggal_jt'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 398
    ExplicitTop = 398
    ExplicitWidth = 861
    Width = 861
    inherited btlb_Refresh: TcxButton
      OnClick = btlb_RefreshClick
    end
    inherited btlb_tools1: TcxButton
      Width = 85
      Caption = 'Import'
      WordWrap = True
      OnClick = btlb_tools1Click
      ExplicitWidth = 85
    end
    inherited btlb_tools2: TcxButton
      Left = 187
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 187
      ExplicitWidth = 0
    end
    inherited btlb_Save: TcxButton
      Left = 486
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 486
      ExplicitWidth = 0
    end
    inherited btlb_Close: TcxButton
      Left = 771
      ExplicitLeft = 771
    end
    inherited btlb_Cancel: TcxButton
      Left = 492
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 492
      ExplicitWidth = 0
    end
    inherited btlb_Print: TcxButton
      Left = 480
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 480
      ExplicitWidth = 0
    end
    inherited btlb_tools3: TcxButton
      Left = 193
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 193
      ExplicitWidth = 0
    end
    inherited btlb_Delete: TcxButton
      Left = 680
      OnClick = btlb_DeleteClick
      ExplicitLeft = 680
    end
    inherited btlb_Edit: TcxButton
      Left = 589
      OnClick = btlb_EditClick
      ExplicitLeft = 589
    end
    inherited btlb_Insert: TcxButton
      Left = 498
      OnClick = btlb_InsertClick
      ExplicitLeft = 498
    end
    inherited btlb_Pilih: TcxButton
      Left = 474
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 474
      ExplicitWidth = 0
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 861
    ExplicitWidth = 861
    inherited IconClose: TLabel
      Left = 827
      ExplicitLeft = 724
    end
  end
  object sGauge1: TcxProgressBar
    Left = 0
    Top = 374
    Align = alBottom
    Properties.AnimationPath = cxapPingPong
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clWindowText
    Properties.ShowTextStyle = cxtsText
    TabOrder = 4
    Visible = False
    ExplicitTop = 377
    Width = 861
  end
  object MyQuery1: TMyQuery
    SQL.Strings = (
      'SELECT COUNT(*) AS jml, '
      '  SUM(baki_debet) AS bd, '
      '  SUM(`provisi_belum_amortisasi`) AS provisi,  '
      '  SUM(`biaya_transaksi_belum_amortisasi`) AS biaya, '
      '  SUM(`ppap_dibentuk`) AS ppapwd, '
      '  SUM(IF(kualitas IN ('#39'1'#39','#39'2'#39'), `pyad`, 0)) AS pyad,'
      
        '  SUM(baki_debet-`provisi_belum_amortisasi`+`biaya_transaksi_bel' +
        'um_amortisasi`-`pendapatan_bunga_ditangguhkan`-`cadangan_kerugia' +
        'n`) AS bd_netto,'
      '  SUM(IF(kualitas IN ('#39'3'#39','#39'4'#39','#39'5'#39'), pad, 0)) as pbdp'
      'FROM `apolo_f0600`'
      '&WHERE')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 88
    Top = 248
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQuery1jml: TLargeintField
      FieldName = 'jml'
    end
    object MyQuery1bd: TFloatField
      FieldName = 'bd'
    end
    object MyQuery1provisi: TFloatField
      FieldName = 'provisi'
    end
    object MyQuery1biaya: TFloatField
      FieldName = 'biaya'
    end
    object MyQuery1ppapwd: TFloatField
      FieldName = 'ppapwd'
    end
    object MyQuery1pyad: TFloatField
      FieldName = 'pyad'
    end
    object MyQuery1bd_netto: TFloatField
      FieldName = 'bd_netto'
    end
    object MyQuery1pbdp: TFloatField
      FieldName = 'pbdp'
    end
  end
  object dsMyQDSN0002: TMyDataSource
    DataSet = MyQDSN0002
    Left = 392
    Top = 280
  end
  object MyQDSN0002: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `klasifikasi_rekening`,'
      '  `jumlah_pemilik_rekening`,'
      '  `nasabah_id`,'
      '  `jenis_simpanan`,'
      '  `no_rekening`,'
      '  `status_dana`,'
      '  `tgl_mulai`,'
      '  `jenis_tingkat_bunga`,'
      '  `tingkat_bunga`,'
      '  `biaya_cashback`,'
      '  `tingkat_bunga_penjaminan_lps`,'
      '  `kategori_tingkat_bunga_simpanan`,'
      '  `saldo_simpanan`,'
      '  `nominal_blokir`,'
      '  `alasan_blokir`,'
      '  `bunga_akrual`,'
      '  `tgl_akru_terakhir`,'
      '  `tanggal_jt`'
      'FROM `lps_dsn_f0002`'
      '&WHERE'
      'LIMIT 30')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDSN0002klasifikasi_rekening: TStringField
      FieldName = 'klasifikasi_rekening'
      Size = 1
    end
    object MyQDSN0002jumlah_pemilik_rekening: TIntegerField
      FieldName = 'jumlah_pemilik_rekening'
    end
    object MyQDSN0002nasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDSN0002jenis_simpanan: TStringField
      FieldName = 'jenis_simpanan'
      Size = 4
    end
    object MyQDSN0002no_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDSN0002status_dana: TStringField
      FieldName = 'status_dana'
      Size = 1
    end
    object MyQDSN0002tgl_mulai: TDateField
      FieldName = 'tgl_mulai'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQDSN0002jenis_tingkat_bunga: TStringField
      FieldName = 'jenis_tingkat_bunga'
      Size = 1
    end
    object MyQDSN0002tingkat_bunga: TFloatField
      FieldName = 'tingkat_bunga'
    end
    object MyQDSN0002biaya_cashback: TFloatField
      FieldName = 'biaya_cashback'
    end
    object MyQDSN0002tingkat_bunga_penjaminan_lps: TFloatField
      FieldName = 'tingkat_bunga_penjaminan_lps'
    end
    object MyQDSN0002kategori_tingkat_bunga_simpanan: TStringField
      FieldName = 'kategori_tingkat_bunga_simpanan'
      Size = 3
    end
    object MyQDSN0002saldo_simpanan: TFloatField
      FieldName = 'saldo_simpanan'
    end
    object MyQDSN0002nominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQDSN0002alasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQDSN0002bunga_akrual: TFloatField
      FieldName = 'bunga_akrual'
    end
    object MyQDSN0002tgl_akru_terakhir: TDateField
      FieldName = 'tgl_akru_terakhir'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQDSN0002tanggal_jt: TDateField
      FieldName = 'tanggal_jt'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object MyQImport: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SET @pv_per_tgl = &TGL;'
      ''
      '#DSN Tabungan'
      'SELECT '
      '  '#39'D'#39' AS D,'
      
        '  IF(tn.type_join IN ('#39'AND'#39', '#39'OR'#39'), '#39'J'#39', '#39'R'#39') AS klasifikasi_rek' +
        'ening,'
      
        '  IF(tn.type_join IN ('#39'AND'#39', '#39'OR'#39'), '#39'2'#39', '#39'0'#39') AS jumlah_pemilik_' +
        'rekening,'
      '  tn.`nasabah_id`,'
      '  '#39'TAB'#39' AS jenis_simpanan,'
      '  tn.`no_rekening`,'
      '  '#39'S'#39' AS status_dana,'
      
        '  DATE_FORMAT(tn.tgl_register, '#39'%Y-%m-%d'#39') AS tanggal_mulai_atau' +
        '_tanggal_aro_terakhir,'
      '  '#39'1'#39' AS jenis_tingkat_bunga,'
      '  tn.`suku_bunga` AS tingkat_bunga,'
      '  0.00 AS cashback,'
      
        '  (select `value` from parameter where id='#39'SETTING_SUKU_BUNGA_SE' +
        'SUAI_LPS'#39') AS tingkat_bunga_penjaminan_lps, -- bisa berubah seti' +
        'ap bulan'
      '  '#39'1'#39' AS kategori_tingkat_bunga_simpanan, -- fix 1'
      '  ROUND(tn.`saldo_akhir`,0) AS saldo_simpanan,'
      '  ROUND(tn.`saldo_blokir`,0) AS nominal_blokir,'
      '  IF(tn.saldo_blokir <> 0, '#39'99'#39', '#39#39') AS alasan_blokir,'
      '  ROUND(tn.`jml_bunga`,0) AS bunga_akrual,'
      
        '  DATE_FORMAT(@pv_per_tgl, '#39'%Y-%m-%d'#39') AS tanggal_akrual_terakhi' +
        'r,'
      '  DATE_FORMAT(@pv_per_tgl, '#39'%Y-%m-%d'#39') AS tanggal_jatuh_tempo'
      'FROM tab_nominatif tn'
      'WHERE tn.tgl_laporan = @pv_per_tgl AND tn.saldo_akhir > 0'
      'GROUP BY tn.`nasabah_id`'
      ''
      'UNION ALL'
      ''
      '#DSN deposito'
      'SELECT '
      '  '#39'D'#39' AS D,'
      
        '  IF(dn.type_join IN ('#39'AND'#39', '#39'OR'#39'), '#39'J'#39', '#39'R'#39') AS klasifikasi_rek' +
        'ening,'
      
        '  IF(dn.type_join IN ('#39'AND'#39', '#39'OR'#39'), '#39'2'#39', '#39'0'#39')jumlah_pemilik_reke' +
        'ning,'
      '  dn.`nasabah_id`,'
      '  '#39'DEP'#39' AS jenis_simpanan, '
      '  dn.`no_rekening`,'
      '  '#39'B'#39' AS status_dana,'
      
        '  DATE_FORMAT(IF(d.aro = '#39'1'#39', d.tgl_mulai, DATE_FORMAT(@pv_per_t' +
        'gl, '#39'%Y-%m-%d'#39')), '#39'%Y-%m-%d'#39') AS tanggal_mulai_atau_tanggal_aro_' +
        'terakhir,'
      '  '#39'1'#39' AS jenis_tingkat_bunga,'
      '  dn.`suku_bunga` AS tingkat_bunga,'
      '  0.00 AS cashback,'
      
        '  (select `value` from parameter where id='#39'SETTING_SUKU_BUNGA_SE' +
        'SUAI_LPS'#39') AS tingkat_bunga_penjaminan_lps, -- bisa berubah seti' +
        'ap bulan'
      
        '  IF(dn.`suku_bunga` > 6.50, '#39'2.B'#39', '#39'1'#39') AS kategori_tingkat_bun' +
        'ga_simpanan, '
      '  ROUND(dn.`saldo_akhir`,0) AS saldo_simpanan,'
      '  ROUND(dn.saldo_jam_kredit,0) AS nominal_blokir,'
      '  IF(dn.saldo_jam_kredit <> 0, '#39'99'#39', '#39#39') AS alasan_blokir,'
      '  ROUND(dn.saldo_akhir_bunga_bmhd, 0) AS bunga_akrual,'
      
        '  DATE_FORMAT(@pv_per_tgl, '#39'%Y-%m-%d'#39') AS tanggal_akrual_terakhi' +
        'r,'
      '  DATE_FORMAT(dn.tgl_jt, '#39'%Y-%m-%d'#39') AS tanggal_jatuh_tempo'
      'FROM dep_nominatif dn'
      'LEFT JOIN deposito d ON dn.no_rekening = d.no_rekening'
      'WHERE dn.tgl_laporan = @pv_per_tgl AND dn.saldo_akhir > 0'
      'GROUP BY dn.`nasabah_id`')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
        Value = #39'2026-03-31'#39
      end>
    object MyQImportD: TStringField
      FieldName = 'D'
      Size = 1
    end
    object MyQImportklasifikasi_rekening: TStringField
      FieldName = 'klasifikasi_rekening'
      Size = 1
    end
    object MyQImportjumlah_pemilik_rekening: TStringField
      FieldName = 'jumlah_pemilik_rekening'
      Size = 1
    end
    object MyQImportnasabah_id: TStringField
      FieldName = 'nasabah_id'
      FixedChar = True
    end
    object MyQImportjenis_simpanan: TStringField
      FieldName = 'jenis_simpanan'
      Size = 3
    end
    object MyQImportno_rekening: TStringField
      FieldName = 'no_rekening'
      FixedChar = True
    end
    object MyQImportstatus_dana: TStringField
      FieldName = 'status_dana'
      Size = 1
    end
    object MyQImportjenis_tingkat_bunga: TStringField
      FieldName = 'jenis_tingkat_bunga'
      Size = 1
    end
    object MyQImporttingkat_bunga: TFloatField
      FieldName = 'tingkat_bunga'
    end
    object MyQImporttingkat_bunga_penjaminan_lps: TStringField
      FieldName = 'tingkat_bunga_penjaminan_lps'
      Size = 4
    end
    object MyQImportkategori_tingkat_bunga_simpanan: TStringField
      FieldName = 'kategori_tingkat_bunga_simpanan'
      Size = 1
    end
    object MyQImportsaldo_simpanan: TFloatField
      FieldName = 'saldo_simpanan'
    end
    object MyQImportnominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQImportalasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQImportbunga_akrual: TFloatField
      FieldName = 'bunga_akrual'
    end
    object MyQImportcashback: TFloatField
      FieldName = 'cashback'
    end
    object MyQImporttanggal_mulai_atau_tanggal_aro_terakhir: TStringField
      FieldName = 'tanggal_mulai_atau_tanggal_aro_terakhir'
      Size = 8
    end
    object MyQImporttanggal_akrual_terakhir: TStringField
      FieldName = 'tanggal_akrual_terakhir'
      Size = 8
    end
    object MyQImporttanggal_jatuh_tempo: TStringField
      FieldName = 'tanggal_jatuh_tempo'
      Size = 8
    end
  end
end
