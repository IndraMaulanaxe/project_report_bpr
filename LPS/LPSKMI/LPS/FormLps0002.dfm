inherited fr_FormLps0002: Tfr_FormLps0002
  BorderStyle = bsSizeable
  Caption = 'Form 0002 - Daftar Simpanan Nasabah'
  ClientHeight = 395
  ClientWidth = 947
  PixelsPerInch = 96
  TextHeight = 15
  object sGauge1: TsGauge [1]
    Left = 0
    Top = 300
    Width = 947
    Height = 24
    Align = alBottom
    Visible = False
    ForeColor = clNavy
    Progress = 0
    Suffix = '%'
    ExplicitTop = 307
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 358
    Width = 947
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 0
    object bt_tambah: TsBitBtn
      Left = 641
      Top = 6
      Width = 74
      Height = 25
      Align = alRight
      Caption = 'Tambah'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1DDDDDDDDDD
        DDDDD11DDDDDDDD4DDDDD111DDDDD4D4D4DDD1111DDDDD444DDDD11111DD4444
        444DD1111DDDDD444DDDD111DDDDD4D4D4DDD11DDDDDDDD4DDDDD1DDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 1
      OnClick = bt_tambahClick
    end
    object bt_edit: TsBitBtn
      Left = 715
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Edit'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDD0D0D0D0DDDDDDDDDDDDDDD00DDDDDDDDDDDDDD000DDDDD1DDDDDDD0B8
        0DDDD11DDDDDD0B70DDDD111DDDDDD0B80DDD1111DDDDD0B70DDD11111DDDDD0
        B80DD1111DDDDDD0B00DD111DDDDDDDD0110D11DDDDDDDDD000DD1DDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 2
      OnClick = bt_editClick
    end
    object bt_delete: TsBitBtn
      Left = 790
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Delete'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD18DDDDDDD8D1DDDD118DDD
        DD18D11DDD811DDDD81DD111DDD118DD818DD1111DD8118811DDD11111DD1111
        1DDDD1111DDD8111DDDDD111DD8811118DDDD11DD1111DD118DDD1DDD11DDDDD
        118DDDDDDDDDDDDDD11DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 3
      OnClick = bt_deleteClick
    end
    object bt_close: TsBitBtn
      Left = 865
      Top = 6
      Width = 76
      Height = 25
      Align = alRight
      Caption = '&Close'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAA0000000000000AAA0333333333330AAA03333333333
        30AAA0333333333330AAA0333333333330AAA0333333333330AAA03333333333
        30AAA0333333333330AAA8000000000008AAAA0FFF0AAAAAAAA4AAA000AAAAAA
        AAA4AAAAAAAAAAAA4A4AAAAAAAAAAAAA44AAAAAAAAAAAAAA444A}
      TabOrder = 4
      OnClick = bt_closeClick
    end
    object qmy: TsBitBtn
      Left = 6
      Top = 6
      Width = 81
      Height = 25
      Align = alLeft
      Caption = 'Import'
      ImageIndex = 40
      Images = dm_bpr1.ImageList1
      TabOrder = 0
      OnClick = qmyClick
    end
    object bt_export: TsBitBtn
      Left = 566
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Export'
      ImageIndex = 7
      Images = dm_bpr1.ImageList1
      TabOrder = 5
      OnClick = bt_exportClick
    end
  end
  object sPanel3: TsPanel [3]
    Left = 0
    Top = 324
    Width = 947
    Height = 34
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object nama_file: TsEdit
      Left = 6
      Top = 6
      Width = 910
      Height = 22
      TabStop = False
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 23
    end
    object bt_open: TsBitBtn
      Left = 916
      Top = 6
      Width = 25
      Height = 22
      Hint = 'Buka File Excel'
      Align = alRight
      ImageIndex = 44
      Images = dm_bpr1.ImageList1
      TabOrder = 1
      OnClick = bt_openClick
    end
  end
  object sPanel4: TsPanel [4]
    Left = 0
    Top = 0
    Width = 947
    Height = 33
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 2
    object Label13: TLabel
      Left = 533
      Top = 6
      Width = 108
      Height = 21
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'Kode Cabang'
      Layout = tlCenter
      ExplicitLeft = 392
      ExplicitHeight = 19
    end
    object Label58: TLabel
      Left = 6
      Top = 6
      Width = 75
      Height = 21
      Margins.Top = 0
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 4
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object cb_kantor: TDBLookupComboBox
      Left = 641
      Top = 6
      Width = 300
      Height = 23
      Align = alRight
      DropDownWidth = 300
      KeyField = 'kode_kantor'
      ListField = 'nama_kantor'
      ListSource = dsLapKodeKantor
      TabOrder = 0
      OnClick = cb_kantorClick
    end
    object Edit1: TEdit
      Left = 81
      Top = 6
      Width = 300
      Height = 21
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 24
    end
    object bt_search: TsBitBtn
      Left = 381
      Top = 6
      Width = 36
      Height = 21
      Margins.Left = 0
      Align = alLeft
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 84
      Images = dm_bpr1.ImageList1
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 2
      OnClick = bt_searchClick
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 33
    Width = 947
    Height = 267
    Align = alClient
    DataSource = dsMyQDaftarSimpananNasabah
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'jumlah_pemilik_rekening'
        Title.Caption = 'Jumlah Pemilik Rekening'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nasabah_id'
        Title.Caption = 'Nasabah Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_integrasi'
        Title.Caption = 'Kode Integrasi'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_rekening'
        Title.Caption = 'No Rekening'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_dana'
        Title.Caption = 'Status Dana'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_mulai_atau_tgl_aro_terakhir'
        Title.Caption = 'Tanggal mulai/Tanggall Aro Terakhir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'suku_bunga'
        Title.Caption = 'Suku Bunga'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'suku_bunga_val'
        Title.Caption = 'Suku Bunga Val'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'biaya_cashback'
        Title.Caption = 'Biaya Cashback'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tingkat_bunga_penjaminan_lps'
        Title.Caption = 'Tingkat Bunga Penjaminan Lps'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kategori_tingkat_bunga_simpanan'
        Title.Caption = 'Kategori Tingkat Bunga Simpanan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_kategori_tingkat_bunga_simpanan'
        Title.Caption = 'Nama Kategori Tingkat Bunga Simpanan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_akhir'
        Title.Caption = 'Saldo Akhir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nominal_blokir'
        Title.Caption = 'Nominal Blokir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alasan_blokir'
        Title.Caption = 'Alasan Blokir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_akhir_bunga_bmhd'
        Title.Caption = 'Saldo Akhir Bunga Bmhd'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_akru_terakhir'
        Title.Caption = 'Tanggal Akru Terakhir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_jt'
        Title.Caption = 'Tanggal Jt'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsMyQDaftarSimpananNasabah: TMyDataSource
    DataSet = MyQDaftarSimpananNasabah
    Left = 392
    Top = 80
  end
  object MyQDaftarSimpananNasabah: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `jumlah_pemilik_rekening`,'
      '  `nasabah_id`,'
      '  `kode_integrasi`,'
      '  `no_rekening`,'
      '  `status_dana`,'
      '  `tgl_mulai_atau_tgl_aro_terakhir`,'
      '  `suku_bunga`,'
      '  `suku_bunga_val`,'
      '  `biaya_cashback`,'
      '  `tingkat_bunga_penjaminan_lps`,'
      '  `kategori_tingkat_bunga_simpanan`,'
      '  `saldo_akhir`,'
      '  `nominal_blokir`,'
      '  `alasan_blokir`,'
      '  `saldo_akhir_bunga_bmhd`,'
      '  `tgl_akru_terakhir`,'
      '  `tanggal_jt`'
      'FROM `lps_dsn_f0002`'
      '&WHERE'
      'LIMIT 30')
    ReadOnly = True
    CachedUpdates = True
    Left = 504
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDaftarSimpananNasabahjumlah_pemilik_rekening: TIntegerField
      FieldName = 'jumlah_pemilik_rekening'
    end
    object MyQDaftarSimpananNasabahnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDaftarSimpananNasabahkode_integrasi: TStringField
      FieldName = 'kode_integrasi'
      Size = 4
    end
    object MyQDaftarSimpananNasabahno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDaftarSimpananNasabahtgl_mulai_atau_tgl_aro_terakhir: TDateField
      FieldName = 'tgl_mulai_atau_tgl_aro_terakhir'
    end
    object MyQDaftarSimpananNasabahsuku_bunga: TStringField
      FieldName = 'suku_bunga'
      Size = 1
    end
    object MyQDaftarSimpananNasabahsuku_bunga_val: TFloatField
      FieldName = 'suku_bunga_val'
    end
    object MyQDaftarSimpananNasabahbiaya_cashback: TFloatField
      FieldName = 'biaya_cashback'
    end
    object MyQDaftarSimpananNasabahtingkat_bunga_penjaminan_lps: TFloatField
      FieldName = 'tingkat_bunga_penjaminan_lps'
    end
    object MyQDaftarSimpananNasabahkategori_tingkat_bunga_simpanan: TStringField
      FieldName = 'kategori_tingkat_bunga_simpanan'
      Size = 3
    end
    object MyQDaftarSimpananNasabahnominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQDaftarSimpananNasabahalasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQDaftarSimpananNasabahsaldo_akhir_bunga_bmhd: TFloatField
      FieldName = 'saldo_akhir_bunga_bmhd'
    end
    object MyQDaftarSimpananNasabahtgl_akru_terakhir: TDateField
      FieldName = 'tgl_akru_terakhir'
    end
    object MyQDaftarSimpananNasabahtanggal_jt: TDateField
      FieldName = 'tanggal_jt'
    end
    object MyQDaftarSimpananNasabahstatus_dana: TStringField
      FieldName = 'status_dana'
      Size = 1
    end
    object MyQDaftarSimpananNasabahsaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
    end
  end
  object dsLapKodeKantor: TMyDataSource
    DataSet = MyQLapKodeKantor
    Left = 720
    Top = 80
  end
  object MyQLapKodeKantor: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT '#39'000'#39' AS sandi_cabang, '#39'*'#39' AS kode_kantor, CONCAT('#39'000 - ' +
        #39','#39'Konsolidasi'#39') AS nama_kantor, '#39#39' AS nama_database'
      'UNION ALL'
      
        'SELECT sandi_cabang, kode_kantor, CONCAT(sandi_cabang,'#39' - '#39',nama' +
        '_kantor) AS nama_kantor, nama_database'
      'FROM app_kode_kantor'
      '&WHERE'
      'ORDER BY kode_kantor')
    Left = 816
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
        Value = 'WHERE kode_kantor=kode_cabang'
      end>
    object MyQLapKodeKantorsandi_cabang: TStringField
      FieldName = 'sandi_cabang'
      Size = 3
    end
    object MyQLapKodeKantorkode_kantor: TStringField
      FieldName = 'kode_kantor'
      FixedChar = True
      Size = 4
    end
    object MyQLapKodeKantornama_kantor: TStringField
      FieldName = 'nama_kantor'
      Size = 47
    end
    object MyQLapKodeKantornama_database: TStringField
      FieldName = 'nama_database'
      FixedChar = True
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
      
        '  DATE_FORMAT(tn.tgl_register, '#39'%Y%m%d'#39') AS tanggal_mulai_atau_t' +
        'anggal_aro_terakhir,'
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
      '  DATE_FORMAT(@pv_per_tgl, '#39'%Y%m%d'#39') AS tanggal_akrual_terakhir,'
      '  DATE_FORMAT(@pv_per_tgl, '#39'%Y%m%d'#39') AS tanggal_jatuh_tempo'
      'FROM dpm_online.tab_nominatif tn'
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
        'gl, '#39'%Y%m%d'#39')), '#39'%Y%m%d'#39') AS tanggal_mulai_atau_tanggal_aro_tera' +
        'khir,'
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
      '  DATE_FORMAT(@pv_per_tgl, '#39'%Y%m%d'#39') AS tanggal_akrual_terakhir,'
      '  DATE_FORMAT(dn.tgl_jt, '#39'%Y%m%d'#39') AS tanggal_jatuh_tempo'
      'FROM dpm_online.dep_nominatif dn'
      
        'LEFT JOIN dpm_online.deposito d ON dn.no_rekening = d.no_rekenin' +
        'g'
      'WHERE dn.tgl_laporan = @pv_per_tgl AND dn.saldo_akhir > 0'
      'GROUP BY dn.`nasabah_id`')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
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
    object MyQImporttanggal_mulai_atau_tanggal_aro_terakhir: TStringField
      FieldName = 'tanggal_mulai_atau_tanggal_aro_terakhir'
      Size = 8
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
    object MyQImporttanggal_akrual_terakhir: TStringField
      FieldName = 'tanggal_akrual_terakhir'
      Size = 8
    end
    object MyQImporttanggal_jatuh_tempo: TStringField
      FieldName = 'tanggal_jatuh_tempo'
      Size = 8
    end
    object MyQImportcashback: TFloatField
      FieldName = 'cashback'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xls'
    Filter = 'Excel Files|*.xls'
    Title = 'Buka File Excel'
    Left = 552
    Top = 152
  end
  object QImport3XLS1: TQImport3XLS
    ImportDestination = qidUserDefined
    Map.Strings = (
      'sandi_kantor=A5-COLFINISH;'
      'id_pihak_lawan=B5-COLFINISH;'
      'no_identitas=C5-COLFINISH;'
      'no_rekening=D5-COLFINISH;'
      'jml_pendanaan_plafon=E5-COLFINISH;'
      'jml_pendanaan_baki_debet=F5-COLFINISH;'
      'bagian_pendanaan_plafon=G5-COLFINISH;'
      'bagian_pendanaan_baki_debet=H5-COLFINISH;'
      'sandi_bank_peserta=I5-COLFINISH;'
      'status_peserta=J5-COLFINISH;'
      'no_perjanjian=K5-COLFINISH;'
      'pendanaan_bank_pelapor=L5-COLFINISH;'
      'kualitas=M5-COLFINISH;'
      'nominal_tunggakan_pokok=N5-COLFINISH;'
      'nominal_tunggakan_bunga=O5-COLFINISH;'
      'hari_tunggakan_pokok=P5-COLFINISH;'
      'hari_tunggakan_bunga=Q5-COLFINISH;')
    Formats.DecimalSeparator = '.'
    Formats.ThousandSeparator = ','
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'M/d/yyyy'
    Formats.LongDateFormat = 'dddd, MMMM d, yyyy'
    Formats.ShortTimeFormat = 'h:mm AMPM'
    Formats.LongTimeFormat = 'h:mm:ss AMPM'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnBeforeImport = QImport3XLS1BeforeImport
    OnAfterImport = QImport3XLS1AfterImport
    OnUserDefinedImport = QImport3XLS1UserDefinedImport
    FileName = '\\VBOXSVR\ShareVM\Test\Laporan YDT11092023111557.xls'
    SkipFirstRows = 4
    DefaultSheetName = 'Rekap'
    Left = 656
    Top = 152
  end
end
