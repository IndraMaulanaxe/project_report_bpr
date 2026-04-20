inherited fr_EntryForm0100: Tfr_EntryForm0100
  Caption = 'Entry Form 0100 - Laporan Informasi Utama '
  ClientHeight = 490
  ClientWidth = 1017
  ExplicitWidth = 1023
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 1017
    ExplicitWidth = 1017
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 1017
    ExplicitHeight = 553
    Height = 446
    Width = 1017
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 1013
      Height = 442
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabDataUtama
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 1
      ExplicitTop = 1
      ClientRectBottom = 438
      ClientRectLeft = 4
      ClientRectRight = 1009
      ClientRectTop = 27
      object cxTabDataUtama: TcxTabSheet
        Caption = 'Laporan Utama'
        ImageIndex = 0
        ExplicitHeight = 518
        object PanelTab1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = 3355443
          TabOrder = 0
          OnMouseDown = bgMouseDown
          OnMouseMove = bgMouseMove
          OnMouseUp = bgMouseUp
          ExplicitLeft = -1
          ExplicitTop = 1
          Height = 411
          Width = 1005
          object Label3: TcxLabel
            Left = 17
            Top = 22
            AutoSize = False
            Caption = 'Sandi Laporan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 34
          end
          object no_sk_ojk: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 83
            Hint = 'Nomor SK OJK'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 1
            Height = 24
            Width = 298
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 82
            AutoSize = False
            Caption = 'Nomor SK OJK'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 94
          end
          object cxLabel12: TcxLabel
            Left = 17
            Top = 293
            AutoSize = False
            Caption = 'Nama Pihak Utama/Pemegang Saham'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 50
            Width = 162
            AnchorY = 318
          end
          object memnama_pihak: TcxMemo
            Tag = 1
            Left = 185
            Top = 297
            Hint = 'Nama Pihak Utama/Pemegang Saham'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 4
            Height = 47
            Width = 298
          end
          object cxLabel13: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 381
            AutoSize = False
            Caption = 'Jabatan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 152
            AnchorY = 391
          end
          object jabatan: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 380
            Hint = 'Jabatan'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJabatan
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 298
          end
          object tanggal_persetujuan: TcxDateEdit
            Left = 185
            Top = 237
            Hint = 'Tanggal Persetujuan'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 121
          end
          object cxLabel14: TcxLabel
            Left = 17
            Top = 269
            AutoSize = False
            Caption = 'Tanggal Efektif'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 279
          end
          object tanggal_efektif: TcxDateEdit
            Left = 185
            Top = 267
            Hint = 'Tanggal Efektif'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 121
          end
          object cxLabel2: TcxLabel
            Left = 17
            Top = 54
            AutoSize = False
            Caption = 'Tanggal Kejadian'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 64
          end
          object tanggal_kejadian: TcxDateEdit
            Left = 185
            Top = 52
            Hint = 'Tanggal Kejadian'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 17
            Top = 115
            AutoSize = False
            Caption = 'Tanggal SK OJK'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 125
          end
          object cxLabel5: TcxLabel
            Left = 17
            Top = 146
            AutoSize = False
            Caption = 'Nomor Akta Notaris/Pemda'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 162
            AnchorY = 158
          end
          object nomor_akta: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 144
            Hint = 'Nomor Akta Notaris/Pemda'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 14
            Height = 24
            Width = 298
          end
          object tanggal_sk_ojk: TcxDateEdit
            Left = 185
            Top = 113
            Hint = 'Tanggal SK OJK'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 15
            Width = 121
          end
          object cxLabel6: TcxLabel
            Left = 17
            Top = 176
            AutoSize = False
            Caption = 'Tanggal Akta'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 186
          end
          object cxLabel7: TcxLabel
            Left = 17
            Top = 202
            AutoSize = False
            Caption = 'Nomor Persetujuan Instansi Berwenang'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 33
            Width = 162
            AnchorY = 219
          end
          object nomor_persetujuan: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 204
            Hint = 'Nomor Persetujuan Instansi Berwenang'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 18
            Height = 24
            Width = 298
          end
          object tanggal_akta: TcxDateEdit
            Left = 185
            Top = 174
            Hint = 'Tanggal Akta'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 19
            Width = 121
          end
          object cxLabel8: TcxLabel
            Left = 17
            Top = 349
            AutoSize = False
            Caption = 'NIK/ NPWP'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 361
          end
          object nik_npwp: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 350
            Hint = 'NIK/ NPWP'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 21
            Height = 24
            Width = 298
          end
          object sandi_laporan: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 23
            Hint = 'Sandi Laporan'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 22
            Height = 24
            Width = 96
          end
          object nm_laporan: TcxTextEdit
            Tag = 1
            Left = 305
            Top = 22
            Hint = 'Laporan'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 23
            Height = 24
            Width = 424
          end
          object bt_sandi: TsBitBtn
            Left = 282
            Top = 25
            Width = 21
            Height = 21
            ImageIndex = 83
            Images = dm_bpr1.ImageList1
            TabOrder = 24
            OnClick = bt_sandiClick
          end
          object cxLabel23: TcxLabel
            Left = 17
            Top = 239
            AutoSize = False
            Caption = 'Tanggal Persetujuan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 249
          end
        end
      end
      object cxTabDataDetail: TcxTabSheet
        Caption = 'Detail Laporan'
        ImageIndex = 3
        ExplicitHeight = 518
        object PanelTab4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = 3355443
          TabOrder = 0
          OnMouseDown = bgMouseDown
          OnMouseMove = bgMouseMove
          OnMouseUp = bgMouseUp
          ExplicitHeight = 518
          Height = 411
          Width = 1005
          object cxLabel31: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 22
            AutoSize = False
            Caption = 'Jenis Produk'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 169
            AnchorY = 32
          end
          object jenis_produk: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 20
            Hint = 'Jenis Produk'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJenis_Produk
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 298
          end
          object memnama_produk: TcxMemo
            Tag = 1
            Left = 185
            Top = 50
            Hint = 'Nama Produk / aktivitas'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 47
            Width = 298
          end
          object cxLabel37: TcxLabel
            Left = 17
            Top = 48
            AutoSize = False
            Caption = 'Nama Produk / aktivitas'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 66
          end
          object cxLabel42: TcxLabel
            Left = 497
            Top = 48
            AutoSize = False
            Caption = 'Langkah Perbaikan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 66
          end
          object memperbaikan: TcxMemo
            Tag = 1
            Left = 665
            Top = 50
            Hint = 'Langkah Perbaikan'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 5
            Height = 47
            Width = 298
          end
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 103
            AutoSize = False
            Caption = 'Jenis Kantor'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 169
            AnchorY = 113
          end
          object cxLabel9: TcxLabel
            Left = 17
            Top = 128
            AutoSize = False
            Caption = 'Alamat'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 146
          end
          object memalamat: TcxMemo
            Tag = 1
            Left = 185
            Top = 130
            Hint = 'Alamat'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 8
            Height = 47
            Width = 298
          end
          object jenis_kantor: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 100
            Hint = 'Jenis Kantor'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJenisKantor
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 298
          end
          object cxLabel10: TcxLabel
            Left = 17
            Top = 181
            AutoSize = False
            Caption = 'Alamat Baru/ Sementara'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 199
          end
          object memalamat_baru: TcxMemo
            Tag = 1
            Left = 185
            Top = 183
            Hint = 'Alamat Baru/ Sementara'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            Height = 47
            Width = 298
          end
          object cxLabel11: TcxLabel
            Left = 17
            Top = 238
            AutoSize = False
            Caption = 'Tanggal Selesai'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 248
          end
          object tanggal_selesai: TcxDateEdit
            Left = 185
            Top = 236
            Hint = 'Tanggal Selesai'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 121
          end
          object cxLabel15: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 271
            AutoSize = False
            Caption = 'Pelanggaran'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 169
            AnchorY = 281
          end
          object cxLabel16: TcxLabel
            Left = 17
            Top = 296
            AutoSize = False
            Caption = 'Alasan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 314
          end
          object cxLabel17: TcxLabel
            Left = 17
            Top = 351
            AutoSize = False
            Caption = 'Nama PJTI/ Pihak yang Bersinergi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 369
          end
          object nama_sinergi: TcxMemo
            Tag = 1
            Left = 185
            Top = 351
            Hint = 'Nama PJTI/ Pihak yang Bersinergi'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 17
            Height = 47
            Width = 298
          end
          object memalasan: TcxMemo
            Tag = 1
            Left = 185
            Top = 298
            Hint = 'Alasan'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 18
            Height = 47
            Width = 298
          end
          object pelanggaran: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 268
            Hint = 'Pelanggaran'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefPelanggaran
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 19
            Width = 298
          end
          object cxLabel18: TcxLabel
            Left = 497
            Top = 19
            AutoSize = False
            Caption = 'Register/ Referensi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 31
          end
          object Register: TcxTextEdit
            Tag = 1
            Left = 665
            Top = 20
            Hint = 'Register/ Referensi'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 21
            Height = 24
            Width = 298
          end
          object cxLabel19: TcxLabel
            Left = 497
            Top = 99
            AutoSize = False
            Caption = 'Target Waktu Penyelesaian'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 162
            AnchorY = 111
          end
          object cxLabel20: TcxLabel
            Left = 497
            Top = 128
            AutoSize = False
            Caption = 'Realisasi'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 35
            Width = 162
            AnchorY = 146
          end
          object memrealiasasi: TcxMemo
            Tag = 1
            Left = 665
            Top = 130
            Hint = 'Realisasi'
            ParentColor = True
            ParentFont = False
            Properties.OnChange = MemKeteranganPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 24
            Height = 47
            Width = 298
          end
          object status: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 183
            Hint = 'Status'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefStatus
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 25
            Width = 298
          end
          object cxLabel21: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 186
            AutoSize = False
            Caption = 'Status'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 169
            AnchorY = 196
          end
          object status_dokumen: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 213
            Hint = 'Status Dokumen Pendukung'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefStatusDokumen
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 27
            Width = 298
          end
          object cxLabel22: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 216
            AutoSize = False
            Caption = 'Status Dokumen Pendukung'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 169
            AnchorY = 226
          end
          object target_waktu: TcxDateEdit
            Left = 665
            Top = 100
            Hint = 'Target Waktu Penyelesaian'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 29
            Width = 121
          end
        end
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 446
    ExplicitTop = 553
    ExplicitWidth = 1017
    ExplicitHeight = 44
    Height = 44
    Width = 1017
    inherited btlb_Refresh: TcxButton
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools1: TcxButton
      Left = 11
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 11
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools2: TcxButton
      Left = 17
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 17
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Save: TcxButton
      Left = 830
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 830
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 1012
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 1012
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 921
      Height = 34
      ExplicitLeft = 921
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 824
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 824
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools3: TcxButton
      Left = 23
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 23
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Delete: TcxButton
      Left = 818
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 818
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 812
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 812
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 806
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 806
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 800
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 800
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 1017
    ExplicitWidth = 1017
    inherited IconClose: TLabel
      Left = 983
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 792
    Top = 64
  end
  object dsMyQRefJabatan: TMyDataSource
    DataSet = MyQRefJabatan
    Left = 48
    Top = 448
  end
  object MyQRefJabatan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jabatan`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 136
    Top = 448
    object MyQRefJabatansandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefJabatannama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJenis_Produk: TMyDataSource
    DataSet = MyQRefJenis_Produk
    Left = 48
    Top = 496
  end
  object MyQRefJenis_Produk: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jenis_produk`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 136
    Top = 496
    object StringField1: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJenisKantor: TMyDataSource
    DataSet = MyQRefJenisKantor
    Left = 256
    Top = 448
  end
  object MyQRefJenisKantor: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jenis_kantor`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 344
    Top = 448
    object StringField3: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPelanggaran: TMyDataSource
    DataSet = MyQRefPelanggaran
    Left = 256
    Top = 504
  end
  object MyQRefPelanggaran: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_pelanggaran`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 344
    Top = 504
    object StringField5: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField6: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefStatus: TMyDataSource
    DataSet = MyQRefStatus
    Left = 456
    Top = 448
  end
  object MyQRefStatus: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_status`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 544
    Top = 448
    object StringField7: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField8: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object MyQRefStatusDokumen: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE AS sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_dokumen_pendukung`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 544
    Top = 504
    object StringField9: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField10: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefStatusDokumen: TMyDataSource
    DataSet = MyQRefStatusDokumen
    Left = 456
    Top = 504
  end
end
