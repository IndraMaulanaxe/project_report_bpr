inherited fr_FormLps0004: Tfr_FormLps0004
  Caption = 'Form 0004 - Data Daftar Rincian Kantor BPR'
  ClientHeight = 308
  ClientWidth = 819
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 825
  ExplicitHeight = 337
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 271
    Width = 819
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 1
    object bt_tambah: TsBitBtn
      Left = 513
      Top = 6
      Width = 75
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
      TabOrder = 0
      OnClick = bt_tambahClick
    end
    object bt_edit: TsBitBtn
      Left = 588
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
      TabOrder = 1
      OnClick = bt_editClick
    end
    object bt_delete: TsBitBtn
      Left = 663
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
      TabOrder = 2
      OnClick = bt_deleteClick
    end
    object bt_close: TsBitBtn
      Left = 738
      Top = 6
      Width = 75
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
      TabOrder = 3
      OnClick = bt_closeClick
    end
    object bt_import: TsBitBtn
      Left = 6
      Top = 6
      Width = 81
      Height = 25
      Align = alLeft
      Caption = 'Import'
      ImageIndex = 40
      Images = dm_bpr1.ImageList1
      TabOrder = 4
      OnClick = bt_importClick
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 0
    Width = 819
    Height = 271
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 807
      Height = 259
      Align = alClient
      DataSource = dsMyQOrgan
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
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
          FieldName = 'sandi_kantor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_kantor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat_kantor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat_kota'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 147
          Visible = True
        end>
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 640
    Top = 80
  end
  object MyQDaftarKantor: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT `flag_detail`, `sandi_kantor`, `nama_kantor`, `koordinat_' +
        'kantor`, '
      
        '    `alamat_kantor`, `alamat_kecamatan`, `alamat_kota`, `alamat_' +
        'kode_pos`, '
      '    `nama_pimpinan`, `no_telp`, `jml_tetap_s3`, `jml_tetap_s2`, '
      
        '    `jml_tetap_s1`, `jml_tetap_d3`, `jml_tetap_slta`, `jml_tetap' +
        '_lainnya`, '
      
        '    `jml_tidaktetap_s3`, `jml_tidaktetap_s2`, `jml_tidaktetap_s1' +
        '`, '
      
        '    `jml_tidaktetap_d3`, `jml_tidaktetap_slta`, `jml_tidaktetap_' +
        'lainnya`, '
      
        '    `jml_kantor_kas`, `status_kepemilikan_gedung`, `jml_kas_mobi' +
        'l_terapung`, '
      
        '    `jml_edc_sendiri`, `jml_edc_bu`, `jml_edc_lain`, `jml_atm_se' +
        'ndiri`, `jml_atm_lain`'
      'FROM `lps_f0004`'
      '&WHERE')
    ReadOnly = True
    Left = 504
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDaftarKantorflag_detail: TStringField
      FieldName = 'flag_detail'
      Origin = 'apolo_f0004.flag_detail'
      FixedChar = True
      Size = 3
    end
    object MyQDaftarKantorsandi_kantor: TStringField
      DisplayLabel = 'Sandi Kantor'
      FieldName = 'sandi_kantor'
      Origin = 'apolo_f0004.sandi_kantor'
      Size = 3
    end
    object MyQDaftarKantornama_kantor: TStringField
      DisplayLabel = 'Nama Kantor'
      FieldName = 'nama_kantor'
      Origin = 'apolo_f0004.nama_kantor'
      Size = 50
    end
    object MyQDaftarKantorkoordinat_kantor: TStringField
      FieldName = 'koordinat_kantor'
      Origin = 'apolo_f0004.koordinat_kantor'
      Size = 50
    end
    object MyQDaftarKantoralamat_kantor: TStringField
      DisplayLabel = 'Alamat Kantor'
      FieldName = 'alamat_kantor'
      Origin = 'apolo_f0004.alamat_kantor'
      Size = 50
    end
    object MyQDaftarKantoralamat_kecamatan: TStringField
      FieldName = 'alamat_kecamatan'
      Origin = 'apolo_f0004.alamat_kecamatan'
      Size = 50
    end
    object MyQDaftarKantoralamat_kota: TStringField
      DisplayLabel = 'Alamat Kota'
      FieldName = 'alamat_kota'
      Origin = 'apolo_f0004.alamat_kota'
      FixedChar = True
      Size = 4
    end
    object MyQDaftarKantoralamat_kode_pos: TStringField
      FieldName = 'alamat_kode_pos'
      Origin = 'apolo_f0004.alamat_kode_pos'
      FixedChar = True
      Size = 5
    end
    object MyQDaftarKantornama_pimpinan: TStringField
      FieldName = 'nama_pimpinan'
      Origin = 'apolo_f0004.nama_pimpinan'
      Size = 50
    end
    object MyQDaftarKantorno_telp: TStringField
      FieldName = 'no_telp'
      Origin = 'apolo_f0004.no_telp'
      Size = 15
    end
    object MyQDaftarKantorjml_tetap_s3: TFloatField
      FieldName = 'jml_tetap_s3'
      Origin = 'apolo_f0004.jml_tetap_s3'
    end
    object MyQDaftarKantorjml_tetap_s2: TFloatField
      FieldName = 'jml_tetap_s2'
      Origin = 'apolo_f0004.jml_tetap_s2'
    end
    object MyQDaftarKantorjml_tetap_s1: TFloatField
      FieldName = 'jml_tetap_s1'
      Origin = 'apolo_f0004.jml_tetap_s1'
    end
    object MyQDaftarKantorjml_tetap_d3: TFloatField
      FieldName = 'jml_tetap_d3'
      Origin = 'apolo_f0004.jml_tetap_d3'
    end
    object MyQDaftarKantorjml_tetap_slta: TFloatField
      FieldName = 'jml_tetap_slta'
      Origin = 'apolo_f0004.jml_tetap_slta'
    end
    object MyQDaftarKantorjml_tetap_lainnya: TFloatField
      FieldName = 'jml_tetap_lainnya'
      Origin = 'apolo_f0004.jml_tetap_lainnya'
    end
    object MyQDaftarKantorjml_tidaktetap_s3: TFloatField
      FieldName = 'jml_tidaktetap_s3'
      Origin = 'apolo_f0004.jml_tidaktetap_s3'
    end
    object MyQDaftarKantorjml_tidaktetap_s2: TFloatField
      FieldName = 'jml_tidaktetap_s2'
      Origin = 'apolo_f0004.jml_tidaktetap_s2'
    end
    object MyQDaftarKantorjml_tidaktetap_s1: TFloatField
      FieldName = 'jml_tidaktetap_s1'
      Origin = 'apolo_f0004.jml_tidaktetap_s1'
    end
    object MyQDaftarKantorjml_tidaktetap_d3: TFloatField
      FieldName = 'jml_tidaktetap_d3'
      Origin = 'apolo_f0004.jml_tidaktetap_d3'
    end
    object MyQDaftarKantorjml_tidaktetap_slta: TFloatField
      FieldName = 'jml_tidaktetap_slta'
      Origin = 'apolo_f0004.jml_tidaktetap_slta'
    end
    object MyQDaftarKantorjml_tidaktetap_lainnya: TFloatField
      FieldName = 'jml_tidaktetap_lainnya'
      Origin = 'apolo_f0004.jml_tidaktetap_lainnya'
    end
    object MyQDaftarKantorjml_kantor_kas: TFloatField
      FieldName = 'jml_kantor_kas'
      Origin = 'apolo_f0004.jml_kantor_kas'
    end
    object MyQDaftarKantorstatus_kepemilikan_gedung: TStringField
      FieldName = 'status_kepemilikan_gedung'
      Origin = 'apolo_f0004.status_kepemilikan_gedung'
      FixedChar = True
      Size = 2
    end
    object MyQDaftarKantorjml_kas_mobil_terapung: TFloatField
      FieldName = 'jml_kas_mobil_terapung'
      Origin = 'apolo_f0004.jml_kas_mobil_terapung'
    end
    object MyQDaftarKantorjml_edc_sendiri: TFloatField
      FieldName = 'jml_edc_sendiri'
      Origin = 'apolo_f0004.jml_edc_sendiri'
    end
    object MyQDaftarKantorjml_edc_bu: TFloatField
      FieldName = 'jml_edc_bu'
      Origin = 'apolo_f0004.jml_edc_bu'
    end
    object MyQDaftarKantorjml_edc_lain: TFloatField
      FieldName = 'jml_edc_lain'
      Origin = 'apolo_f0004.jml_edc_lain'
    end
    object MyQDaftarKantorjml_atm_sendiri: TFloatField
      FieldName = 'jml_atm_sendiri'
      Origin = 'apolo_f0004.jml_atm_sendiri'
    end
    object MyQDaftarKantorjml_atm_lain: TFloatField
      FieldName = 'jml_atm_lain'
      Origin = 'apolo_f0004.jml_atm_lain'
    end
  end
  object dsMyQOrgan: TMyDataSource
    DataSet = MyQDaftarKantor
    Left = 384
    Top = 80
  end
  object MyQImport: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT `kode_kantor`, `kode_cabang`, `nama_kantor`, `nama_area_k' +
        'erja`, `alamat_kantor`, `kota_kantor`, '
      '    `nama_pimpinan`, `jabatan_pimpinan`, '
      '    `sandi_bank`, `sandi_cabang`, '
      '    `sandi_kota_kab`, `tlp`, `fax`, `latitude`, `longitude`'
      'FROM `app_kode_kantor`'
      '&WHERE')
    ReadOnly = True
    Left = 24
    Top = 48
    MacroData = <
      item
        Name = 'WHERE'
        Value = 'WHERE kode_kantor=kode_cabang'
      end>
    object MyQImportkode_kantor: TStringField
      FieldName = 'kode_kantor'
      FixedChar = True
      Size = 3
    end
    object MyQImportkode_cabang: TStringField
      FieldName = 'kode_cabang'
      FixedChar = True
      Size = 4
    end
    object MyQImportnama_kantor: TStringField
      FieldName = 'nama_kantor'
      FixedChar = True
      Size = 50
    end
    object MyQImportnama_area_kerja: TStringField
      FieldName = 'nama_area_kerja'
      FixedChar = True
      Size = 50
    end
    object MyQImportalamat_kantor: TStringField
      FieldName = 'alamat_kantor'
      FixedChar = True
      Size = 100
    end
    object MyQImportkota_kantor: TStringField
      FieldName = 'kota_kantor'
      FixedChar = True
      Size = 30
    end
    object MyQImportnama_pimpinan: TStringField
      FieldName = 'nama_pimpinan'
      FixedChar = True
      Size = 50
    end
    object MyQImportjabatan_pimpinan: TStringField
      FieldName = 'jabatan_pimpinan'
      FixedChar = True
      Size = 100
    end
    object MyQImportsandi_bank: TStringField
      FieldName = 'sandi_bank'
      FixedChar = True
      Size = 6
    end
    object MyQImportsandi_cabang: TStringField
      FieldName = 'sandi_cabang'
      FixedChar = True
      Size = 3
    end
    object MyQImporttlp: TStringField
      FieldName = 'tlp'
      Size = 15
    end
    object MyQImportfax: TStringField
      FieldName = 'fax'
      Size = 15
    end
    object MyQImportlatitude: TFloatField
      FieldName = 'latitude'
    end
    object MyQImportlongitude: TFloatField
      FieldName = 'longitude'
    end
    object MyQImportsandi_kota_kab: TStringField
      FieldName = 'sandi_kota_kab'
      FixedChar = True
      Size = 4
    end
  end
end
