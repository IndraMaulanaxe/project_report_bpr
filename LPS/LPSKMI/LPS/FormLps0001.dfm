inherited fr_FormLPS0001: Tfr_FormLPS0001
  BorderStyle = bsSizeable
  Caption = 'Form 0001 - Daftar Data Nasabah'
  ClientHeight = 395
  ClientWidth = 947
  ExplicitWidth = 963
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  object sGauge1: TsGauge [1]
    Left = 0
    Top = 334
    Width = 947
    Height = 24
    Align = alBottom
    Visible = False
    ForeColor = clNavy
    Progress = 0
    Suffix = '%'
    ExplicitLeft = 8
    ExplicitTop = 310
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
      Visible = False
      WordWrap = False
    end
  end
  object sPanel4: TsPanel [3]
    Left = 0
    Top = 0
    Width = 947
    Height = 33
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
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
      TabOrder = 0
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
      TabOrder = 1
      OnClick = bt_searchClick
    end
    object cb_kantor: TDBLookupComboBox
      Left = 641
      Top = 6
      Width = 300
      Height = 21
      Align = alRight
      DropDownWidth = 300
      KeyField = 'kode_kantor'
      ListField = 'nama_kantor'
      ListSource = dsLapKodeKantor
      TabOrder = 2
      OnClick = cb_kantorClick
    end
  end
  object DBGrid1: TDBGrid [4]
    Left = 0
    Top = 33
    Width = 947
    Height = 301
    Align = alClient
    DataSource = dsMyQDaftarDataNasabah
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
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
        FieldName = 'nama_nasabah'
        Title.Caption = 'Nama Nasabah'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_id'
        Title.Caption = 'Jenis Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_id'
        Title.Caption = 'No Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ibu_kandung'
        Title.Caption = 'Nama Ibu Kandung'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_lahir'
        Title.Caption = 'Tanggal Lahir'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_id2'
        Title.Caption = 'No Id2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pengurus'
        Title.Caption = 'Nama Pengurus'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_identitas'
        Title.Caption = 'Jenis Identitas'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomor_identitas'
        Title.Caption = 'Nomor Identitas'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Caption = 'Alamat'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kota_kab'
        Title.Caption = 'Kota/Kab'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wni'
        Title.Caption = 'WNI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telpon'
        Title.Caption = 'Telpon'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'flag_fraud'
        Title.Caption = 'Flag Fraud'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hub_dgn_bank'
        Title.Caption = 'Hub Dengan Bank'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'slik_kode_hub_ljk'
        Title.Caption = 'Slik Kode Hub Ljk'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'slik_kode_gol_debitur'
        Title.Caption = 'Slik Kode Gol Debitur'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsMyQDaftarDataNasabah: TMyDataSource
    DataSet = MyQDaftarDataNasabah
    Left = 392
    Top = 80
  end
  object MyQDaftarDataNasabah: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `nama_nasabah`,'
      '  `jenis_id`,'
      '  `no_id`,'
      '  `nama_ibu_kandung`,'
      '  `tgl_lahir`,'
      '  `no_id2`,'
      '  `nama_pengurus`,'
      '  `jenis_identitas`,'
      '  `nomor_identitas`,'
      '  `alamat`,'
      '  `kota_kab`,'
      '  `wni`,'
      '  `telpon`,'
      '  `flag_fraud`,'
      '  `hub_dgn_bank`,'
      '  `slik_kode_hub_ljk`,'
      '  `slik_kode_gol_debitur`'
      'FROM `lps_dn_f0001`'
      '&WHERE')
    ReadOnly = True
    CachedUpdates = True
    Left = 504
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDaftarDataNasabahflag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDaftarDataNasabahnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDaftarDataNasabahnama_nasabah: TStringField
      FieldName = 'nama_nasabah'
      Size = 150
    end
    object MyQDaftarDataNasabahjenis_id: TStringField
      FieldName = 'jenis_id'
      Size = 3
    end
    object MyQDaftarDataNasabahno_id: TStringField
      FieldName = 'no_id'
      Size = 25
    end
    object MyQDaftarDataNasabahnama_ibu_kandung: TStringField
      FieldName = 'nama_ibu_kandung'
      Size = 150
    end
    object MyQDaftarDataNasabahtgl_lahir: TDateField
      FieldName = 'tgl_lahir'
    end
    object MyQDaftarDataNasabahno_id2: TStringField
      FieldName = 'no_id2'
      Size = 35
    end
    object MyQDaftarDataNasabahnama_pengurus: TStringField
      FieldName = 'nama_pengurus'
      Size = 150
    end
    object MyQDaftarDataNasabahjenis_identitas: TStringField
      FieldName = 'jenis_identitas'
      Size = 3
    end
    object MyQDaftarDataNasabahnomor_identitas: TStringField
      FieldName = 'nomor_identitas'
      Size = 25
    end
    object MyQDaftarDataNasabahalamat: TStringField
      FieldName = 'alamat'
      Size = 300
    end
    object MyQDaftarDataNasabahkota_kab: TStringField
      FieldName = 'kota_kab'
      Size = 4
    end
    object MyQDaftarDataNasabahwni: TStringField
      FieldName = 'wni'
      Size = 3
    end
    object MyQDaftarDataNasabahtelpon: TStringField
      FieldName = 'telpon'
      Size = 15
    end
    object MyQDaftarDataNasabahflag_fraud: TStringField
      FieldName = 'flag_fraud'
      Size = 3
    end
    object MyQDaftarDataNasabahhub_dgn_bank: TStringField
      FieldName = 'hub_dgn_bank'
      Size = 2
    end
    object MyQDaftarDataNasabahslik_kode_hub_ljk: TStringField
      FieldName = 'slik_kode_hub_ljk'
      Size = 2
    end
    object MyQDaftarDataNasabahslik_kode_gol_debitur: TStringField
      FieldName = 'slik_kode_gol_debitur'
      Size = 11
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
      '-- Step 1: DN dari kre_nominatif'
      'SELECT '
      '  '#39'D'#39' AS D,'
      '  tn.nasabah_id,'
      '  tn.nama_nasabah,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.no_id, '#39#39') AS nomor_identitas,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.NAMA_IBU_KANDUNG, '#39#39') AS nama_ibu_' +
        'kandung,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', DATE_FORMAT(n.TGLLAHIR, '#39'%Y%m%d'#39'), '#39 +
        #39') AS tanggal_lahir,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', n.no_id, '#39#39') AS nomor_identitas_bada' +
        'n_hukum,'
      '  npp.nama_pengurus AS nama_lengkap_pemegang_kuasa,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas_pemega' +
        'ng_kuasa,'
      '  npp.nomor_identitas AS nomor_identitas_pemegang_kuasa,'
      
        '  IF(na.nasabah_id IS NULL, CONCAT(n.alamat, " ", n.desa, " ", n' +
        '.kecamatan, " ", n.kodepos),'
      
        '    IF(n.alamat_legal = '#39'KTP'#39', CONCAT(na.ktp_alamat, " RT.", na.' +
        'ktp_rt, " RW.", na.ktp_rw),'
      
        '    IF(n.alamat_legal = '#39'SURAT'#39', CONCAT(na.surat_alamat, " RT.",' +
        ' na.surat_rt, " RW.", na.surat_rw),'
      
        '    IF(n.alamat_legal = '#39'KANTOR'#39', CONCAT(na.kerja_alamat, " RT."' +
        ', na.kerja_rt, " RW.", na.kerja_rw),'
      
        '    CONCAT(na.lain_alamat, " ", na.lain_desa, " ", na.lain_kecam' +
        'atan, " ", na.lain_kode_pos))))) AS alamat,'
      '  n.kota_kab,'
      '  '#39'WNI'#39' AS kewarganegaraan,'
      '  n.TELPON AS nomor_telepon,'
      '  '#39'1'#39' AS flag_fraud,'
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39',n.`slik_kode_hub_ljk`,'#39'T6'#39') AS hu' +
        'bungan_dengan_bank,'
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39','#39'20'#39','#39'01'#39') AS hubungan_dengan_pih' +
        'ak_terkait,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'9700'#39', '#39'8900'#39') AS golongan_nasabah'
      'FROM dpm_online.kre_nominatif tn'
      'LEFT JOIN dpm_online.nasabah n ON tn.nasabah_id = n.NASABAH_ID'
      
        'LEFT JOIN dpm_online.nasabah_alamat na ON na.nasabah_id = tn.nas' +
        'abah_id'
      
        'LEFT JOIN dpm_online.nasabah_pengurus_pemilik npp ON npp.nasabah' +
        '_id = tn.nasabah_id'
      '&WHERE'
      'GROUP BY tn.nasabah_id'
      ''
      'UNION ALL'
      ''
      
        '-- Step 1: DN dari tab_nominatif (jika belum ada di dua sebelumn' +
        'ya)'
      'SELECT '
      '  '#39'D'#39' AS D,'
      '  tn.nasabah_id,'
      '  tn.nama_nasabah,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.no_id, '#39#39') AS nomor_identitas,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.NAMA_IBU_KANDUNG, '#39#39') AS nama_ibu_' +
        'kandung,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', DATE_FORMAT(n.TGLLAHIR, '#39'%Y%m%d'#39'), '#39 +
        #39') AS tanggal_lahir,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', n.no_id, '#39#39') AS nomor_identitas_bada' +
        'n_hukum,'
      '  npp.nama_pengurus AS nama_lengkap_pemegang_kuasa,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas_pemega' +
        'ng_kuasa,'
      '  npp.nomor_identitas AS nomor_identitas_pemegang_kuasa,'
      
        '  IF(na.nasabah_id IS NULL, CONCAT(n.alamat, " ", n.desa, " ", n' +
        '.kecamatan, " ", n.kodepos),'
      
        '    IF(n.alamat_legal = '#39'KTP'#39', CONCAT(na.ktp_alamat, " RT.", na.' +
        'ktp_rt, " RW.", na.ktp_rw),'
      
        '    IF(n.alamat_legal = '#39'SURAT'#39', CONCAT(na.surat_alamat, " RT.",' +
        ' na.surat_rt, " RW.", na.surat_rw),'
      
        '    IF(n.alamat_legal = '#39'KANTOR'#39', CONCAT(na.kerja_alamat, " RT."' +
        ', na.kerja_rt, " RW.", na.kerja_rw),'
      
        '    CONCAT(na.lain_alamat, " ", na.lain_desa, " ", na.lain_kecam' +
        'atan, " ", na.lain_kode_pos))))) AS alamat,'
      '  n.kota_kab,'
      '  '#39'WNI'#39' AS kewarganegaraan,'
      '  n.TELPON AS nomor_telepon,'
      '  '#39'1'#39' AS flag_fraud, '
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39',n.`slik_kode_hub_ljk`,'#39'T6'#39') AS hu' +
        'bungan_dengan_bank,'
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39','#39'20'#39','#39'01'#39') AS hubungan_dengan_pih' +
        'ak_terkait,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'9700'#39', '#39'8900'#39') AS golongan_nasabah'
      'FROM dpm_online.tab_nominatif tn'
      'LEFT JOIN dpm_online.nasabah n ON tn.nasabah_id = n.NASABAH_ID'
      
        'LEFT JOIN dpm_online.nasabah_alamat na ON na.nasabah_id = tn.nas' +
        'abah_id'
      
        'LEFT JOIN dpm_online.nasabah_pengurus_pemilik npp ON npp.nasabah' +
        '_id = tn.nasabah_id'
      'WHERE tn.tgl_laporan = @pv_per_tgl '
      '&WHERE1'
      'AND tn.saldo_akhir > 0'
      'GROUP BY tn.nasabah_id '
      ''
      'UNION ALL'
      ''
      
        '-- Step 2: DN dari dep_nominatif (jika belum ada di dua sebelumn' +
        'ya)'
      'SELECT '
      '  '#39'D'#39' AS D,'
      '  tn.nasabah_id,'
      '  tn.nama_nasabah,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.no_id, '#39#39') AS nomor_identitas,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', n.NAMA_IBU_KANDUNG, '#39#39') AS nama_ibu_' +
        'kandung,'
      
        '  IF(n.JENIS_DEBITUR = '#39'0'#39', DATE_FORMAT(n.TGLLAHIR, '#39'%Y%m%d'#39'), '#39 +
        #39') AS tanggal_lahir,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', n.no_id, '#39#39') AS nomor_identitas_bada' +
        'n_hukum,'
      '  npp.nama_pengurus AS nama_lengkap_pemegang_kuasa,'
      
        '  IF(n.JENIS_DEBITUR = '#39'1'#39', '#39'KTP'#39', '#39#39') AS jenis_identitas_pemega' +
        'ng_kuasa,'
      '  npp.nomor_identitas AS nomor_identitas_pemegang_kuasa,'
      
        '  IF(na.nasabah_id IS NULL, CONCAT(n.alamat, " ", n.desa, " ", n' +
        '.kecamatan, " ", n.kodepos),'
      
        '    IF(n.alamat_legal = '#39'KTP'#39', CONCAT(na.ktp_alamat, " RT.", na.' +
        'ktp_rt, " RW.", na.ktp_rw),'
      
        '    IF(n.alamat_legal = '#39'SURAT'#39', CONCAT(na.surat_alamat, " RT.",' +
        ' na.surat_rt, " RW.", na.surat_rw),'
      
        '    IF(n.alamat_legal = '#39'KANTOR'#39', CONCAT(na.kerja_alamat, " RT."' +
        ', na.kerja_rt, " RW.", na.kerja_rw),'
      
        '    CONCAT(na.lain_alamat, " ", na.lain_desa, " ", na.lain_kecam' +
        'atan, " ", na.lain_kode_pos))))) AS alamat,'
      '  n.kota_kab,'
      '  '#39'WNI'#39' AS kewarganegaraan,'
      '  n.TELPON AS nomor_telepon,'
      '  '#39'1'#39' AS flag_fraud,'
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39',n.`slik_kode_hub_ljk`,'#39'T6'#39') AS hu' +
        'bungan_dengan_bank,'
      
        '  IF(n.`slik_kode_hub_ljk`='#39'N'#39','#39'20'#39','#39'01'#39') AS hubungan_dengan_pih' +
        'ak_terkait,'
      '  IF(n.JENIS_DEBITUR = '#39'0'#39', '#39'9700'#39', '#39'8900'#39') AS golongan_nasabah'
      'FROM dpm_online.dep_nominatif tn'
      'LEFT JOIN dpm_online.nasabah n ON tn.nasabah_id = n.NASABAH_ID'
      
        'LEFT JOIN dpm_online.nasabah_alamat na ON na.nasabah_id = tn.nas' +
        'abah_id'
      
        'LEFT JOIN dpm_online.nasabah_pengurus_pemilik npp ON npp.nasabah' +
        '_id = tn.nasabah_id'
      'WHERE tn.tgl_laporan = @pv_per_tgl'
      '  AND tn.nasabah_id NOT IN ('
      
        '    SELECT nasabah_id FROM dpm_online.tab_nominatif WHERE tgl_la' +
        'poran = @pv_per_tgl AND saldo_akhir > 0'
      '  )'
      '  AND tn.saldo_akhir > 0'
      '&WHERE1'
      'GROUP BY tn.nasabah_id;')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
      end
      item
        Name = 'WHERE'
      end
      item
        Name = 'WHERE1'
      end>
    object MyQImportnasabah_id: TStringField
      FieldName = 'nasabah_id'
      FixedChar = True
    end
    object MyQImportnama_nasabah: TStringField
      FieldName = 'nama_nasabah'
      Size = 100
    end
    object MyQImportjenis_identitas: TStringField
      FieldName = 'jenis_identitas'
      Size = 3
    end
    object MyQImportnomor_identitas: TStringField
      FieldName = 'nomor_identitas'
      Size = 30
    end
    object MyQImportnama_ibu_kandung: TStringField
      FieldName = 'nama_ibu_kandung'
      Size = 35
    end
    object MyQImporttanggal_lahir: TStringField
      FieldName = 'tanggal_lahir'
      Size = 8
    end
    object MyQImportnomor_identitas_badan_hukum: TStringField
      FieldName = 'nomor_identitas_badan_hukum'
      Size = 30
    end
    object MyQImportnama_lengkap_pemegang_kuasa: TStringField
      FieldName = 'nama_lengkap_pemegang_kuasa'
      Size = 150
    end
    object MyQImportjenis_identitas_pemegang_kuasa: TStringField
      FieldName = 'jenis_identitas_pemegang_kuasa'
      Size = 3
    end
    object MyQImportnomor_identitas_pemegang_kuasa: TStringField
      FieldName = 'nomor_identitas_pemegang_kuasa'
      Size = 16
    end
    object MyQImportalamat: TStringField
      FieldName = 'alamat'
      Size = 308
    end
    object MyQImportkota_kab: TStringField
      FieldName = 'kota_kab'
    end
    object MyQImportkewarganegaraan: TStringField
      FieldName = 'kewarganegaraan'
      Size = 3
    end
    object MyQImportnomor_telepon: TStringField
      FieldName = 'nomor_telepon'
      FixedChar = True
      Size = 50
    end
    object MyQImportflag_fraud: TStringField
      FieldName = 'flag_fraud'
      Size = 1
    end
    object MyQImporthubungan_dengan_bank: TStringField
      FieldName = 'hubungan_dengan_bank'
      Size = 1
    end
    object MyQImporthubungan_dengan_pihak_terkait: TStringField
      FieldName = 'hubungan_dengan_pihak_terkait'
      Size = 2
    end
    object MyQImportgolongan_nasabah: TStringField
      FieldName = 'golongan_nasabah'
      Size = 4
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
