inherited fr_EntryForm01A: Tfr_EntryForm01A
  Caption = 
    'Entry Form 01A - Laporan Penerapan SAF yang mencakup informasi k' +
    'ejadian fraud dan informasi pelaku fraud '
  ClientHeight = 442
  ClientWidth = 1017
  ExplicitWidth = 1023
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 1017
    ExplicitWidth = 1017
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 1017
    ExplicitHeight = 398
    Height = 398
    Width = 1017
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 1013
      Height = 394
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabDataFraud
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 390
      ClientRectLeft = 4
      ClientRectRight = 1009
      ClientRectTop = 27
      object cxTabDataFraud: TcxTabSheet
        Caption = 'Data Fraud'
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
          Height = 363
          Width = 1005
          object Label3: TcxLabel
            Left = 17
            Top = 22
            AutoSize = False
            Caption = 'Kode Komponen'
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
          object kode_komponen: TcxButtonEdit
            Left = 185
            Top = 23
            Hint = 'Kode Komponen'
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
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 24
            Width = 184
          end
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 57
            AutoSize = False
            Caption = 'Kejadian Menurut Pelaku'
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
            AnchorY = 67
          end
          object kejadian_menurut_pelaku: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 53
            Hint = 'Kejadian Menurut Pelaku'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefkejadian_menurut_pelaku
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 298
          end
          object id_kejadian: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 83
            Hint = 'ID Kejadian Fraud'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 4
            Height = 24
            Width = 298
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 82
            AutoSize = False
            Caption = 'ID Kejadian Fraud'
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
            Top = 117
            AutoSize = False
            Caption = 'Jenis Fraud'
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
            AnchorY = 127
          end
          object jenis_fraud: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 113
            Hint = 'Jenis Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJenisFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 298
          end
          object memketerangan_jenis_fraud: TcxMemo
            Tag = 1
            Left = 185
            Top = 143
            Hint = 'Penjelasan Jenis Fraud'
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
          object cxLabel4: TcxLabel
            Left = 17
            Top = 139
            AutoSize = False
            Caption = 'Keterangan Jenis Fraud'
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
            Top = 197
            AutoSize = False
            Caption = 'Aktivitas Terkait Fraud'
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
            AnchorY = 207
          end
          object aktivitas_fraud: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 196
            Hint = 'Aktivitas Terkait Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefAktivitasFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 298
          end
          object cxLabel7: TcxLabel
            Left = 17
            Top = 222
            AutoSize = False
            Caption = 'Deskripsi Fraud'
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
            AnchorY = 237
          end
          object memdeskripsi_fraud: TcxMemo
            Tag = 1
            Left = 185
            Top = 226
            Hint = 'Keterangan Fraud'
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
            TabOrder = 13
            Height = 47
            Width = 298
          end
          object cxLabel10: TcxLabel
            AlignWithMargins = True
            Left = 507
            Top = 25
            AutoSize = False
            Caption = 'Lokasi Fraud'
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
            AnchorY = 35
          end
          object lokasi_fraud: TcxLookupComboBox
            Tag = 1
            Left = 675
            Top = 23
            Hint = 'Lokasi Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefLokasiFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 15
            Width = 298
          end
          object cxLabel11: TcxLabel
            AlignWithMargins = True
            Left = 507
            Top = 54
            AutoSize = False
            Caption = 'Keterangan Lokasi Fraud'
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
          object ket_lokasi_fraud: TcxLookupComboBox
            Tag = 1
            Left = 675
            Top = 53
            Hint = 'Keterangan Lokasi Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefKetLokasiFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 298
          end
          object cxLabel12: TcxLabel
            Left = 507
            Top = 79
            AutoSize = False
            Caption = 'Divisi Atau Unit Kerja Terjadinya Fraud'
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
            AnchorY = 94
          end
          object memDivisiFraud: TcxMemo
            Tag = 1
            Left = 675
            Top = 83
            Hint = 'Divisi Atau Unit Kerja Terjadinya Fraud'
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
            TabOrder = 19
            Height = 47
            Width = 298
          end
          object cxLabel13: TcxLabel
            AlignWithMargins = True
            Left = 507
            Top = 137
            AutoSize = False
            Caption = 'Pihak Yang Dirugikan'
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
            AnchorY = 147
          end
          object pihak_dirugikan: TcxLookupComboBox
            Tag = 1
            Left = 675
            Top = 136
            Hint = 'Pihak Yang Dirugikan'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefPihakRugi
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 21
            Width = 298
          end
          object cxLabel3: TcxLabel
            Left = 507
            Top = 168
            AutoSize = False
            Caption = 'Tanggal Awal Kejadian'
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
            AnchorY = 178
          end
          object dtAwalKejadian: TcxDateEdit
            Left = 675
            Top = 166
            Hint = 'Tanggal Awal Kejadian'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 23
            Width = 121
          end
          object cxLabel14: TcxLabel
            Left = 507
            Top = 198
            AutoSize = False
            Caption = 'Tanggal Akhir Kejadian'
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
            AnchorY = 208
          end
          object dtAkhirKejadian: TcxDateEdit
            Left = 675
            Top = 196
            Hint = 'Tanggal Akhir Kejadian'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 25
            Width = 121
          end
          object cxLabel15: TcxLabel
            Left = 507
            Top = 228
            AutoSize = False
            Caption = 'Tanggal Diketahui Fraud'
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
            Width = 162
            AnchorY = 238
          end
          object dtDiketahui: TcxDateEdit
            Left = 675
            Top = 226
            Hint = 'Tanggal Diketahui Fraud'
            ParentColor = True
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 27
            Width = 121
          end
        end
      end
      object cxTabDataKerugian: TcxTabSheet
        Caption = 'Data Kerugian'
        ImageIndex = 1
        object PanelTab2: TcxGroupBox
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
          Height = 363
          Width = 1005
          object gb_ljk: TcxGroupBox
            Left = 17
            Top = 3
            Caption = 'LJK'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 118
            Width = 480
            object cxLabel8: TcxLabel
              Left = 33
              Top = 19
              AutoSize = False
              Caption = 'Riil (Incurred)'
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
              Height = 27
              Width = 135
              AnchorY = 33
            end
            object ljk_rill: TcxCurrencyEdit
              Left = 241
              Top = 21
              Hint = 'LJK - Riil (Incurred)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 200
            end
            object ljk_potensial: TcxCurrencyEdit
              Left = 241
              Top = 51
              Hint = 'LJK - Potensial (Potential)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 200
            end
            object cxLabel16: TcxLabel
              Left = 33
              Top = 49
              AutoSize = False
              Caption = 'Potensial (Potential)'
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
              Height = 27
              Width = 135
              AnchorY = 63
            end
            object ljk_recovery: TcxCurrencyEdit
              Left = 241
              Top = 81
              Hint = 'LJK - Setelah Pengembalian (Recovery)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 200
            end
            object cxLabel17: TcxLabel
              Left = 33
              Top = 79
              AutoSize = False
              Caption = 'Setelah Pengembalian (Recovery)'
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
              Height = 27
              Width = 216
              AnchorY = 93
            end
          end
          object gb_konsumen: TcxGroupBox
            Left = 503
            Top = 3
            Caption = 'Konsumen'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 1
            Height = 118
            Width = 480
            object cxLabel18: TcxLabel
              Left = 33
              Top = 19
              AutoSize = False
              Caption = 'Riil (Incurred)'
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
              Height = 27
              Width = 135
              AnchorY = 33
            end
            object Konsumen_rill: TcxCurrencyEdit
              Left = 241
              Top = 21
              Hint = 'Konsumen - Riil (Incurred)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 200
            end
            object konsumen_potensial: TcxCurrencyEdit
              Left = 241
              Top = 51
              Hint = 'Konsumen - Potensial (Potential)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 200
            end
            object cxLabel19: TcxLabel
              Left = 33
              Top = 49
              AutoSize = False
              Caption = 'Potensial (Potential)'
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
              Height = 27
              Width = 135
              AnchorY = 63
            end
            object konsumen_recovery: TcxCurrencyEdit
              Left = 241
              Top = 81
              Hint = 'LJK - Setelah Pengembalian (Recovery)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 200
            end
            object cxLabel20: TcxLabel
              Left = 33
              Top = 79
              AutoSize = False
              Caption = 'Setelah Pengembalian (Recovery)'
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
              Height = 27
              Width = 216
              AnchorY = 93
            end
          end
          object gb_pihak_lain: TcxGroupBox
            Left = 17
            Top = 127
            Caption = 'Pihak Lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 2
            Height = 118
            Width = 480
            object cxLabel21: TcxLabel
              Left = 33
              Top = 19
              AutoSize = False
              Caption = 'Riil (Incurred)'
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
              Height = 27
              Width = 135
              AnchorY = 33
            end
            object lain_rill: TcxCurrencyEdit
              Left = 241
              Top = 21
              Hint = 'Pihak Lain - Riil (Incurred)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 200
            end
            object lain_potensial: TcxCurrencyEdit
              Left = 241
              Top = 51
              Hint = 'Pihak Lain - Potensial (Potential)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 200
            end
            object cxLabel22: TcxLabel
              Left = 33
              Top = 49
              AutoSize = False
              Caption = 'Potensial (Potential)'
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
              Height = 27
              Width = 135
              AnchorY = 63
            end
            object lain_recovery: TcxCurrencyEdit
              Left = 241
              Top = 81
              Hint = 'Pihak Lain - Setelah Pengembalian (Recovery)'
              EditValue = '0'
              ParentColor = True
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clWindow
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 200
            end
            object cxLabel23: TcxLabel
              Left = 33
              Top = 79
              AutoSize = False
              Caption = 'Setelah Pengembalian (Recovery)'
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
              Height = 27
              Width = 216
              AnchorY = 93
            end
          end
        end
      end
      object cxTabSebabDanTindakan: TcxTabSheet
        Caption = 'Data Penyebab Dan Tindakan'
        ImageIndex = 2
        object PanelTab3: TcxGroupBox
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
          Height = 363
          Width = 1005
          object cxLabel9: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 22
            AutoSize = False
            Caption = 'Kelemahan Penyebab Fraud'
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
          object cxLabel24: TcxLabel
            Left = 17
            Top = 48
            AutoSize = False
            Caption = 'Keterangan Kelemahan Penyebab Fraud'
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
          object memkelemahan_sebab_fraud: TcxMemo
            Tag = 1
            Left = 185
            Top = 50
            Hint = 'Keterangan Kelemahan Penyebab Fraud'
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
          object kelemahan_sebab_fraud: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 20
            Hint = 'Kelemahan Penyebab Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefSebabFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 298
          end
          object cxLabel25: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 104
            AutoSize = False
            Caption = 'Tindakan Penanganan Fraud'
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
            AnchorY = 114
          end
          object cxLabel26: TcxLabel
            Left = 17
            Top = 130
            AutoSize = False
            Caption = 'Keterangan Tindakan Penanganan Fraud'
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
            AnchorY = 148
          end
          object mempenanganan_fraud: TcxMemo
            Tag = 1
            Left = 185
            Top = 132
            Hint = 'Keterangan Tindakan Penanganan Fraud'
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
            TabOrder = 6
            Height = 47
            Width = 298
          end
          object penanganan_fraud: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 102
            Hint = 'Tindakan Penanganan Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefPenangananFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 298
          end
          object cxLabel27: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 22
            AutoSize = False
            Caption = 'Tindakan Perbaikan Fraud'
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
          object cxLabel28: TcxLabel
            Left = 497
            Top = 48
            AutoSize = False
            Caption = 'Keterangan Tindakan Perbaikan Fraud'
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
          object memperbaikan_fraud: TcxMemo
            Tag = 1
            Left = 665
            Top = 50
            Hint = 'Keterangan Tindakan Perbaikan Fraud'
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
            TabOrder = 10
            Height = 47
            Width = 298
          end
          object perbaikan_fraud: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 20
            Hint = 'Tindakan Perbaikan Fraud'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefPerbaikanFraud
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 298
          end
          object cxLabel29: TcxLabel
            Left = 497
            Top = 102
            AutoSize = False
            Caption = 'Target Waktu Pelaksanaan'
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
            AnchorY = 114
          end
          object waktu_pelaksanaan: TcxTextEdit
            Tag = 1
            Left = 665
            Top = 103
            Hint = 'Target Waktu Pelaksanaan'
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
          object cxLabel30: TcxLabel
            Left = 497
            Top = 132
            AutoSize = False
            Caption = 'Realisasi Pelaksanaan'
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
            AnchorY = 144
          end
          object realiasasi_pelaksanaan: TcxTextEdit
            Tag = 1
            Left = 665
            Top = 133
            Hint = 'Realisasi Pelaksanaan'
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
        end
      end
      object cxTabDataPelaku: TcxTabSheet
        Caption = 'Data Pelaku'
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
          Height = 363
          Width = 1005
          object cxLabel31: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 22
            AutoSize = False
            Caption = 'Intern/Ekstern'
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
          object intern_ekstern: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 20
            Hint = 'Intern/Ekstern'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefInternalEkstern
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
          object cxLabel32: TcxLabel
            Left = 17
            Top = 47
            AutoSize = False
            Caption = 'Nama'
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
          object nama: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 48
            Hint = 'Nama Pelaku'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 3
            Height = 24
            Width = 298
          end
          object cxLabel33: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 78
            AutoSize = False
            Caption = 'Jenis Identitas'
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
            Top = 103
            AutoSize = False
            Caption = 'Nomor Identitas'
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
            AnchorY = 115
          end
          object nomor_identitas: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 104
            Hint = 'Nomor Identitas'
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
          object jenis_identitas: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 77
            Hint = 'Jenis Identitas'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJenisIdentitas
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 298
          end
          object cxLabel35: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 135
            AutoSize = False
            Caption = 'Jenis Kelamin'
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
            AnchorY = 145
          end
          object jenis_kelamin: TcxLookupComboBox
            Tag = 1
            Left = 185
            Top = 133
            Hint = 'Jenis Kelamin'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJenisKelamin
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
          object cxLabel36: TcxLabel
            Left = 17
            Top = 241
            AutoSize = False
            Caption = 'Alamat Identitas'
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
            AnchorY = 259
          end
          object memalamat_identitas: TcxMemo
            Tag = 1
            Left = 185
            Top = 243
            Hint = 'Alamat Identitas'
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
          object memalamat_domisili: TcxMemo
            Tag = 1
            Left = 185
            Top = 296
            Hint = 'Alamat Domisili'
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
            TabOrder = 12
            Height = 47
            Width = 298
          end
          object cxLabel37: TcxLabel
            Left = 17
            Top = 294
            AutoSize = False
            Caption = 'Alamat Domisili'
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
            AnchorY = 312
          end
          object cxLabel38: TcxLabel
            Left = 17
            Top = 162
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
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 19
            Width = 135
            AnchorY = 172
          end
          object dttanggal_lahir: TcxDateEdit
            Left = 185
            Top = 160
            Hint = 'Tanggal Lahir'
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
          object cxLabel39: TcxLabel
            Left = 17
            Top = 188
            AutoSize = False
            Caption = 'Tempat Lahir'
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
          object memtempat_lahir: TcxMemo
            Tag = 1
            Left = 185
            Top = 190
            Hint = 'Tempat Lahir'
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
          object cxLabel40: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 22
            AutoSize = False
            Caption = 'Status Pelaku'
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
          object status_pelaku: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 20
            Hint = 'Status Pelaku'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefStatusPelaku
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
          object cxLabel41: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 52
            AutoSize = False
            Caption = 'Jabatan Saat Terjadi'
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
            AnchorY = 62
          end
          object cxLabel42: TcxLabel
            Left = 497
            Top = 78
            AutoSize = False
            Caption = 'Keterangan Jabatan Saat Terjadi'
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
            AnchorY = 96
          end
          object memjabatan_saat_terjadi: TcxMemo
            Tag = 1
            Left = 665
            Top = 80
            Hint = 'Keterangan Jabatan Saat Terjadi'
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
            TabOrder = 22
            Height = 47
            Width = 298
          end
          object jabatan_saat_terjadi: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 50
            Hint = 'Jabatan Saat Terjadi'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJabatanSaatTerjadi
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 23
            Width = 298
          end
          object cxLabel43: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 132
            AutoSize = False
            Caption = 'Jabatan Saat Diketahui'
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
            AnchorY = 142
          end
          object cxLabel44: TcxLabel
            Left = 497
            Top = 158
            AutoSize = False
            Caption = 'Keterangan Jabatan Saat Diketahui'
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
            AnchorY = 176
          end
          object memjabatan_saat_diketahui: TcxMemo
            Tag = 1
            Left = 665
            Top = 160
            Hint = 'Keterangan Jabatan Saat Diketahui'
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
            TabOrder = 26
            Height = 47
            Width = 298
          end
          object jabatan_saat_diketahui: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 130
            Hint = 'Jabatan Saat Diketahui'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefJabatanSaatDiketahui
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
          object cxLabel45: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 214
            AutoSize = False
            Caption = 'Keterangan Pelaku'
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
            AnchorY = 224
          end
          object cxLabel46: TcxLabel
            Left = 497
            Top = 240
            AutoSize = False
            Caption = 'Pengenaan Sanksi'
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
            AnchorY = 258
          end
          object memsanksi: TcxMemo
            Tag = 1
            Left = 665
            Top = 242
            Hint = 'Pengenaan Sanksi'
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
            TabOrder = 30
            Height = 47
            Width = 298
          end
          object keterangan_pelaku: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 212
            Hint = 'Keterangan Pelaku'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefKetPelaku
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 31
            Width = 298
          end
          object cxLabel47: TcxLabel
            AlignWithMargins = True
            Left = 497
            Top = 295
            AutoSize = False
            Caption = 'Status Penanganan'
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
            AnchorY = 305
          end
          object status_penanganan: TcxLookupComboBox
            Tag = 1
            Left = 665
            Top = 293
            Hint = 'Status Penanganan'
            ParentColor = True
            ParentFont = False
            Properties.KeyFieldNames = 'sandi'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsMyQRefStatusPenanganan
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 33
            Width = 298
          end
        end
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 398
    ExplicitTop = 398
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
    Left = 424
    Top = 48
  end
  object dsMyQRefkejadian_menurut_pelaku: TMyDataSource
    DataSet = MyQRefkejadian_menurut_pelaku
    Left = 48
    Top = 320
  end
  object MyQRefkejadian_menurut_pelaku: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_fraud_pelaku`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 120
    Top = 320
    object MyQRefkejadian_menurut_pelakusandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefkejadian_menurut_pelakunama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJenisFraud: TMyDataSource
    DataSet = MyQRefJenisFraud
    Left = 48
    Top = 368
  end
  object MyQRefJenisFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jenis_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 120
    Top = 368
    object StringField1: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefAktivitasFraud: TMyDataSource
    DataSet = MyQRefAktivitasFraud
    Left = 48
    Top = 424
  end
  object MyQRefAktivitasFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_aktivitas_terkait_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 120
    Top = 424
    object StringField3: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefLokasiFraud: TMyDataSource
    DataSet = MyQRefLokasiFraud
    Left = 48
    Top = 472
  end
  object MyQRefLokasiFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_lokasi_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 120
    Top = 472
    object StringField5: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField6: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefKetLokasiFraud: TMyDataSource
    DataSet = MyQRefKetLokasiFraud
    Left = 280
    Top = 320
  end
  object MyQRefKetLokasiFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_sandi_kab_kota`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 352
    Top = 320
    object StringField7: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField8: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPihakRugi: TMyDataSource
    DataSet = MyQRefPihakRugi
    Left = 280
    Top = 368
  end
  object MyQRefPihakRugi: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_pihak_rugi`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 352
    Top = 368
    object StringField9: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField10: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefSebabFraud: TMyDataSource
    DataSet = MyQRefSebabFraud
    Left = 280
    Top = 416
  end
  object MyQRefSebabFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_kelemahan_sebab_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 352
    Top = 416
    object StringField11: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField12: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPenangananFraud: TMyDataSource
    DataSet = MyQRefPenangananFraud
    Left = 280
    Top = 464
  end
  object MyQRefPenangananFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_tindakan_penanganan_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 352
    Top = 464
    object StringField13: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField14: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPerbaikanFraud: TMyDataSource
    DataSet = MyQRefPerbaikanFraud
    Left = 512
    Top = 320
  end
  object MyQRefPerbaikanFraud: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_perbaikan_cegah_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 592
    Top = 320
    object StringField15: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField16: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefInternalEkstern: TMyDataSource
    DataSet = MyQRefInternalEkstern
    Left = 512
    Top = 368
  end
  object MyQRefInternalEkstern: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_pelaku_fraud`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 592
    Top = 368
    object StringField17: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField18: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJenisIdentitas: TMyDataSource
    DataSet = MyQRefJenisIdentitas
    Left = 512
    Top = 416
  end
  object MyQRefJenisIdentitas: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jenis_identitas`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 592
    Top = 416
    object StringField19: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField20: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJenisKelamin: TMyDataSource
    DataSet = MyQRefJenisKelamin
    Left = 512
    Top = 464
  end
  object MyQRefJenisKelamin: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jenis_kelamin`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 592
    Top = 464
    object StringField21: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField22: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefStatusPelaku: TMyDataSource
    DataSet = MyQRefStatusPelaku
    Left = 760
    Top = 320
  end
  object MyQRefStatusPelaku: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(code,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_status_pelaku`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 840
    Top = 320
    object StringField23: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField24: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object MyQRefJabatanSaatTerjadi: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jabatan_pelaku_saat_fraud_terjadi`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 840
    Top = 368
    object StringField25: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField26: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefJabatanSaatTerjadi: TMyDataSource
    DataSet = MyQRefJabatanSaatTerjadi
    Left = 760
    Top = 368
  end
  object dsMyQRefJabatanSaatDiketahui: TMyDataSource
    DataSet = MyQRefJabatanSaatDiketahui
    Left = 760
    Top = 416
  end
  object MyQRefJabatanSaatDiketahui: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_jabatan_pelaku_saat_fraud_diketahui`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 840
    Top = 416
    object StringField27: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField28: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefKetPelaku: TMyDataSource
    DataSet = MyQRefKetPelaku
    Left = 760
    Top = 464
  end
  object MyQRefKetPelaku: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(code,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_keterangan_pelaku`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 840
    Top = 464
    object StringField29: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField30: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefStatusPenanganan: TMyDataSource
    DataSet = MyQRefStatusPenanganan
    Left = 760
    Top = 512
  end
  object MyQRefStatusPenanganan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT CODE as sandi, CONCAT(CODE,'#39' - '#39',deskripsi)AS nama'
      'FROM `ref_status`'
      'ORDER BY CODE')
    Options.FieldOrigins = foNone
    Left = 840
    Top = 512
    object StringField31: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField32: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 16
    Top = 280
  end
end
