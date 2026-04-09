inherited fr_EntryFormLps0004: Tfr_EntryFormLps0004
  Caption = 'Form 0004 - Entry Data Daftar Rincian Kantor BPR'
  ClientHeight = 414
  ClientWidth = 694
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitWidth = 700
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 15
  object sPageControl1: TsPageControl [1]
    Left = 0
    Top = 0
    Width = 694
    Height = 377
    ActivePage = page2
    Align = alClient
    TabOrder = 0
    object page1: TsTabSheet
      Caption = 'Page 1'
      object sPanel2: TsPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 347
        Align = alClient
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object GroupEdit: TsGroupBox
          Left = 6
          Top = 6
          Width = 674
          Height = 335
          Align = alClient
          Caption = 'Data Anggota'
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 19
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Sandi Kantor'
          end
          object Label3: TLabel
            Left = 16
            Top = 41
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Nama Kantor'
          end
          object Label4: TLabel
            Left = 16
            Top = 84
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Alamat Kantor'
          end
          object Label6: TLabel
            Left = 16
            Top = 63
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Koordinat Kantor'
          end
          object Label24: TLabel
            Left = 16
            Top = 195
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'No. Telp'
          end
          object Label2: TLabel
            Left = 16
            Top = 107
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Desa/Kecamatan'
          end
          object Label5: TLabel
            Left = 16
            Top = 129
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Kab./Kota'
          end
          object Label7: TLabel
            Left = 16
            Top = 151
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Kode Pos'
          end
          object Label9: TLabel
            Left = 16
            Top = 173
            Width = 137
            Height = 13
            AutoSize = False
            Caption = 'Nama Pimpinan'
          end
          object koordinat_kantor: TEdit
            Tag = 1
            Left = 159
            Top = 60
            Width = 244
            Height = 23
            Hint = 'Koordinat Kantor (Contoh penulisan: 6'#176'14'#39'02.9"S 106'#176'49'#39'19.7"E)'
            CharCase = ecUpperCase
            TabOrder = 2
            OnChange = sandi_kantorChange
          end
          object sandi_kantor: TEdit
            Tag = 1
            Left = 159
            Top = 16
            Width = 86
            Height = 23
            Hint = 'Sandi Kantor'
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = sandi_kantorChange
            OnExit = sandi_kantorExit
          end
          object nama_kantor: TEdit
            Tag = 1
            Left = 159
            Top = 38
            Width = 501
            Height = 23
            Hint = 'Nama Kantor'
            CharCase = ecUpperCase
            TabOrder = 1
            OnChange = sandi_kantorChange
          end
          object alamat_kantor: TEdit
            Tag = 1
            Left = 159
            Top = 82
            Width = 501
            Height = 23
            Hint = 'Alamat Kantor (Nama Jalan dan No.)'
            CharCase = ecUpperCase
            TabOrder = 3
            OnChange = sandi_kantorChange
          end
          object desa_kecamatan: TEdit
            Tag = 1
            Left = 159
            Top = 104
            Width = 501
            Height = 23
            Hint = 'Desa/Kecamatan'
            TabOrder = 4
          end
          object sandi_kota_kab: TEdit
            Tag = 1
            Left = 159
            Top = 126
            Width = 86
            Height = 23
            Hint = 'Sandi Kab./Kota'
            CharCase = ecUpperCase
            TabOrder = 5
            OnChange = sandi_kantorChange
            OnExit = sandi_kota_kabExit
          end
          object bt_sandi_kota_kab: TsBitBtn
            Left = 251
            Top = 121
            Width = 21
            Height = 21
            ImageIndex = 83
            Images = dm_bpr1.ImageList1
            TabOrder = 6
            OnClick = bt_sandi_kota_kabClick
          end
          object nm_sandi_kota_kab: TEdit
            Left = 266
            Top = 126
            Width = 394
            Height = 23
            TabStop = False
            ReadOnly = True
            TabOrder = 7
          end
          object kode_pos: TEdit
            Tag = 1
            Left = 159
            Top = 148
            Width = 86
            Height = 23
            Hint = 'Kode Pos'
            CharCase = ecUpperCase
            TabOrder = 8
            OnChange = sandi_kantorChange
          end
          object nama_pimpinan: TEdit
            Tag = 1
            Left = 159
            Top = 170
            Width = 501
            Height = 23
            Hint = 'Nama Pimpinan'
            CharCase = ecUpperCase
            TabOrder = 9
            OnChange = sandi_kantorChange
          end
          object no_telp: TEdit
            Tag = 1
            Left = 159
            Top = 192
            Width = 163
            Height = 23
            Hint = 'No. Telp'
            CharCase = ecUpperCase
            TabOrder = 10
            OnChange = sandi_kantorChange
          end
          object sGroupBox1: TsGroupBox
            Left = 343
            Top = 219
            Width = 317
            Height = 93
            Caption = 'Jumlah Karyawan Pegawai Tidak Tetap'
            TabOrder = 11
            object Label18: TLabel
              Left = 16
              Top = 19
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S3'
            end
            object Label19: TLabel
              Left = 16
              Top = 41
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S2'
            end
            object Label20: TLabel
              Left = 16
              Top = 63
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S1'
            end
            object Label21: TLabel
              Left = 184
              Top = 19
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'D3'
            end
            object Label22: TLabel
              Left = 184
              Top = 41
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'SLTA'
            end
            object Label23: TLabel
              Left = 184
              Top = 63
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'Lainnya'
            end
            object jml_karyawan_tidak_tetap_s3: TsCurrencyEdit
              Left = 63
              Top = 16
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 0
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tidak_tetap_s2: TsCurrencyEdit
              Left = 63
              Top = 38
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 2
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tidak_tetap_s1: TsCurrencyEdit
              Left = 63
              Top = 60
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 4
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tidak_tetap_d3: TsCurrencyEdit
              Left = 231
              Top = 16
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 1
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tidak_tetap_slta: TsCurrencyEdit
              Left = 231
              Top = 38
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 3
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tidak_tetap_lainnya: TsCurrencyEdit
              Left = 231
              Top = 60
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 5
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
          end
          object sGroupBox2: TsGroupBox
            Left = 16
            Top = 219
            Width = 317
            Height = 93
            Caption = 'Jumlah Karyawan Pegawai Tetap'
            TabOrder = 12
            object Label8: TLabel
              Left = 16
              Top = 19
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S3'
            end
            object Label10: TLabel
              Left = 16
              Top = 41
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S2'
            end
            object Label11: TLabel
              Left = 16
              Top = 63
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'S1'
            end
            object Label12: TLabel
              Left = 182
              Top = 19
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'D3'
            end
            object Label13: TLabel
              Left = 182
              Top = 41
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'SLTA'
            end
            object Label14: TLabel
              Left = 182
              Top = 63
              Width = 41
              Height = 13
              AutoSize = False
              Caption = 'Lainnya'
            end
            object jml_karyawan_tetap_s3: TsCurrencyEdit
              Left = 63
              Top = 16
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 0
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tetap_s2: TsCurrencyEdit
              Left = 63
              Top = 38
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 2
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tetap_s1: TsCurrencyEdit
              Left = 63
              Top = 60
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 4
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tetap_d3: TsCurrencyEdit
              Left = 229
              Top = 16
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 1
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tetap_slta: TsCurrencyEdit
              Left = 229
              Top = 38
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 3
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
            object jml_karyawan_tetap_lainnya: TsCurrencyEdit
              Left = 229
              Top = 60
              Width = 50
              Height = 21
              AutoSize = False
              TabOrder = 5
              SkinData.SkinSection = 'EDIT'
              DisplayFormat = '#,#0'
            end
          end
        end
      end
    end
    object page2: TsTabSheet
      Caption = 'Page 2'
      object Label15: TLabel
        Left = 16
        Top = 14
        Width = 137
        Height = 13
        AutoSize = False
        Caption = 'Jumlah Kantor Kas'
      end
      object Label16: TLabel
        Left = 16
        Top = 37
        Width = 137
        Height = 13
        AutoSize = False
        Caption = 'Status Kepemilikan Gedung'
      end
      object Label17: TLabel
        Left = 254
        Top = 15
        Width = 169
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Jumlah Kas Mobil/Kas Terapung'
      end
      object Label25: TLabel
        Left = 16
        Top = 61
        Width = 137
        Height = 13
        AutoSize = False
        Caption = 'Jumlah EDC Milik Sendiri'
      end
      object Label26: TLabel
        Left = 254
        Top = 61
        Width = 169
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Milik BU'
      end
      object Label27: TLabel
        Left = 254
        Top = 84
        Width = 169
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Milik BPR Lain'
      end
      object Label28: TLabel
        Left = 16
        Top = 84
        Width = 153
        Height = 13
        AutoSize = False
        Caption = 'Jumlah ATM Dikelola Sendiri'
      end
      object Label29: TLabel
        Left = 16
        Top = 108
        Width = 153
        Height = 29
        AutoSize = False
        Caption = 'Jumlah Pihak yang Bekerja sama dengan BPR'
        WordWrap = True
      end
      object Label30: TLabel
        Left = 16
        Top = 140
        Width = 134
        Height = 29
        AutoSize = False
        Caption = 'Nama Pihak yang Bekerja Sama dengan BPR'
        WordWrap = True
      end
      object sGroupBox3: TsGroupBox
        Left = 16
        Top = 169
        Width = 644
        Height = 116
        Caption = 'Perubahan Selama Bulan Posisi Laporan'
        TabOrder = 0
        object Label31: TLabel
          Left = 16
          Top = 23
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Keterangan Data Kantor'
        end
        object Label32: TLabel
          Left = 16
          Top = 45
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Persetujuan OJK, Nomor'
        end
        object Label33: TLabel
          Left = 472
          Top = 45
          Width = 66
          Height = 13
          AutoSize = False
          Caption = 'Tanggal'
        end
        object Label34: TLabel
          Left = 16
          Top = 67
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Alamat Sebelumnya'
        end
        object Label35: TLabel
          Left = 16
          Top = 89
          Width = 137
          Height = 13
          AutoSize = False
          Caption = 'Tanggal Pelaksanaan'
        end
        object sandi_ket_data_kantor: TEdit
          Tag = 1
          Left = 159
          Top = 20
          Width = 86
          Height = 23
          Hint = 'Keterangan Data Kantor'
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = sandi_kantorChange
          OnExit = sandi_ket_data_kantorExit
        end
        object bt_sandi_ket_data_kantor: TsBitBtn
          Left = 245
          Top = 20
          Width = 21
          Height = 21
          ImageIndex = 83
          Images = dm_bpr1.ImageList1
          TabOrder = 1
          OnClick = bt_sandi_ket_data_kantorClick
        end
        object nm_sandi_ket_data_kantor: TEdit
          Left = 266
          Top = 20
          Width = 367
          Height = 23
          TabStop = False
          ReadOnly = True
          TabOrder = 2
        end
        object no_surat_persetujuan: TEdit
          Tag = 1
          Left = 159
          Top = 42
          Width = 281
          Height = 23
          Hint = 'Nomor Surat Persetujuan OJK'
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object tgl_surat_persetujuan: TDateTimePicker
          Left = 544
          Top = 42
          Width = 89
          Height = 21
          Hint = 'Tanggal Surat Persetujuan'
          Date = 43464.000000000000000000
          Time = 0.822499293979490200
          TabOrder = 4
        end
        object alamat_sebelumnya: TEdit
          Tag = 1
          Left = 159
          Top = 64
          Width = 474
          Height = 23
          Hint = 'Alamat Sebelumnya'
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object tgl_pelaksanaan: TDateTimePicker
          Left = 159
          Top = 86
          Width = 89
          Height = 21
          Hint = 'Tanggal Pelaksanaan'
          Date = 43464.000000000000000000
          Time = 0.822499293979490200
          TabOrder = 6
        end
      end
      object bt_sandi_kepemilikan_gedung: TsBitBtn
        Left = 286
        Top = 34
        Width = 21
        Height = 21
        ImageIndex = 83
        Images = dm_bpr1.ImageList1
        TabOrder = 1
        OnClick = bt_sandi_kepemilikan_gedungClick
      end
      object jml_atm_kerjasama: TsCurrencyEdit
        Left = 198
        Top = 108
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 2
        OnExit = jml_atm_kerjasamaExit
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_atm_sendiri: TsCurrencyEdit
        Left = 198
        Top = 81
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 3
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_edc_bu: TsCurrencyEdit
        Left = 438
        Top = 58
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_edc_lain: TsCurrencyEdit
        Left = 438
        Top = 81
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 5
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_edc_sendiri: TsCurrencyEdit
        Left = 198
        Top = 58
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 6
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_kantor_kas: TsCurrencyEdit
        Left = 198
        Top = 11
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 7
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object jml_kantor_kas_mobil_apung: TsCurrencyEdit
        Left = 438
        Top = 11
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 8
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
      object nama_pihak_bekerjasama: TEdit
        Left = 198
        Top = 140
        Width = 350
        Height = 23
        Hint = 'Nama Pihak yang Bekerja Sama dengan BPR'
        CharCase = ecUpperCase
        TabOrder = 9
        OnChange = sandi_kantorChange
      end
      object nm_sandi_kepemilikan_gedung: TEdit
        Left = 309
        Top = 34
        Width = 239
        Height = 23
        TabStop = False
        ReadOnly = True
        TabOrder = 10
      end
      object sandi_kepemilikan_gedung: TEdit
        Tag = 1
        Left = 198
        Top = 34
        Width = 86
        Height = 23
        Hint = 'Status Kepemilikan Gedung'
        CharCase = ecUpperCase
        TabOrder = 11
        OnChange = sandi_kantorChange
        OnExit = sandi_kepemilikan_gedungExit
      end
    end
    object page3: TsTabSheet
      Caption = 'Page 3'
      object Label49: TLabel
        Left = 6
        Top = 8
        Width = 70
        Height = 13
        AutoSize = False
        Caption = 'Jumlah SKK'
      end
      object sGroupBox4: TsGroupBox
        Left = 6
        Top = 30
        Width = 238
        Height = 93
        Caption = 'Jumlah Pegawai Tetap'
        TabOrder = 0
        object Label36: TLabel
          Left = 16
          Top = 19
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Pemasaran'
        end
        object Label37: TLabel
          Left = 16
          Top = 40
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Pelayanan'
        end
        object Label38: TLabel
          Left = 16
          Top = 59
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Lainnya'
        end
        object jml_tetap_pemasaran: TsCurrencyEdit
          Left = 150
          Top = 10
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_tetap_pelayanan: TsCurrencyEdit
          Left = 150
          Top = 37
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_tetap_pplainnya: TsCurrencyEdit
          Left = 150
          Top = 60
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
      end
      object sGroupBox5: TsGroupBox
        Left = 256
        Top = 30
        Width = 238
        Height = 93
        Caption = 'Jumlah Pegawai Tidak Tetap'
        TabOrder = 1
        object Label39: TLabel
          Left = 16
          Top = 19
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Pemasaran'
        end
        object Label40: TLabel
          Left = 16
          Top = 40
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Pelayanan'
        end
        object Label41: TLabel
          Left = 16
          Top = 59
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Lainnya'
        end
        object jml_tidaktetap_pemasaran: TsCurrencyEdit
          Left = 150
          Top = 10
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_tidaktetap_pelayanan: TsCurrencyEdit
          Left = 150
          Top = 37
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_tidaktetap_pplainnya: TsCurrencyEdit
          Left = 150
          Top = 60
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
      end
      object sGroupBox6: TsGroupBox
        Left = 6
        Top = 129
        Width = 238
        Height = 70
        Caption = 'Jumlah Pegawai Berdasarkan Jenis Kelamin'
        TabOrder = 2
        object Label42: TLabel
          Left = 16
          Top = 19
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Laki - Laki'
        end
        object Label43: TLabel
          Left = 16
          Top = 40
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Perempuan'
        end
        object jml_jk_pria: TsCurrencyEdit
          Left = 150
          Top = 16
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_jk_wanita: TsCurrencyEdit
          Left = 150
          Top = 37
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
      end
      object sGroupBox7: TsGroupBox
        Left = 6
        Top = 205
        Width = 238
        Height = 131
        Caption = 'Jumlah Pegawai Berdasarkan Usia'
        TabOrder = 3
        object Label44: TLabel
          Left = 16
          Top = 19
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Umur <25'
        end
        object Label45: TLabel
          Left = 16
          Top = 40
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Umur >25 - 35'
        end
        object Label46: TLabel
          Left = 16
          Top = 63
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Umur >35 - 45'
        end
        object Label47: TLabel
          Left = 16
          Top = 85
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Umur >45 - 55'
        end
        object Label48: TLabel
          Left = 16
          Top = 108
          Width = 70
          Height = 13
          AutoSize = False
          Caption = 'Umur >55'
        end
        object jml_usia_kurang_25: TsCurrencyEdit
          Left = 150
          Top = 16
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 0
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_usia_lebih_25: TsCurrencyEdit
          Left = 150
          Top = 37
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 1
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_usia_lebih_35: TsCurrencyEdit
          Left = 150
          Top = 60
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 2
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_usia_lebih_45: TsCurrencyEdit
          Left = 150
          Top = 82
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 3
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
        object jml_usia_lebih_55: TsCurrencyEdit
          Left = 151
          Top = 105
          Width = 50
          Height = 21
          AutoSize = False
          TabOrder = 4
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '#,#0'
        end
      end
      object jml_skk: TsCurrencyEdit
        Left = 156
        Top = 5
        Width = 50
        Height = 21
        AutoSize = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '#,#0'
      end
    end
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 377
    Width = 694
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 1
    object bt_save: TsBitBtn
      Left = 538
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
      Left = 613
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
  inherited sSkinProvider1: TsSkinProvider
    Left = 648
    Top = 16
  end
  object MyQTemp: TMyQuery
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
        'ndiri`, `jml_atm_lain`,'
      
        '    `nama_pihak_kerjasama_atm`, `ket_data_kantor`, `no_persetuju' +
        'an_ojk`, '
      
        '    `tgl_persetujuan_ojk`, `alamat_sebelumnya`, `tgl_pelaksanaan' +
        '`, '
      
        '    `jml_tetap_pemasaran`, `jml_tetap_pelayanan`, `jml_tetap_ppl' +
        'ainnya`,'
      
        '    `jml_tidaktetap_pemasaran`, `jml_tidaktetap_pelayanan`, `jml' +
        '_tidaktetap_pplainnya`,'
      
        '    `jml_jk_pria`, `jml_jk_wanita`, `jml_usia_kurang_25`, `jml_u' +
        'sia_lebih_25`,'
      
        '    `jml_usia_lebih_35`, `jml_usia_lebih_45`, `jml_usia_lebih_55' +
        '`, `jml_skk`'
      'FROM `lps_f0004`'
      '&WHERE')
    ReadOnly = True
    Left = 496
    Top = 128
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQTempflag_detail: TStringField
      FieldName = 'flag_detail'
      FixedChar = True
      Size = 3
    end
    object MyQTempsandi_kantor: TStringField
      FieldName = 'sandi_kantor'
      Size = 3
    end
    object MyQTempnama_kantor: TStringField
      FieldName = 'nama_kantor'
      Size = 50
    end
    object MyQTempkoordinat_kantor: TStringField
      FieldName = 'koordinat_kantor'
      Size = 50
    end
    object MyQTempalamat_kantor: TStringField
      FieldName = 'alamat_kantor'
      Size = 50
    end
    object MyQTempalamat_kecamatan: TStringField
      FieldName = 'alamat_kecamatan'
      Size = 50
    end
    object MyQTempalamat_kota: TStringField
      FieldName = 'alamat_kota'
      FixedChar = True
      Size = 4
    end
    object MyQTempalamat_kode_pos: TStringField
      FieldName = 'alamat_kode_pos'
      FixedChar = True
      Size = 5
    end
    object MyQTempnama_pimpinan: TStringField
      FieldName = 'nama_pimpinan'
      Size = 50
    end
    object MyQTempno_telp: TStringField
      FieldName = 'no_telp'
      Size = 15
    end
    object MyQTempjml_tetap_s3: TFloatField
      FieldName = 'jml_tetap_s3'
    end
    object MyQTempjml_tetap_s2: TFloatField
      FieldName = 'jml_tetap_s2'
    end
    object MyQTempjml_tetap_s1: TFloatField
      FieldName = 'jml_tetap_s1'
    end
    object MyQTempjml_tetap_d3: TFloatField
      FieldName = 'jml_tetap_d3'
    end
    object MyQTempjml_tetap_slta: TFloatField
      FieldName = 'jml_tetap_slta'
    end
    object MyQTempjml_tetap_lainnya: TFloatField
      FieldName = 'jml_tetap_lainnya'
    end
    object MyQTempjml_tidaktetap_s3: TFloatField
      FieldName = 'jml_tidaktetap_s3'
    end
    object MyQTempjml_tidaktetap_s2: TFloatField
      FieldName = 'jml_tidaktetap_s2'
    end
    object MyQTempjml_tidaktetap_s1: TFloatField
      FieldName = 'jml_tidaktetap_s1'
    end
    object MyQTempjml_tidaktetap_d3: TFloatField
      FieldName = 'jml_tidaktetap_d3'
    end
    object MyQTempjml_tidaktetap_slta: TFloatField
      FieldName = 'jml_tidaktetap_slta'
    end
    object MyQTempjml_tidaktetap_lainnya: TFloatField
      FieldName = 'jml_tidaktetap_lainnya'
    end
    object MyQTempjml_kantor_kas: TFloatField
      FieldName = 'jml_kantor_kas'
    end
    object MyQTempstatus_kepemilikan_gedung: TStringField
      FieldName = 'status_kepemilikan_gedung'
      FixedChar = True
      Size = 2
    end
    object MyQTempjml_kas_mobil_terapung: TFloatField
      FieldName = 'jml_kas_mobil_terapung'
    end
    object MyQTempjml_edc_sendiri: TFloatField
      FieldName = 'jml_edc_sendiri'
    end
    object MyQTempjml_edc_bu: TFloatField
      FieldName = 'jml_edc_bu'
    end
    object MyQTempjml_edc_lain: TFloatField
      FieldName = 'jml_edc_lain'
    end
    object MyQTempjml_atm_sendiri: TFloatField
      FieldName = 'jml_atm_sendiri'
    end
    object MyQTempjml_atm_lain: TFloatField
      FieldName = 'jml_atm_lain'
    end
    object MyQTempnama_pihak_kerjasama_atm: TStringField
      FieldName = 'nama_pihak_kerjasama_atm'
      Size = 50
    end
    object MyQTempket_data_kantor: TStringField
      FieldName = 'ket_data_kantor'
      FixedChar = True
      Size = 1
    end
    object MyQTempno_persetujuan_ojk: TStringField
      FieldName = 'no_persetujuan_ojk'
      Size = 30
    end
    object MyQTemptgl_persetujuan_ojk: TDateField
      FieldName = 'tgl_persetujuan_ojk'
    end
    object MyQTempalamat_sebelumnya: TStringField
      FieldName = 'alamat_sebelumnya'
      Size = 50
    end
    object MyQTemptgl_pelaksanaan: TDateField
      FieldName = 'tgl_pelaksanaan'
    end
    object MyQTempjml_tetap_pemasaran: TFloatField
      FieldName = 'jml_tetap_pemasaran'
    end
    object MyQTempjml_tetap_pelayanan: TFloatField
      FieldName = 'jml_tetap_pelayanan'
    end
    object MyQTempjml_tetap_pplainnya: TFloatField
      FieldName = 'jml_tetap_pplainnya'
    end
    object MyQTempjml_tidaktetap_pemasaran: TFloatField
      FieldName = 'jml_tidaktetap_pemasaran'
    end
    object MyQTempjml_tidaktetap_pelayanan: TFloatField
      FieldName = 'jml_tidaktetap_pelayanan'
    end
    object MyQTempjml_tidaktetap_pplainnya: TFloatField
      FieldName = 'jml_tidaktetap_pplainnya'
    end
    object MyQTempjml_jk_pria: TFloatField
      FieldName = 'jml_jk_pria'
    end
    object MyQTempjml_jk_wanita: TFloatField
      FieldName = 'jml_jk_wanita'
    end
    object MyQTempjml_usia_kurang_25: TFloatField
      FieldName = 'jml_usia_kurang_25'
    end
    object MyQTempjml_usia_lebih_25: TFloatField
      FieldName = 'jml_usia_lebih_25'
    end
    object MyQTempjml_usia_lebih_35: TFloatField
      FieldName = 'jml_usia_lebih_35'
    end
    object MyQTempjml_usia_lebih_45: TFloatField
      FieldName = 'jml_usia_lebih_45'
    end
    object MyQTempjml_usia_lebih_55: TFloatField
      FieldName = 'jml_usia_lebih_55'
    end
    object MyQTempjml_skk: TFloatField
      FieldName = 'jml_skk'
    end
  end
  object dsMyQTemp: TMyDataSource
    DataSet = MyQTemp
    Left = 608
  end
end
