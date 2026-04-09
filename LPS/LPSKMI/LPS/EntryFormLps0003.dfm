inherited fr_EntryFormLps0003: Tfr_EntryFormLps0003
  Caption = 'Form 0003 -  Entry Laporan Dana Kewajiban'
  ClientHeight = 536
  ClientWidth = 712
  OnCloseQuery = FormCloseQuery
  ExplicitTop = -17
  ExplicitWidth = 718
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 15
  object Label17: TLabel [1]
    Left = 344
    Top = 91
    Width = 137
    Height = 13
    AutoSize = False
    Caption = 'Nomor CIF'
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 499
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
  object GroupEdit: TsGroupBox [3]
    Left = 0
    Top = 0
    Width = 712
    Height = 499
    Align = alClient
    Caption = 'Data Daftar Laporan Dana Kewajiban'
    TabOrder = 1
    object sPageControl1: TsPageControl
      Left = 2
      Top = 17
      Width = 708
      Height = 480
      ActivePage = sTabSheet1
      Align = alClient
      TabOrder = 0
      ActiveIsBold = True
      object sTabSheet1: TsTabSheet
        Caption = 'Page 1'
        object Label3: TLabel
          Left = 16
          Top = 6
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Nasabah Id'
        end
        object Label16: TLabel
          Left = 16
          Top = 32
          Width = 153
          Height = 23
          AutoSize = False
          Caption = 'No Rekening'
        end
        object Label13: TLabel
          Left = 16
          Top = 61
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Jenis'
        end
        object Label18: TLabel
          Left = 16
          Top = 90
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Kolektibilitas'
        end
        object Label19: TLabel
          Left = 16
          Top = 273
          Width = 153
          Height = 20
          AutoSize = False
          Caption = 'Jenis Agunan'
        end
        object Label20: TLabel
          Left = 16
          Top = 300
          Width = 153
          Height = 20
          AutoSize = False
          Caption = 'Tanggal Realisasi'
        end
        object Label4: TLabel
          Left = 16
          Top = 329
          Width = 148
          Height = 18
          AutoSize = False
          Caption = 'Tanggal Jatuh Tempo'
        end
        object Label26: TLabel
          Left = 16
          Top = 356
          Width = 153
          Height = 18
          AutoSize = False
          Caption = 'Kategori Usaha'
        end
        object nasabah_id: TEdit
          Tag = 1
          Left = 159
          Top = 3
          Width = 136
          Height = 23
          Hint = 'Nasabah Id'
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = nasabah_idExit
        end
        object no_rekening: TEdit
          Tag = 1
          Left = 159
          Top = 32
          Width = 136
          Height = 23
          Hint = 'Nomor Rekening'
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object sGroupBox3: TsGroupBox
          Left = 33
          Top = 140
          Width = 278
          Height = 92
          Caption = 'Jumlah Pinjaman'
          TabOrder = 2
          object Label1: TLabel
            Left = 11
            Top = 33
            Width = 153
            Height = 13
            AutoSize = False
            Caption = 'Jumlah Pinjaman'
          end
          object Label2: TLabel
            Left = 11
            Top = 59
            Width = 153
            Height = 13
            AutoSize = False
            Caption = 'Baki Debet'
          end
          object jml_pinjaman: TsCurrencyEdit
            Left = 126
            Top = 32
            Width = 136
            Height = 21
            Hint = 'Jumlah Pinjaman'
            AutoSize = False
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
          object baki_debet: TsCurrencyEdit
            Left = 126
            Top = 59
            Width = 136
            Height = 21
            Hint = 'Baki Debet'
            AutoSize = False
            TabOrder = 1
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
        end
        object sGroupBox10: TsGroupBox
          Left = 344
          Top = 140
          Width = 316
          Height = 92
          Caption = 'Jumlah Tunggakan'
          TabOrder = 3
          object Label14: TLabel
            Left = 19
            Top = 33
            Width = 153
            Height = 20
            AutoSize = False
            Caption = 'Jumlah Tunggakan Pokok'
          end
          object Label15: TLabel
            Left = 19
            Top = 59
            Width = 153
            Height = 22
            AutoSize = False
            Caption = 'Jumlah Tunggakan Bunga'
          end
          object jumlah_tunggakan_pokok: TsCurrencyEdit
            Left = 163
            Top = 32
            Width = 136
            Height = 21
            Hint = 'Jumlah Tunggakan Pokok'
            AutoSize = False
            TabOrder = 0
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
          object jumlah_tunggakan_bunga: TsCurrencyEdit
            Left = 163
            Top = 59
            Width = 136
            Height = 21
            Hint = 'Jumlah Tunggakan Bunga'
            AutoSize = False
            TabOrder = 1
            SkinData.SkinSection = 'EDIT'
            DisplayFormat = '#,#0.00'
          end
        end
        object kategori_usaha: TEdit
          Tag = 1
          Left = 159
          Top = 353
          Width = 86
          Height = 23
          Hint = 'Kategori Usaha'
          CharCase = ecUpperCase
          TabOrder = 4
          OnExit = kategori_usahaExit
        end
        object bt_kategori_usaha: TsBitBtn
          Left = 245
          Top = 353
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 5
          OnClick = bt_kategori_usahaClick
        end
        object nm_kategori_usaha: TEdit
          Left = 266
          Top = 353
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 6
        end
        object bt_jenis_agunan: TsBitBtn
          Left = 245
          Top = 272
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 7
          OnClick = bt_jenis_agunanClick
        end
        object nm_jenis_agunan: TEdit
          Left = 266
          Top = 270
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 8
        end
        object jenis_agunan: TEdit
          Tag = 1
          Left = 159
          Top = 270
          Width = 86
          Height = 23
          Hint = 'Jenis Agunan'
          CharCase = ecUpperCase
          TabOrder = 9
          OnExit = jenis_agunanExit
        end
        object tgl_realisasi: TDateTimePicker
          Left = 159
          Top = 299
          Width = 86
          Height = 21
          Hint = 'Tanggal Realisasi'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 10
        end
        object tgl_jatuh_tempo: TDateTimePicker
          Left = 159
          Top = 326
          Width = 86
          Height = 21
          Hint = 'Tanggal Jatuh Tempo'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 11
        end
        object kolektibilitas: TEdit
          Tag = 1
          Left = 159
          Top = 90
          Width = 86
          Height = 23
          Hint = 'Kategori Usaha'
          CharCase = ecUpperCase
          TabOrder = 12
          OnExit = kategori_usahaExit
        end
        object bt_kolektibilitas: TsBitBtn
          Left = 245
          Top = 90
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 13
          OnClick = bt_kolektibilitasClick
        end
        object nm_kolektibilitas: TEdit
          Left = 266
          Top = 90
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 14
        end
        object nm_jenis: TEdit
          Left = 266
          Top = 61
          Width = 394
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 15
        end
        object bt_jenis: TsBitBtn
          Left = 245
          Top = 61
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 16
          OnClick = bt_jenisClick
        end
        object jenis: TEdit
          Tag = 1
          Left = 159
          Top = 61
          Width = 86
          Height = 23
          Hint = 'Kategori Usaha'
          CharCase = ecUpperCase
          TabOrder = 17
          OnExit = jenisExit
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 552
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
      '&WHERE')
    ReadOnly = True
    Left = 480
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQTempflag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQTempnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQTempno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQTempjenis: TStringField
      FieldName = 'jenis'
      Size = 3
    end
    object MyQTempkolektibilitas: TStringField
      FieldName = 'kolektibilitas'
      Size = 1
    end
    object MyQTempjml_pinjaman: TFloatField
      FieldName = 'jml_pinjaman'
    end
    object MyQTempbaki_debet: TFloatField
      FieldName = 'baki_debet'
    end
    object MyQTempjumlah_tunggakan_pokok: TFloatField
      FieldName = 'jumlah_tunggakan_pokok'
    end
    object MyQTempjumlah_tunggakan_bunga: TFloatField
      FieldName = 'jumlah_tunggakan_bunga'
    end
    object MyQTempjenis_agunan: TStringField
      FieldName = 'jenis_agunan'
      Size = 10
    end
    object MyQTemptgl_realisasi: TDateField
      FieldName = 'tgl_realisasi'
    end
    object MyQTemptgl_jatuh_tempo: TDateField
      FieldName = 'tgl_jatuh_tempo'
    end
    object MyQTempkategori_usaha: TStringField
      FieldName = 'kategori_usaha'
      Size = 2
    end
  end
end
