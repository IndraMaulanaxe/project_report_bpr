inherited fr_FormLPSDk0004: Tfr_FormLPSDk0004
  BorderStyle = bsSizeable
  Caption = 'Form Dk0004 - Daftar Data Simpanan Join'
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
      OnClick = bt_exportClick
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
      Width = 25
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
    DataSource = dsMyQDaftarDataKeuangan
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
        Width = 230
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
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'persentase_kepemilikan'
        Title.Caption = 'Persentase Kepemilikan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 304
        Visible = True
      end>
  end
  object dsMyQDaftarDataKeuangan: TMyDataSource
    DataSet = MyQDaftarDataKeuangan
    Left = 392
    Top = 80
  end
  object MyQDaftarDataKeuangan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `persentase_kepemilikan`'
      'FROM `lps_dk_f0004`'
      '&WHERE')
    ReadOnly = True
    CachedUpdates = True
    Left = 504
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDaftarDataKeuanganflag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDaftarDataKeuangannasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDaftarDataKeuanganno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDaftarDataKeuanganpersentase_kepemilikan: TFloatField
      FieldName = 'persentase_kepemilikan'
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
      
        'SELECT nasabah_id, no_rekening, '#39'50'#39' AS persentase_kepemilikan F' +
        'ROM dpm_online.tab_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL '
      
        'SELECT nasabah_id_join, no_rekening, '#39'50'#39' AS persentase_kepemili' +
        'kan FROM dpm_online.tab_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL'
      
        'SELECT nasabah_id, no_rekening, '#39'50'#39' AS persentase_kepemilikan F' +
        'ROM dpm_online.dep_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL'
      
        'SELECT nasabah_id_join, no_rekening, '#39'50'#39' AS persentase_kepemili' +
        'kan FROM dpm_online.dep_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39');')
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
    end
    object MyQImportpersentase_kepemilikan: TStringField
      FieldName = 'persentase_kepemilikan'
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
