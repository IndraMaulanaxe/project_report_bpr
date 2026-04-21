inherited fr_EntryFormDN0001: Tfr_EntryFormDN0001
  Caption = 'Form 0001 -  Entry Data Daftar Laporan Nasabah'
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
      Properties.ActivePage = cxTabPage2
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
            Top = 22
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
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 34
          end
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 55
            AutoSize = False
            Caption = 'Nama Nasabah'
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
            AnchorY = 65
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 82
            AutoSize = False
            Caption = 'Jenis ID'
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
          object cxLabel5: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 115
            AutoSize = False
            Caption = 'No ID'
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
            AnchorY = 125
          end
          object cxLabel4: TcxLabel
            Left = 17
            Top = 139
            AutoSize = False
            Caption = 'Nama Ibu Kandung'
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
            Width = 135
            AnchorY = 154
          end
          object cxLabel6: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 175
            AutoSize = False
            Caption = 'Tanggal Lahir'
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
            AnchorY = 185
          end
          object cxLabel7: TcxLabel
            Left = 17
            Top = 199
            AutoSize = False
            Caption = 'No Identitas Badan Hukum'
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
            Width = 176
            AnchorY = 214
          end
          object tgl_lahir: TcxDateEdit
            Left = 185
            Top = 173
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
            TabOrder = 7
            Width = 121
          end
          object nasabah_id: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 23
            Hint = 'Nasabah ID'
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
            Width = 298
          end
          object nama_nasabah: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 53
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
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 235
            AutoSize = False
            Caption = 'Nama Pengurus'
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
            AnchorY = 245
          end
          object cxLabel8: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 266
            AutoSize = False
            Caption = 'Jenis Identitas Pengurus'
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
            AnchorY = 276
          end
          object nama_ibu_kandung: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 143
            Hint = 'Nama Ibu Kandung'
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
            Width = 298
          end
          object no_id: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 113
            Hint = 'Nomor ID'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 13
            Height = 24
            Width = 298
          end
          object nama_pengurus: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 233
            Hint = 'Nama Pengurus'
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
          object no_iden_bdn_hukum: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 203
            Hint = 'Nomor Identitas Badan Hukum/Usaha'
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
            Width = 298
          end
          object kode_jenis_id: TcxButtonEdit
            Left = 185
            Top = 83
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
            Properties.OnButtonClick = kode_jenis_idPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 16
            OnExit = kode_jenis_idExit
            Height = 24
            Width = 81
          end
          object nama_jenis_id: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 83
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
            TabOrder = 17
            Height = 24
            Width = 211
          end
          object kode_jenis_id_pengurus: TcxButtonEdit
            Left = 185
            Top = 263
            Hint = 'Kode Identitas Pengurus'
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
            Properties.OnButtonClick = kode_jenis_id_pengurusPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 18
            OnExit = kode_jenis_id_pengurusExit
            Height = 24
            Width = 81
          end
          object nama_jenis_id_pengurus: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 263
            Hint = ' Identitas Pengurus'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 19
            Height = 24
            Width = 211
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
            Caption = 'No. Identitas Pemegang Kuasa'
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
            Caption = 'Alamat'
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
            Top = 106
            AutoSize = False
            Caption = 'Kota / Kab'
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
            AnchorY = 116
          end
          object cxLabel34: TcxLabel
            Left = 17
            Top = 133
            AutoSize = False
            Caption = 'Kewarganegaraan'
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
            AnchorY = 145
          end
          object cxLabel35: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 165
            AutoSize = False
            Caption = 'Telpon'
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
            AnchorY = 175
          end
          object cxLabel36: TcxLabel
            Left = 17
            Top = 250
            AutoSize = False
            Caption = 'Hubungan dengan Pihak Terkait'
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
            AnchorY = 268
          end
          object cxLabel37: TcxLabel
            Left = 17
            Top = 276
            AutoSize = False
            Caption = 'Golongan Nasabah'
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
            AnchorY = 294
          end
          object cxLabel38: TcxLabel
            Left = 17
            Top = 194
            AutoSize = False
            Caption = 'Flag Fraud'
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
            AnchorY = 204
          end
          object cxLabel39: TcxLabel
            Left = 17
            Top = 216
            AutoSize = False
            Caption = 'Hub Dengan Bank'
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
            AnchorY = 234
          end
          object no_iden_pegang_kuasa: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 19
            Hint = 'No. Identitas Pemegang Kuasa'
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
          object nama_kota_kab: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 104
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
            TabOrder = 10
            Height = 24
            Width = 522
          end
          object alamat: TcxMemo
            Tag = 1
            Left = 185
            Top = 48
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
            TabOrder = 11
            Height = 47
            Width = 298
          end
          object kode_kota_kab: TcxButtonEdit
            Left = 185
            Top = 104
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
            Properties.OnButtonClick = kode_kota_kabPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 12
            OnExit = kode_kota_kabExit
            Height = 24
            Width = 81
          end
          object kode_kewarganegaraan: TcxButtonEdit
            Left = 185
            Top = 134
            Hint = 'Kewarganegaraan'
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
            Properties.OnButtonClick = kode_kewarganegaraanPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 13
            OnExit = kode_kewarganegaraanExit
            Height = 24
            Width = 81
          end
          object nama_kewarganegaraan: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 134
            Hint = 'Kewarganegaraan'
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
          object telpon: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 163
            Hint = 'Telpon'
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
            Width = 298
          end
          object kode_flag: TcxButtonEdit
            Left = 185
            Top = 192
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
            Properties.OnButtonClick = kode_flagPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 16
            OnExit = kode_flagExit
            Height = 24
            Width = 81
          end
          object nama_flag: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 192
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
            TabOrder = 17
            Height = 24
            Width = 522
          end
          object kode_hub_bank: TcxButtonEdit
            Left = 185
            Top = 222
            Hint = 'Kode Hubungan Bank'
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
            Properties.OnButtonClick = kode_hub_bankPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 18
            OnExit = kode_hub_bankExit
            Height = 24
            Width = 81
          end
          object nama_hub_bank: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 222
            Hint = 'Hubungan Dengan Bank'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 19
            Height = 24
            Width = 211
          end
          object kode_hub_pihak_terkait: TcxButtonEdit
            Left = 185
            Top = 252
            Hint = 'Kode Hubungan Dengan Pihak Terkait'
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
            Properties.OnButtonClick = kode_hub_pihak_terkaitPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 20
            OnExit = kode_hub_pihak_terkaitExit
            Height = 24
            Width = 81
          end
          object nama_hub_pihak_terkait: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 252
            Hint = 'Hubungan Dengan Pihak Terkait'
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
            Width = 522
          end
          object kode_gol_nasabah: TcxButtonEdit
            Left = 185
            Top = 282
            Hint = 'Kode Golongan'
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
            Properties.OnButtonClick = kode_gol_nasabahPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 22
            OnExit = kode_gol_nasabahExit
            Height = 24
            Width = 81
          end
          object nama_gol_nasabah: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 282
            Hint = 'Golongan'
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
            Width = 522
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
    DataSet = MyQTemp
    Left = 472
    Top = 48
  end
  object MyQTemp: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      '  SELECT'
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
      '  `kewarganegaraan`,'
      '  `telpon`,'
      '  `flag_fraud`,'
      '  `hub_dgn_bank`,'
      '  `hub_pihak_terkait`,'
      '  `gol_nasabah`'
      'FROM `lps_dn_f0001`'
      '&WHERE')
    ReadOnly = True
    Left = 544
    Top = 48
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
    object MyQTempkewarganegaraan: TStringField
      FieldName = 'kewarganegaraan'
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
    object MyQTemphub_pihak_terkait: TStringField
      FieldName = 'hub_pihak_terkait'
      Size = 2
    end
    object MyQTempgol_nasabah: TStringField
      FieldName = 'gol_nasabah'
      Size = 11
    end
  end
end
