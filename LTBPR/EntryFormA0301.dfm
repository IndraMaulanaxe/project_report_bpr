inherited fr_EntryFormA0301: Tfr_EntryFormA0301
  Caption = 'Entry Form A0301 -  Riwayat Pendirian BPR '
  ClientHeight = 494
  ClientWidth = 558
  ExplicitWidth = 564
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 558
    ExplicitWidth = 554
  end
  inherited PanelContent: TcxGroupBox
    Caption = 'A'
    ExplicitTop = -1
    ExplicitWidth = 554
    ExplicitHeight = 437
    Height = 450
    Width = 558
    object nomor_akta_pendirian: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'Nomor Akta Pendirian'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      Height = 24
      Width = 298
    end
    object Label6: TcxLabel
      Left = 17
      Top = 86
      AutoSize = False
      Caption = 'Tanggal Akta Pendirian'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 19
      Width = 135
      AnchorY = 96
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 52
      AutoSize = False
      Caption = 'Nomor Akta Pendirian'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 64
    end
    object tgl_akta_pendirian: TcxDateEdit
      Left = 185
      Top = 84
      Hint = 'Tanggal Akta'
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 109
      AutoSize = False
      Caption = 'Nomor Perubahan Anggaran Dasar Terakhir'
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 35
      Width = 162
      AnchorY = 127
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 141
      AutoSize = False
      Caption = 'Tanggal Perubahan Anggaran Dasar Terakhir'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 162
      AnchorY = 158
    end
    object tgl_ubah_anggaran: TcxDateEdit
      Left = 185
      Top = 146
      Hint = 'Tanggal Perubahan'
      TabOrder = 6
      Width = 121
    end
    object nomor_ubah_anggaran: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 115
      Hint = 'Nomor Perubahan'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 7
      Height = 24
      Width = 298
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 169
      AutoSize = False
      Caption = 'Nomor Pengesahan Dari Instansi Yang Berwenang'
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 40
      Width = 162
      AnchorY = 189
    end
    object nomor_pengesahan: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 178
      Hint = 'Nomor Pengesahan'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 9
      Height = 24
      Width = 298
    end
    object tgl_pengesahan: TcxDateEdit
      Left = 185
      Top = 210
      Hint = 'Tanggal Pengesahan'
      TabOrder = 10
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 17
      Top = 205
      AutoSize = False
      Caption = 'Tanggal Pengesahan Dari Instansi Yang Berwenang'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 162
      AnchorY = 222
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 236
      AutoSize = False
      Caption = 'Tanggal Mulai Beroperasi'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 162
      AnchorY = 253
    end
    object tgl_mulai_operasi: TcxDateEdit
      Left = 185
      Top = 241
      Hint = 'Tanggal Beroperasi'
      TabOrder = 13
      Width = 121
    end
    object membidangusaha: TcxMemo
      Tag = 1
      Left = 185
      Top = 272
      Hint = 'Bidang Usaha'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 14
      Height = 24
      Width = 298
    end
    object cxLabel7: TcxLabel
      Left = 17
      Top = 264
      AutoSize = False
      Caption = 'Bidang Usaha Sesuai Anggaran Dasar'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 38
      Width = 135
      AnchorY = 283
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 299
      AutoSize = False
      Caption = 'Tempat Kedudukan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 314
    end
    object memtempat_kedudukan: TcxMemo
      Tag = 1
      Left = 185
      Top = 302
      Hint = 'Tempat Kedudukan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 17
      Height = 47
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 357
      AutoSize = False
      Caption = 'Nama Akuntan Publik'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 369
    end
    object cb_akuntan_publik: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 358
      Hint = 'Nama Akuntan Publik'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQref_opini_akuntan_publik
      TabOrder = 19
      Width = 298
    end
    object memketerangan: TcxMemo
      Tag = 1
      Left = 185
      Top = 388
      Hint = 'Keterangan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 20
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 384
      AutoSize = False
      Caption = 'Keterangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 399
    end
    object kode_komponen: TcxButtonEdit
      Left = 185
      Top = 23
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 22
      Height = 24
      Width = 103
    end
    object Label3: TcxLabel
      Left = 17
      Top = 22
      AutoSize = False
      Caption = 'Kode Komponen'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 34
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 450
    ExplicitTop = 341
    ExplicitWidth = 554
    ExplicitHeight = 44
    Height = 44
    Width = 558
    inherited btlb_Refresh: TcxButton
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitWidth = 0
    end
    inherited btlb_tools1: TcxButton
      Left = 11
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 11
      ExplicitWidth = 0
    end
    inherited btlb_tools2: TcxButton
      Left = 17
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 17
      ExplicitWidth = 0
    end
    inherited btlb_Save: TcxButton
      Left = 371
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 367
    end
    inherited btlb_Close: TcxButton
      Left = 553
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 549
      ExplicitWidth = 0
    end
    inherited btlb_Cancel: TcxButton
      Left = 462
      Height = 34
      ExplicitLeft = 458
    end
    inherited btlb_Print: TcxButton
      Left = 365
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 361
      ExplicitWidth = 0
    end
    inherited btlb_tools3: TcxButton
      Left = 23
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 23
      ExplicitWidth = 0
    end
    inherited btlb_Delete: TcxButton
      Left = 359
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 355
      ExplicitWidth = 0
    end
    inherited btlb_Edit: TcxButton
      Left = 353
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 349
      ExplicitWidth = 0
    end
    inherited btlb_Insert: TcxButton
      Left = 347
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 343
      ExplicitWidth = 0
    end
    inherited btlb_Pilih: TcxButton
      Left = 341
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 337
      ExplicitWidth = 0
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 558
    ExplicitWidth = 554
    inherited IconClose: TLabel
      Left = 524
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQref_opini_akuntan_publik: TMyDataSource
    DataSet = MyQref_opini_akuntan_publik
    Left = 392
    Top = 8
  end
  object MyQref_opini_akuntan_publik: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT '#39'-'#39' AS sandi, CONCAT('#39' - TIDAK ADA'#39')AS nama'
      'UNION ALL'
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',opini_akuntan_publik)AS nama'
      'FROM ref_opini_akuntan_publik'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQref_opini_akuntan_publiksandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQref_opini_akuntan_publiknama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
