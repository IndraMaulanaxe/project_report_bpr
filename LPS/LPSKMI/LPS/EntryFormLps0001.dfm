inherited fr_EntryFormLPS0001: Tfr_EntryFormLPS0001
  Caption = 'Form 0001 -  Entry Data Daftar Laporan Nasabah'
  ClientHeight = 360
  ClientWidth = 712
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 718
  ExplicitHeight = 389
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
    Top = 323
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
    Height = 323
    Align = alClient
    Caption = 'Data Daftar Nasabah'
    TabOrder = 1
    object sPageControl1: TsPageControl
      Left = 2
      Top = 17
      Width = 708
      Height = 304
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
          Top = 88
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'No Id'
        end
        object Label13: TLabel
          Left = 16
          Top = 59
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Jenis Id'
        end
        object Label18: TLabel
          Left = 16
          Top = 32
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Nama Nasabah'
        end
        object Label19: TLabel
          Left = 16
          Top = 119
          Width = 104
          Height = 15
          AutoSize = False
          Caption = 'Nama Ibu Kandung'
        end
        object Label20: TLabel
          Left = 16
          Top = 148
          Width = 153
          Height = 17
          AutoSize = False
          Caption = 'Tanggl Lahir'
        end
        object Label4: TLabel
          Left = 16
          Top = 204
          Width = 148
          Height = 23
          AutoSize = False
          Caption = 'Nama  Pengurus'
        end
        object Label26: TLabel
          Left = 16
          Top = 236
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Jenis Identitas Pengurus'
        end
        object Label1: TLabel
          Left = 16
          Top = 177
          Width = 182
          Height = 15
          Caption = 'No Identitas Badan Hukum/Usaha'
        end
        object nasabah_id: TEdit
          Tag = 1
          Left = 207
          Top = 3
          Width = 136
          Height = 23
          Hint = 'Nasabah Id'
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object no_id: TEdit
          Tag = 1
          Left = 207
          Top = 90
          Width = 136
          Height = 23
          Hint = 'No Id'
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object nama_nasabah: TEdit
          Tag = 1
          Left = 207
          Top = 30
          Width = 136
          Height = 23
          Hint = 'Nama Nasabah'
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object nama_ibu_kandung: TEdit
          Tag = 1
          Left = 207
          Top = 119
          Width = 136
          Height = 23
          Hint = 'Nama Ibu Kandung'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object bt_jenis_id: TsBitBtn
          Left = 294
          Top = 59
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 4
          OnClick = bt_jenis_idClick
        end
        object nm_jenis_id: TEdit
          Left = 315
          Top = 59
          Width = 286
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 5
        end
        object jenis_identitas: TEdit
          Tag = 1
          Left = 207
          Top = 233
          Width = 86
          Height = 23
          Hint = 'Jenis Identitas'
          CharCase = ecUpperCase
          TabOrder = 6
          OnExit = jenis_identitasExit
        end
        object bt_jenis_identitas: TsBitBtn
          Left = 293
          Top = 233
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 7
          OnClick = bt_jenis_identitasClick
        end
        object nm_jenis_identitas: TEdit
          Left = 314
          Top = 233
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 8
        end
        object Jenis_id: TEdit
          Tag = 1
          Left = 207
          Top = 59
          Width = 86
          Height = 23
          Hint = 'Jenis Id'
          CharCase = ecUpperCase
          TabOrder = 9
          OnExit = jenis_idExit
        end
        object no_id2: TEdit
          Tag = 1
          Left = 207
          Top = 175
          Width = 136
          Height = 23
          Hint = 'No Id 2'
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object tgl_lahir: TDateTimePicker
          Left = 207
          Top = 148
          Width = 86
          Height = 21
          Hint = 'Tanggl Lahir'
          Date = 39083.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.822499293979490200
          TabOrder = 11
        end
        object nama_pengurus: TEdit
          Tag = 1
          Left = 207
          Top = 204
          Width = 136
          Height = 23
          Hint = 'Nama  Pengurus'
          CharCase = ecUpperCase
          TabOrder = 12
        end
      end
      object sTabSheet2: TsTabSheet
        Caption = 'Page 2'
        object Label2: TLabel
          Left = 16
          Top = 20
          Width = 185
          Height = 13
          AutoSize = False
          Caption = 'Nomor Identitas Pemegang Kuasa'
        end
        object Label6: TLabel
          Left = 16
          Top = 46
          Width = 161
          Height = 13
          AutoSize = False
          Caption = 'Alamat'
        end
        object Label7: TLabel
          Left = 16
          Top = 77
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Kota/Kab'
        end
        object Label8: TLabel
          Left = 16
          Top = 106
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'WNI'
        end
        object Label9: TLabel
          Left = 16
          Top = 133
          Width = 161
          Height = 23
          AutoSize = False
          Caption = 'Telpon'
        end
        object Label10: TLabel
          Left = 16
          Top = 166
          Width = 161
          Height = 15
          AutoSize = False
          Caption = 'Flag Fraud'
        end
        object Label11: TLabel
          Left = 16
          Top = 197
          Width = 153
          Height = 21
          AutoSize = False
          Caption = 'Hub Dengan Bank'
        end
        object Label12: TLabel
          Left = 16
          Top = 251
          Width = 153
          Height = 13
          AutoSize = False
          Caption = 'Golongan Nasabah'
        end
        object Label14: TLabel
          Left = 16
          Top = 224
          Width = 185
          Height = 21
          AutoSize = False
          Caption = 'Hubungan dengan Pihak Terkait'
        end
        object nomor_identitas: TEdit
          Tag = 1
          Left = 207
          Top = 19
          Width = 130
          Height = 23
          Hint = 'Nomor Identitas'
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object alamat: TEdit
          Tag = 1
          Left = 207
          Top = 48
          Width = 130
          Height = 23
          Hint = 'Alamat'
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object kota_kab: TEdit
          Tag = 1
          Left = 207
          Top = 77
          Width = 86
          Height = 23
          Hint = 'Kota/Kab'
          CharCase = ecUpperCase
          TabOrder = 2
          OnExit = kota_kabExit
        end
        object bt_kota_kab: TsBitBtn
          Left = 293
          Top = 77
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 3
          OnClick = bt_kota_kabClick
        end
        object nm_kota_kab: TEdit
          Left = 314
          Top = 77
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 4
        end
        object wni: TEdit
          Tag = 1
          Left = 207
          Top = 106
          Width = 86
          Height = 23
          Hint = 'Wni'
          CharCase = ecUpperCase
          TabOrder = 5
          OnExit = wniExit
        end
        object bt_wni: TsBitBtn
          Left = 293
          Top = 106
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 6
          OnClick = bt_wniClick
        end
        object nm_wni: TEdit
          Left = 314
          Top = 106
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 7
        end
        object telpon: TEdit
          Tag = 1
          Left = 207
          Top = 135
          Width = 130
          Height = 23
          Hint = 'Telpon'
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object hub_dgn_bank: TEdit
          Tag = 1
          Left = 207
          Top = 193
          Width = 86
          Height = 23
          Hint = 'Hub Dengan Bank'
          CharCase = ecUpperCase
          TabOrder = 9
          OnExit = hub_dgn_bankExit
        end
        object bt_hub_dgn_bank: TsBitBtn
          Left = 293
          Top = 193
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 10
          OnClick = bt_hub_dgn_bankClick
        end
        object nm_hub_dgn_bank: TEdit
          Left = 314
          Top = 193
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 11
        end
        object slik_kode_gol_debitur: TEdit
          Tag = 1
          Left = 207
          Top = 251
          Width = 86
          Height = 23
          Hint = 'Slik Kode Gol Debitur'
          CharCase = ecUpperCase
          TabOrder = 12
          OnExit = slik_kode_gol_debiturExit
        end
        object bt_slik_kode_gol_debitur: TsBitBtn
          Left = 293
          Top = 251
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 13
          OnClick = bt_slik_kode_gol_debiturClick
        end
        object nm_slik_kode_gol_debitur: TEdit
          Left = 314
          Top = 251
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 14
        end
        object flag_fraud: TEdit
          Tag = 1
          Left = 207
          Top = 164
          Width = 86
          Height = 23
          Hint = 'Flag Fraud'
          CharCase = ecUpperCase
          TabOrder = 15
          OnExit = flag_fraudExit
        end
        object bt_flag_fraud: TsBitBtn
          Left = 293
          Top = 164
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 16
          OnClick = bt_flag_fraudClick
        end
        object nm_flag_fraud: TEdit
          Left = 314
          Top = 164
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 17
        end
        object slik_kode_hub_ljk: TEdit
          Tag = 1
          Left = 207
          Top = 222
          Width = 86
          Height = 23
          Hint = 'Slik Kode Hub Ljk'
          CharCase = ecUpperCase
          TabOrder = 18
          OnExit = slik_kode_hub_ljkExit
        end
        object bt_slik_kode_hub_ljk: TsBitBtn
          Left = 293
          Top = 222
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 19
          OnClick = bt_slik_kode_hub_ljkClick
        end
        object nm_slik_kode_hub_ljk: TEdit
          Left = 314
          Top = 222
          Width = 287
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 20
        end
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 560
    Top = 8
  end
  object dsMyQTemp: TMyDataSource
    DataSet = MyQTemp
    Left = 424
    Top = 8
  end
  object MyQTemp: TMyQuery
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
    Left = 488
    Top = 8
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
    object MyQTempnama_nasabah: TStringField
      FieldName = 'nama_nasabah'
      Size = 150
    end
    object MyQTempjenis_id: TStringField
      FieldName = 'jenis_id'
      Size = 3
    end
    object MyQTempno_id: TStringField
      FieldName = 'no_id'
      Size = 25
    end
    object MyQTempnama_ibu_kandung: TStringField
      FieldName = 'nama_ibu_kandung'
      Size = 150
    end
    object MyQTemptgl_lahir: TDateField
      FieldName = 'tgl_lahir'
    end
    object MyQTempno_id2: TStringField
      FieldName = 'no_id2'
      Size = 35
    end
    object MyQTempnama_pengurus: TStringField
      FieldName = 'nama_pengurus'
      Size = 150
    end
    object MyQTempjenis_identitas: TStringField
      FieldName = 'jenis_identitas'
      Size = 3
    end
    object MyQTempnomor_identitas: TStringField
      FieldName = 'nomor_identitas'
      Size = 25
    end
    object MyQTempalamat: TStringField
      FieldName = 'alamat'
      Size = 300
    end
    object MyQTempkota_kab: TStringField
      FieldName = 'kota_kab'
      Size = 4
    end
    object MyQTempwni: TStringField
      FieldName = 'wni'
      Size = 3
    end
    object MyQTemptelpon: TStringField
      FieldName = 'telpon'
      Size = 15
    end
    object MyQTempflag_fraud: TStringField
      FieldName = 'flag_fraud'
      Size = 3
    end
    object MyQTemphub_dgn_bank: TStringField
      FieldName = 'hub_dgn_bank'
      Size = 2
    end
    object MyQTempslik_kode_hub_ljk: TStringField
      FieldName = 'slik_kode_hub_ljk'
      Size = 2
    end
    object MyQTempslik_kode_gol_debitur: TStringField
      FieldName = 'slik_kode_gol_debitur'
      Size = 11
    end
  end
end
