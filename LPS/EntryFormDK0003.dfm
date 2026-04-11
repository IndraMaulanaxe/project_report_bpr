inherited fr_EntryFormDK0003: Tfr_EntryFormDK0003
  Caption = 'Form 0003 -  Entry Laporan Dana Kewajiban'
  ClientHeight = 471
  ClientWidth = 814
  ExplicitWidth = 820
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 814
    ExplicitWidth = 814
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 814
    ExplicitHeight = 367
    Height = 427
    Width = 814
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 810
      Height = 423
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabPage1
      Properties.CustomButtons.Buttons = <>
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitHeight = 363
      ClientRectBottom = 419
      ClientRectLeft = 4
      ClientRectRight = 806
      ClientRectTop = 27
      object cxTabPage1: TcxTabSheet
        Caption = 'Page 1'
        ImageIndex = 0
        ExplicitHeight = 332
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
          ExplicitLeft = 2
          Height = 392
          Width = 802
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 23
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
            AnchorY = 33
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 50
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
            AnchorY = 62
          end
          object cxLabel5: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 83
            AutoSize = False
            Caption = 'Jenis'
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
            AnchorY = 93
          end
          object cxLabel4: TcxLabel
            Left = 17
            Top = 107
            AutoSize = False
            Caption = 'Kolektibilitas'
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
            AnchorY = 122
          end
          object tgl_realisasi: TcxDateEdit
            Left = 185
            Top = 279
            Hint = 'Tanggal Realisasi'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object nasabah_id: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 21
            Hint = 'ID Nasabah'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 5
            Height = 24
            Width = 298
          end
          object jenis: TcxButtonEdit
            Left = 185
            Top = 81
            Hint = 'Kode Jenis'
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
            Properties.OnButtonClick = nm_jenisPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 6
            OnExit = jenisExit
            Height = 24
            Width = 81
          end
          object nm_jenis: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 81
            Hint = 'Jenis'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 7
            Height = 24
            Width = 513
          end
          object no_rekening: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 51
            Hint = 'Nomor Rekening'
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
          object gb_pinjaman: TcxGroupBox
            Left = 89
            Top = 143
            Caption = 'Jumlah Pinjaman'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 9
            Height = 100
            Width = 304
            object cxLabel3: TcxLabel
              AlignWithMargins = True
              Left = 16
              Top = 24
              AutoSize = False
              Caption = 'Jumlah Pinjaman'
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
              Caption = 'Baki Debet'
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
            object jml_pinjaman: TcxCurrencyEdit
              Left = 174
              Top = 22
              Hint = 'Jumlah Pinjaman'
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
            object baki_debet: TcxCurrencyEdit
              Left = 174
              Top = 52
              Hint = 'Baki Debet'
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
          object kolektibilitas: TcxButtonEdit
            Left = 185
            Top = 111
            Hint = 'Kode Kolektibilitas'
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
            Properties.OnButtonClick = kolektibilitasPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 10
            OnExit = kolektibilitasExit
            Height = 24
            Width = 81
          end
          object nm_kolektibilitas: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 111
            Hint = 'Kolektibilitas'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 11
            Height = 24
            Width = 513
          end
          object gp_tunggakan: TcxGroupBox
            Left = 399
            Top = 143
            Caption = 'Jumlah Tunggakan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 12
            Height = 100
            Width = 304
            object cxLabel6: TcxLabel
              AlignWithMargins = True
              Left = 16
              Top = 24
              AutoSize = False
              Caption = 'Jumlah Tunggakan Pokok'
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
            object cxLabel7: TcxLabel
              AlignWithMargins = True
              Left = 16
              Top = 54
              AutoSize = False
              Caption = 'Jumlah Tunggakan Bunga'
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
              Width = 177
              AnchorY = 64
            end
            object jumlah_tunggakan_pokok: TcxCurrencyEdit
              Left = 174
              Top = 22
              Hint = 'Jumlah Tunggakan Pokok'
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
            object jumlah_tunggakan_bunga: TcxCurrencyEdit
              Left = 174
              Top = 52
              Hint = 'Jumlah Tunggakan Bunga'
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
          object cxLabel9: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 251
            AutoSize = False
            Caption = 'Jenis Agunan'
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
            AnchorY = 261
          end
          object jenis_agunan: TcxButtonEdit
            Left = 185
            Top = 249
            Hint = 'Kode Jenis Agunan'
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
            Properties.OnButtonClick = jenis_agunanPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 14
            OnExit = jenis_agunanExit
            Height = 24
            Width = 81
          end
          object nm_jenis_agunan: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 249
            Hint = 'Jenis Agunan'
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
            Width = 513
          end
          object tgl_jatuh_tempo: TcxDateEdit
            Left = 185
            Top = 309
            Hint = 'Tanggal Jatuh Tempo'
            ParentColor = True
            ParentFont = False
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
          object kategori_usaha: TcxButtonEdit
            Left = 185
            Top = 339
            Hint = 'Kode Kategori Usaha'
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
            Properties.OnButtonClick = kategori_usahaPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 17
            OnExit = kategori_usahaExit
            Height = 24
            Width = 81
          end
          object nm_kategori_usaha: TcxTextEdit
            Tag = 1
            Left = 272
            Top = 339
            Hint = 'Kategori Usaha'
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
            Width = 513
          end
          object cxLabel10: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 281
            AutoSize = False
            Caption = 'Tanggal Realisasi'
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
            AnchorY = 291
          end
          object cxLabel11: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 311
            AutoSize = False
            Caption = 'Tanggal Jatuh Tempo'
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
            AnchorY = 321
          end
          object cxLabel12: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 341
            AutoSize = False
            Caption = 'Kategori Usaha'
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
            AnchorY = 351
          end
        end
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 427
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
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `jenis`,'
      '  `kolektibilitas`,'
      '  `plafon`,'
      '  `baki_debet`,'
      '  `tunggakan_pokok`,'
      '  `tunggakan_bunga`,'
      '  `jenis_agunan`,'
      '  `tgl_mulai`,'
      '  `tgl_jatuh_tempo`,'
      '  `kategori_usaha`'
      'FROM `lps_dk_f0003`'
      '&WHERE')
    ReadOnly = True
    Left = 568
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
    object MyQTempplafon: TFloatField
      FieldName = 'plafon'
    end
    object MyQTempbaki_debet: TFloatField
      FieldName = 'baki_debet'
    end
    object MyQTemptunggakan_pokok: TFloatField
      FieldName = 'tunggakan_pokok'
    end
    object MyQTemptunggakan_bunga: TFloatField
      FieldName = 'tunggakan_bunga'
    end
    object MyQTempjenis_agunan: TStringField
      FieldName = 'jenis_agunan'
      Size = 10
    end
    object MyQTemptgl_mulai: TDateField
      FieldName = 'tgl_mulai'
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
