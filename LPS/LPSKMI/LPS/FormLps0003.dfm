inherited fr_FormLps0003: Tfr_FormLps0003
  BorderStyle = bsSizeable
  Caption = 'Form 0003 - Laporan Data Kewajiban (Kredit)'
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
    DataSource = dsMyQDaftarKreditSindikasi
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
        FieldName = 'no_rekening'
        Title.Caption = 'No. Rekening'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Title.Caption = 'Jenis'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kolektibilitas'
        Title.Caption = 'Kolektibilitas'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jml_pinjaman'
        Title.Caption = 'Jumlah Pinjaman'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'baki_debet'
        Title.Caption = 'Baki Debet'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_tunggakan_pokok'
        Title.Caption = 'Jumlah Tunggakan Pokok'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_tunggakan_bunga'
        Title.Caption = 'Jumlah Tunggakan Bunga'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_agunan'
        Title.Caption = 'Jenis Agunan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_realisasi'
        Title.Caption = 'Tanggal Realisasi'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_jatuh_tempo'
        Title.Caption = 'Tanggal Jatuh Tempo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kategori_usaha'
        Title.Caption = 'Kategori Usaha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object dsMyQDaftarKreditSindikasi: TMyDataSource
    DataSet = MyQDaftarKreditSindikasi
    Left = 392
    Top = 80
  end
  object MyQDaftarKreditSindikasi: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `jenis`,'
      '  `kolektibilitas`,'
      '  `jml_pinjaman`,'
      '  `baki_debet`,'
      '  `jumlah_tunggakan_pokok`,'
      '  `jumlah_tunggakan_bunga`,'
      '  `jenis_agunan`,'
      '  `tgl_realisasi`,'
      '  `tgl_jatuh_tempo`,'
      '  `kategori_usaha`'
      'FROM `lps_dk_f0003`'
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
    object MyQDaftarKreditSindikasiflag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDaftarKreditSindikasinasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDaftarKreditSindikasino_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDaftarKreditSindikasijenis: TStringField
      FieldName = 'jenis'
      Size = 3
    end
    object MyQDaftarKreditSindikasikolektibilitas: TStringField
      FieldName = 'kolektibilitas'
      Size = 1
    end
    object MyQDaftarKreditSindikasijml_pinjaman: TFloatField
      FieldName = 'jml_pinjaman'
    end
    object MyQDaftarKreditSindikasibaki_debet: TFloatField
      FieldName = 'baki_debet'
    end
    object MyQDaftarKreditSindikasijumlah_tunggakan_pokok: TFloatField
      FieldName = 'jumlah_tunggakan_pokok'
    end
    object MyQDaftarKreditSindikasijumlah_tunggakan_bunga: TFloatField
      FieldName = 'jumlah_tunggakan_bunga'
    end
    object MyQDaftarKreditSindikasijenis_agunan: TStringField
      FieldName = 'jenis_agunan'
      Size = 10
    end
    object MyQDaftarKreditSindikasitgl_realisasi: TDateField
      FieldName = 'tgl_realisasi'
    end
    object MyQDaftarKreditSindikasitgl_jatuh_tempo: TDateField
      FieldName = 'tgl_jatuh_tempo'
    end
    object MyQDaftarKreditSindikasikategori_usaha: TStringField
      FieldName = 'kategori_usaha'
      Size = 2
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
      '#DK'
      'SET @pv_per_tgl = &TGL; #'#39'2025-12-31'#39'; '
      ''
      'SELECT'
      #39'D'#39' AS D,'
      'kr.nasabah_id,'
      'kr.no_rekening,'
      'IF(k.jenis = '#39'05'#39', '#39'30'#39', k.jenis) AS jenis_kewajiban, '
      'kr.kolek_bi,'
      'kr.jml_pinjaman,'
      'CEIL(kr.baki_debet) AS baki_debet,'
      'CEIL(kr.jumlah_tunggakan_pokok) AS jumlah_tunggakan_pokok,'
      'CEIL(kr.jumlah_tunggakan_bunga) AS jumlah_tunggakan_bunga,'
      '(CASE'
      #9'WHEN kr.jenis_agunan IN ('#39'1'#39','#39'2'#39','#39'3'#39') THEN 100'
      #9'WHEN kr.jenis_agunan IN ('#39'4'#39','#39'5'#39','#39'6'#39','#39'7'#39','#39'9'#39') THEN 200'
      #9'ELSE 300'
      'END) AS jenis_agunan,'
      'kr.tgl_realisasi AS jangka_waktu_mulai,'
      'kr.tgl_jatuh_tempo AS jangka_waktu_jatuh_tempo,'
      
        'IF(k.kategori_usaha IS NULL, '#39'99'#39', k.kategori_usaha) AS kategori' +
        '_usaha'
      'FROM dpm_online.kre_nominatif kr'
      
        'LEFT JOIN dpm_online.`slik_kredit` sk ON kr.no_rekening = sk.`no' +
        '_rekening`'
      
        'LEFT JOIN dpm_online.`apolo_f0600_kredit` k ON kr.no_rekening = ' +
        'k.`NO_REKENING`'
      
        'LEFT JOIN dpm_online.`kre_kode_jenis_agunan` ja ON ja.kode_jenis' +
        '_agunan = kr.jenis_agunan')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
      end>
    object MyQImportnasabah_id: TStringField
      FieldName = 'nasabah_id'
      FixedChar = True
    end
    object MyQImportno_rekening: TStringField
      FieldName = 'no_rekening'
      FixedChar = True
      Size = 25
    end
    object MyQImportjenis_kewajiban: TStringField
      FieldName = 'jenis_kewajiban'
      Size = 2
    end
    object MyQImportkolek_bi: TSmallintField
      FieldName = 'kolek_bi'
    end
    object MyQImportjml_pinjaman: TFloatField
      FieldName = 'jml_pinjaman'
    end
    object MyQImportbaki_debet: TLargeintField
      FieldName = 'baki_debet'
    end
    object MyQImportjumlah_tunggakan_pokok: TLargeintField
      FieldName = 'jumlah_tunggakan_pokok'
    end
    object MyQImportjumlah_tunggakan_bunga: TLargeintField
      FieldName = 'jumlah_tunggakan_bunga'
    end
    object MyQImportjenis_agunan: TLargeintField
      FieldName = 'jenis_agunan'
    end
    object MyQImportjangka_waktu_mulai: TDateField
      FieldName = 'jangka_waktu_mulai'
    end
    object MyQImportjangka_waktu_jatuh_tempo: TDateField
      FieldName = 'jangka_waktu_jatuh_tempo'
    end
    object MyQImportkategori_usaha: TStringField
      FieldName = 'kategori_usaha'
      Size = 2
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
