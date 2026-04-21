inherited fr_EntryFormDSN0002: Tfr_EntryFormDSN0002
  Caption = 'Form 0002 -  Entry Daftar Simpanan Nasabah'
  ClientHeight = 411
  ClientWidth = 814
  ExplicitWidth = 820
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 814
    ExplicitWidth = 814
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 814
    ExplicitHeight = 367
    Height = 367
    Width = 814
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 810
      Height = 363
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabPage1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 359
      ClientRectLeft = 4
      ClientRectRight = 806
      ClientRectTop = 27
      object cxTabPage1: TcxTabSheet
        Caption = 'Page 1'
        ImageIndex = 0
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
          Height = 332
          Width = 802
          object Label3: TcxLabel
            Left = 17
            Top = 46
            AutoSize = False
            Caption = 'Jumlah Pemilik Rekening'
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
            Width = 152
            AnchorY = 58
          end
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 79
            AutoSize = False
            Caption = 'Nasabah ID'
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
            AnchorY = 89
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 106
            AutoSize = False
            Caption = 'No Rekening'
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
            AnchorY = 118
          end
          object cxLabel5: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 139
            AutoSize = False
            Caption = 'Status Dana'
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
            AnchorY = 149
          end
          object cxLabel4: TcxLabel
            Left = 17
            Top = 163
            AutoSize = False
            Caption = 'Tanggal Mulai Tanggal Akrual'
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
            Height = 30
            Width = 162
            AnchorY = 178
          end
          object tgl_mulai: TcxDateEdit
            Left = 185
            Top = 167
            Hint = 'Tanggal'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
          object nasabah_id: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 77
            Hint = 'Nama Nasabah'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 6
            Height = 24
            Width = 298
          end
          object staus_dana: TcxButtonEdit
            Left = 185
            Top = 137
            Hint = 'Kode Jenis ID'
            AutoSize = False
            ParentColor = True
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 83
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.Images = dm_bpr1.ImageList1
            Properties.OnButtonClick = staus_danaPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 7
            OnExit = staus_danaExit
            Height = 24
            Width = 81
          end
          object nm_staus_dana: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 137
            Hint = 'Jenis ID'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 8
            Height = 24
            Width = 211
          end
          object no_rekening: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 107
            Hint = 'Nama Nasabah'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 9
            Height = 24
            Width = 298
          end
          object jumlah_pemilik_rekening: TcxCurrencyEdit
            Left = 185
            Top = 47
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 121
          end
          object gb_suku_bunga: TcxGroupBox
            Left = 49
            Top = 224
            Caption = 'Suku Bunga'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            Height = 100
            Width = 304
            object cxLabel3: TcxLabel
              AlignWithMargins = True
              Left = 16
              Top = 24
              AutoSize = False
              Caption = 'Suku Bunga'
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
              AnchorY = 34
            end
            object cxLabel8: TcxLabel
              AlignWithMargins = True
              Left = 16
              Top = 54
              AutoSize = False
              Caption = 'Suku Bunga Val'
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
              AnchorY = 64
            end
            object suku_bunga: TcxCurrencyEdit
              Left = 144
              Top = 22
              Hint = 'Pegawai Tetap Tahun Laporan'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 121
            end
            object suku_bunga_val: TcxCurrencyEdit
              Left = 144
              Top = 52
              Hint = 'Pegawai Tetap Tahun Laporan'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 121
            end
          end
          object cxLabel6: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 19
            AutoSize = False
            Caption = 'Klasifikasi Rekening'
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
            AnchorY = 29
          end
          object klasifikasi: TcxButtonEdit
            Left = 185
            Top = 17
            Hint = 'Kode Klasifikasi'
            AutoSize = False
            ParentColor = True
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 83
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.Images = dm_bpr1.ImageList1
            Properties.OnButtonClick = klasifikasiPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 13
            OnExit = klasifikasiExit
            Height = 24
            Width = 81
          end
          object nm_klasifikasi: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 17
            Hint = 'Klafisikasi Rekening'
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
            Width = 211
          end
          object nm_jenis_simpanan: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 197
            Hint = 'Jenis Simpanan'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 15
            Height = 24
            Width = 211
          end
          object jenis_simpanan: TcxButtonEdit
            Left = 185
            Top = 197
            Hint = 'Kode Jenis Simpanan'
            AutoSize = False
            ParentColor = True
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 83
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.Images = dm_bpr1.ImageList1
            Properties.OnButtonClick = jenis_simpananPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 16
            OnExit = jenis_simpananExit
            Height = 24
            Width = 81
          end
          object cxLabel7: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 199
            AutoSize = False
            Caption = 'Jenis Simpanan'
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
            AnchorY = 209
          end
        end
      end
      object cxTabPage2: TcxTabSheet
        Caption = 'Page 2'
        ImageIndex = 3
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
          Height = 332
          Width = 802
          object cxLabel31: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 14
            AutoSize = False
            Caption = 'Biaya Cashback'
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
            Height = 35
            Width = 162
            AnchorY = 32
          end
          object cxLabel32: TcxLabel
            Left = 17
            Top = 47
            AutoSize = False
            Caption = 'Tingkat Bunga Penjaminan'
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
            AnchorY = 59
          end
          object cxLabel33: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 78
            AutoSize = False
            Caption = 'Kategori Tingkat Bunga'
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
            AnchorY = 88
          end
          object cxLabel34: TcxLabel
            Left = 17
            Top = 105
            AutoSize = False
            Caption = 'Jumlah Deposit'
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
            AnchorY = 117
          end
          object cxLabel35: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 137
            AutoSize = False
            Caption = 'Nominal Blokir'
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
            AnchorY = 147
          end
          object cxLabel36: TcxLabel
            Left = 17
            Top = 222
            AutoSize = False
            Caption = 'Tanggal  Akru Terakhir'
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
            Width = 152
            AnchorY = 240
          end
          object cxLabel37: TcxLabel
            Left = 17
            Top = 254
            AutoSize = False
            Caption = 'Tanggal Jt'
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
            AnchorY = 272
          end
          object cxLabel38: TcxLabel
            Left = 17
            Top = 166
            AutoSize = False
            Caption = 'Alasan Blokir'
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
            AnchorY = 176
          end
          object cxLabel39: TcxLabel
            Left = 17
            Top = 188
            AutoSize = False
            Caption = 'Saldo Akhir Bunga '
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
            AnchorY = 206
          end
          object nm_kategori_tingkat_bunga_simpanan: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 76
            Hint = 'Nama Kota / Kabupaten'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 9
            Height = 24
            Width = 522
          end
          object kategori_tingkat_bunga_simpanan: TcxButtonEdit
            Left = 185
            Top = 76
            Hint = 'Kode Kota / Kabupaten'
            AutoSize = False
            ParentColor = True
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 83
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.Images = dm_bpr1.ImageList1
            Properties.OnButtonClick = kategori_tingkat_bunga_simpananPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 10
            OnExit = kategori_tingkat_bunga_simpananExit
            Height = 24
            Width = 81
          end
          object alasan_blokir: TcxButtonEdit
            Left = 185
            Top = 164
            Hint = 'Kode Fraud'
            AutoSize = False
            ParentColor = True
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 83
                Kind = bkGlyph
              end>
            Properties.CharCase = ecUpperCase
            Properties.Images = dm_bpr1.ImageList1
            Properties.OnButtonClick = alasan_blokirPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            OnExit = alasan_blokirExit
            Height = 24
            Width = 81
          end
          object nm_alasan_blokir: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 164
            Hint = 'Nama Fraud'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 12
            Height = 24
            Width = 522
          end
          object tgl_akru_terakhir: TcxDateEdit
            Left = 185
            Top = 228
            Hint = 'Tanggal'
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
          object tanggal_jt: TcxDateEdit
            Left = 185
            Top = 260
            Hint = 'Tanggal'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 14
            Width = 121
          end
          object saldo_akhir_bunga_bmhd: TcxCurrencyEdit
            Left = 185
            Top = 194
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
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
          object nominal_blokir: TcxCurrencyEdit
            Left = 185
            Top = 135
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 121
          end
          object jml_deposito: TcxCurrencyEdit
            Left = 185
            Top = 106
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 121
          end
          object biaya_cashback: TcxCurrencyEdit
            Left = 185
            Top = 20
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 18
            Width = 121
          end
          object tingkat_bunga_penjaminan_lps: TcxCurrencyEdit
            Left = 185
            Top = 48
            Hint = 'Pegawai Tetap Tahun Laporan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0.00'
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
        end
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 367
    ExplicitTop = 367
    ExplicitWidth = 814
    ExplicitHeight = 44
    Height = 44
    Width = 814
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
      Left = 627
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 627
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 809
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 809
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 718
      Height = 34
      ExplicitLeft = 718
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 621
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 621
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
      Left = 615
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 615
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 609
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 609
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 603
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 603
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 597
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 597
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 814
    ExplicitWidth = 814
    inherited IconClose: TLabel
      Left = 780
      ExplicitLeft = 771
    end
  end
  object dsMyQTemp: TMyDataSource
    Left = 472
    Top = 48
  end
  object MyQTemp: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `klasifikasi_rekening`,'
      '  `jumlah_pemilik_rekening`,'
      '  `nasabah_id`,'
      '  `jenis_simpanan`,'
      '  `no_rekening`,'
      '  `status_dana`,'
      '  `tgl_mulai`,'
      '  `jenis_tingkat_bunga`,'
      '  `tingkat_bunga`,'
      '  `biaya_cashback`,'
      '  `tingkat_bunga_penjaminan_lps`,'
      '  `kategori_tingkat_bunga_simpanan`,'
      '  `saldo_simpanan`,'
      '  `nominal_blokir`,'
      '  `alasan_blokir`,'
      '  `bunga_akrual`,'
      '  `tgl_akru_terakhir`,'
      '  `tanggal_jt`'
      'FROM `lps_dsn_f0002`'
      '&WHERE')
    ReadOnly = True
    Left = 576
    Top = 48
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQTempklasifikasi_rekening: TStringField
      FieldName = 'klasifikasi_rekening'
      Size = 1
    end
    object MyQTempjumlah_pemilik_rekening: TIntegerField
      FieldName = 'jumlah_pemilik_rekening'
    end
    object MyQTempnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQTempjenis_simpanan: TStringField
      FieldName = 'jenis_simpanan'
      Size = 4
    end
    object MyQTempno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQTempstatus_dana: TStringField
      FieldName = 'status_dana'
      Size = 1
    end
    object MyQTemptgl_mulai: TDateField
      FieldName = 'tgl_mulai'
    end
    object MyQTempjenis_tingkat_bunga: TStringField
      FieldName = 'jenis_tingkat_bunga'
      Size = 1
    end
    object MyQTemptingkat_bunga: TFloatField
      FieldName = 'tingkat_bunga'
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
    object MyQTempsaldo_simpanan: TFloatField
      FieldName = 'saldo_simpanan'
    end
    object MyQTempnominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQTempalasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQTempbunga_akrual: TFloatField
      FieldName = 'bunga_akrual'
    end
    object MyQTemptgl_akru_terakhir: TDateField
      FieldName = 'tgl_akru_terakhir'
    end
    object MyQTemptanggal_jt: TDateField
      FieldName = 'tanggal_jt'
    end
  end
end
