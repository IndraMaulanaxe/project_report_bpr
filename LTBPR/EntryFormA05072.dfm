inherited fr_EntryFormA05072: Tfr_EntryFormA05072
  Caption = 'Entry Form A05072 - Kegiatan Pengembangan '
  ClientHeight = 384
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 569
    ExplicitWidth = 569
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 569
    ExplicitHeight = 340
    Height = 340
    Width = 569
    object cxLabel8: TcxLabel
      Left = 17
      Top = 195
      AutoSize = False
      Caption = 'Jumlah Peserta'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 27
      Width = 135
      AnchorY = 209
    end
    object memuraian_kegiatan: TcxMemo
      Tag = 1
      Left = 185
      Top = 227
      Hint = 'Uraian Kegiatan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 1
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 223
      AutoSize = False
      Caption = 'Uraian Kegiatan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 238
    end
    object kode_komponen: TcxButtonEdit
      Left = 185
      Top = 23
      Hint = 'Kode Komponen'
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 3
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 50
      AutoSize = False
      Caption = 'Kegiatan Pengembangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 37
      Width = 135
      AnchorY = 69
    end
    object memkegiatan: TcxMemo
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'Kegiatan '
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 6
      Height = 48
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 166
      AutoSize = False
      Caption = 'Peserta'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 178
    end
    object cb_peserta: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 167
      Hint = 'Peserta'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefPeserta
      TabOrder = 8
      Width = 298
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 137
      AutoSize = False
      Caption = 'Pelaksana'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 148
    end
    object cb_pelaksana: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 137
      Hint = 'Pelaksana'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefPelaksana
      TabOrder = 10
      Width = 298
    end
    object Label6: TcxLabel
      Left = 17
      Top = 109
      AutoSize = False
      Caption = 'Tanggal'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 19
      Width = 135
      AnchorY = 119
    end
    object tgl_kegiatan: TcxDateEdit
      Left = 185
      Top = 107
      Hint = 'Tanggal'
      TabOrder = 12
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 276
      AutoSize = False
      Caption = 'Keterangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 291
    end
    object memketerangan: TcxMemo
      Tag = 1
      Left = 185
      Top = 280
      Hint = 'Keterangan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 14
      Height = 47
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 340
    ExplicitTop = 340
    ExplicitWidth = 569
    ExplicitHeight = 44
    Height = 44
    Width = 569
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
      Left = 382
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 382
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 564
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 564
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 473
      Height = 34
      ExplicitLeft = 473
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 376
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 376
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
      Left = 370
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 370
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 364
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 364
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 358
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 358
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 352
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 352
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 569
    ExplicitWidth = 569
    inherited IconClose: TLabel
      Left = 535
      ExplicitLeft = 771
    end
  end
  object jumlah_peserta: TcxCurrencyEdit
    Left = 185
    Top = 197
    Hint = 'Jumlah Peserta'
    Properties.DisplayFormat = '#,##0'
    TabOrder = 4
    Width = 121
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefPelaksana: TMyDataSource
    DataSet = MyQRefPelaksana
    Left = 392
    Top = 8
  end
  object MyQRefPelaksana: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_pihak_pelaksana)AS nam' +
        'a'
      'FROM `ref_pihak_pelaksana`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQRefPelaksanasandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefPelaksananama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPeserta: TMyDataSource
    DataSet = MyQRefPeserta
    Left = 392
    Top = 56
  end
  object MyQRefPeserta: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_peserta)AS nama'
      'FROM `ref_kategori_peserta`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 56
    object StringField1: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
