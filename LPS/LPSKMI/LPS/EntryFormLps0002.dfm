inherited fr_EntryFormLps0002: Tfr_EntryFormLps0002
  Caption = 'Form 0002 -  Entry Daftar Simpanan Nasabah'
  ClientHeight = 364
  ClientWidth = 712
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 718
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 327
    Width = 712
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 0
    object bt_save: TsBitBtn
      Left = 556
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Save'
      Align = alRight
      Caption = '&Save'
      ImageIndex = 78
      Images = dm_bpr1.ImageList1
      TabOrder = 0
      OnClick = bt_saveClick
    end
    object bt_cancel: TsBitBtn
      Left = 631
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Close'
      Align = alRight
      Caption = '&Cancel'
      ImageIndex = 1
      Images = dm_bpr1.ImageList1
      TabOrder = 1
      OnClick = bt_cancelClick
    end
  end
  object sCurrencyEdit3: TsCurrencyEdit [2]
    Left = 293
    Top = 8
    Width = 136
    Height = 21
    Hint = 'Jumlah Pendanaan Sindikasi Plafon'
    AutoSize = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    DisplayFormat = '#,#0.00'
  end
  object GroupEdit: TsGroupBox [3]
    Left = 0
    Top = 0
    Width = 712
    Height = 327
    Align = alClient
    Caption = 'Data Daftar Simpanan Nasabah'
    TabOrder = 2
    object sPageControl1: TsPageControl
      Left = 2
      Top = 17
      Width = 708
      Height = 308
      ActivePage = sTabSheet2
      Align = alClient
      TabOrder = 0
      ActiveIsBold = True
      object sTabSheet1: TsTabSheet
        Caption = 'Page 1'
        object Label16: TLabel
          Left = 16
          Top = 32
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Nasabah Id'
        end
        object Label13: TLabel
          Left = 16
          Top = 8
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Jumlah Pemilik Rekening'
        end
        object Label19: TLabel
          Left = 16
          Top = 95
          Width = 153
          Height = 19
          AutoSize = False
          Caption = 'Status Dana'
        end
        object Label20: TLabel
          AlignWithMargins = True
          Left = 16
          Top = 120
          Width = 148
          Height = 21
          AutoSize = False
          Caption = 'Tanggal Mulai Tanggal Aro'
        end
        object Label4: TLabel
          Left = 17
          Top = 61
          Width = 148
          Height = 13
          AutoSize = False
          Caption = 'No Rekening'
        end
        object nasabah_id: TEdit
          Tag = 1
          Left = 175
          Top = 32
          Width = 136
          Height = 23
          Hint = 'Nasabah Id'
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object no_rekening: TEdit
          Tag = 1
          Left = 175
          Top = 61
          Width = 136
          Height = 23
          Hint = 'No Rekening'
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object sGroupBox1: TsGroupBox
          Left = 16
          Top = 157
          Width = 278
          Height = 106
          Caption = 'Suku Bunga'
          TabOrder = 2
          object Label6: TLabel
            Left = 11
            Top = 33
            Width = 153
            Height = 16
            AutoSize = False
            Caption = 'Suku Bunga'
          end
          object Label7: TLabel
            Left = 11
            Top = 70
            Width = 153
            Height = 19
            AutoSize = False
            Caption = 'Suku Bunga Val'
          end
          object suku_bunga_val: TsCurrencyEdit
            Left = 126
            Top = 68
            Width = 136
            Height = 21
            Hint = 'Suku Bunga Val'
            AutoSize = False
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
          object suku_bunga: TsCurrencyEdit
            Left = 126
            Top = 33
            Width = 136
            Height = 21
            Hint = 'Suku Bunga'
            AutoSize = False
            TabOrder = 1
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
        end
        object bt_staus_dana: TsBitBtn
          Left = 262
          Top = 90
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 3
          OnClick = bt_staus_danaClick
        end
        object nm_staus_dana: TEdit
          Left = 283
          Top = 90
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 4
        end
        object staus_dana: TEdit
          Tag = 1
          Left = 175
          Top = 90
          Width = 86
          Height = 23
          Hint = 'Status Dana'
          CharCase = ecUpperCase
          TabOrder = 5
          OnExit = staus_danaExit
        end
        object jumlah_pemilik_rekening: TsCurrencyEdit
          Left = 175
          Top = 5
          Width = 136
          Height = 21
          Hint = 'Jumlah Pemilik Rekening'
          AutoSize = False
          TabOrder = 6
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object tgl_mulai_atau_tgl_aro_terakhir: TDateTimePicker
          Left = 175
          Top = 120
          Width = 86
          Height = 21
          Hint = 'Tanggal Mulai Tanggal Aro'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 7
        end
      end
      object sTabSheet2: TsTabSheet
        Caption = 'Page 2'
        object Label1: TLabel
          Left = 24
          Top = 6
          Width = 153
          Height = 18
          AutoSize = False
          Caption = 'Biaya Cashback'
        end
        object Label2: TLabel
          Left = 24
          Top = 33
          Width = 153
          Height = 18
          AutoSize = False
          Caption = 'Tingkat Bunga Penjaminan'
        end
        object Label5: TLabel
          Left = 24
          Top = 59
          Width = 153
          Height = 21
          AutoSize = False
          Caption = 'Kategori Tingkat Bunga'
        end
        object Label8: TLabel
          Left = 24
          Top = 143
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Alasan Blokir'
        end
        object Label9: TLabel
          Left = 24
          Top = 89
          Width = 153
          Height = 18
          AutoSize = False
          Caption = 'Jumlah Deposit'
        end
        object Label10: TLabel
          Left = 24
          Top = 116
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Nominal Blokir'
        end
        object Label11: TLabel
          Left = 24
          Top = 172
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Saldo Akhir Bunga '
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 24
          Top = 196
          Width = 148
          Height = 21
          AutoSize = False
          Caption = 'Tanggal  Akru Terakhir'
        end
        object Label14: TLabel
          AlignWithMargins = True
          Left = 24
          Top = 223
          Width = 148
          Height = 21
          AutoSize = False
          Caption = 'Tanggal Jt'
        end
        object biaya_cashback: TsCurrencyEdit
          Left = 167
          Top = 3
          Width = 136
          Height = 21
          Hint = 'Biaya Cashback'
          AutoSize = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0.00'
        end
        object tingkat_bunga_penjaminan_lps: TsCurrencyEdit
          Left = 167
          Top = 30
          Width = 136
          Height = 21
          Hint = 'Tingkat Bunga Penjaminan'
          AutoSize = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0.00'
        end
        object kategori_tingkat_bunga_simpanan: TEdit
          Tag = 1
          Left = 167
          Top = 57
          Width = 86
          Height = 23
          Hint = 'Kategori Tingkat Bunga'
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = kategori_tingkat_bunga_simpananExit
        end
        object bt_kategori_tingkat_bunga_simpanan: TsBitBtn
          Left = 253
          Top = 57
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 3
          OnClick = bt_kategori_tingkat_bunga_simpananClick
        end
        object nm_kategori_tingkat_bunga_simpanan: TEdit
          Left = 274
          Top = 57
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 4
        end
        object alasan_blokir: TEdit
          Tag = 1
          Left = 167
          Top = 140
          Width = 86
          Height = 23
          Hint = 'Alasan Blokir'
          CharCase = ecUpperCase
          TabOrder = 5
          OnExit = alasan_blokirExit
        end
        object bt_alasan_blokir: TsBitBtn
          Left = 253
          Top = 140
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 6
          OnClick = bt_alasan_blokirClick
        end
        object nm_alasan_blokir: TEdit
          Left = 274
          Top = 140
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 7
        end
        object jml_deposito: TsCurrencyEdit
          Left = 167
          Top = 86
          Width = 136
          Height = 21
          Hint = 'Jumlah Deposit'
          AutoSize = False
          TabOrder = 8
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0.00'
        end
        object nominal_blokir: TsCurrencyEdit
          Left = 167
          Top = 113
          Width = 136
          Height = 21
          Hint = 'Nominal Blokir'
          AutoSize = False
          TabOrder = 9
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0.00'
        end
        object saldo_akhir_bunga_bmhd: TsCurrencyEdit
          Left = 167
          Top = 169
          Width = 136
          Height = 21
          Hint = 'Saldo Akhir Bunga '
          AutoSize = False
          TabOrder = 10
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0.00'
        end
        object tgl_akru_terakhir: TDateTimePicker
          Left = 167
          Top = 196
          Width = 86
          Height = 21
          Hint = 'Tanggal  Akru Terakhir'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 11
        end
        object tanggal_jt: TDateTimePicker
          Left = 167
          Top = 223
          Width = 86
          Height = 21
          Hint = 'Tanggal Jt'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 12
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 544
    Top = 0
  end
  object dsMyQTemp: TMyDataSource
    DataSet = MyQTemp
    Left = 416
  end
  object MyQTemp: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `jumlah_pemilik_rekening`,'
      '  `nasabah_id`,'
      '  `kode_integrasi`,'
      '  `no_rekening`,'
      '  `staus_dana`,'
      '  `tgl_mulai_atau_tgl_aro_terakhir`,'
      '  `suku_bunga`,'
      '  `suku_bunga_val`,'
      '  `biaya_cashback`,'
      '  `tingkat_bunga_penjaminan_lps`,'
      '  `kategori_tingkat_bunga_simpanan`,'
      '  `jml_deposito`,'
      '  `nominal_blokir`,'
      '  `alasan_blokir`,'
      '  `saldo_akhir_bunga_bmhd`,'
      '  `tgl_akru_terakhir`,'
      '  `tanggal_jt`'
      'FROM `lps_dsn_f0002`'
      '&WHERE')
    ReadOnly = True
    Left = 480
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQTempjumlah_pemilik_rekening: TIntegerField
      FieldName = 'jumlah_pemilik_rekening'
    end
    object MyQTempnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQTempkode_integrasi: TStringField
      FieldName = 'kode_integrasi'
      Size = 4
    end
    object MyQTempno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQTempstaus_dana: TStringField
      FieldName = 'staus_dana'
      Size = 1
    end
    object MyQTemptgl_mulai_atau_tgl_aro_terakhir: TDateField
      FieldName = 'tgl_mulai_atau_tgl_aro_terakhir'
    end
    object MyQTempsuku_bunga: TStringField
      FieldName = 'suku_bunga'
      Size = 1
    end
    object MyQTempsuku_bunga_val: TFloatField
      FieldName = 'suku_bunga_val'
    end
    object MyQTempbiaya_cashback: TFloatField
      FieldName = 'biaya_cashback'
    end
    object MyQTemptingkat_bunga_penjaminan_lps: TFloatField
      FieldName = 'tingkat_bunga_penjaminan_lps'
    end
    object MyQTempkategori_tingkat_bunga_simpanan: TStringField
      FieldName = 'kategori_tingkat_bunga_simpanan'
      Size = 3
    end
    object MyQTempjml_deposito: TFloatField
      FieldName = 'jml_deposito'
    end
    object MyQTempnominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQTempalasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQTempsaldo_akhir_bunga_bmhd: TFloatField
      FieldName = 'saldo_akhir_bunga_bmhd'
    end
    object MyQTemptgl_akru_terakhir: TDateField
      FieldName = 'tgl_akru_terakhir'
    end
    object MyQTemptanggal_jt: TDateField
      FieldName = 'tanggal_jt'
    end
  end
end
