inherited fr_EntryFormA0502: Tfr_EntryFormA0502
  Caption = 'Entry Form A0502 -  Bidang Usaha '
  ClientHeight = 273
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 493
    ExplicitWidth = 569
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 569
    ExplicitHeight = 280
    Height = 229
    Width = 493
    object cxLabel8: TcxLabel
      Left = 17
      Top = 163
      AutoSize = False
      Caption = 'Uraian'
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
      Height = 28
      Width = 135
      AnchorY = 177
    end
    object memuraian: TcxMemo
      Tag = 1
      Left = 185
      Top = 166
      Hint = 'Uraian'
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
      TabOrder = 0
      Height = 24
      Width = 103
    end
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 110
      AutoSize = False
      Caption = 'Nama Produk'
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
      Height = 29
      Width = 135
      AnchorY = 125
    end
    object memnama_produk: TcxMemo
      Tag = 1
      Left = 185
      Top = 113
      Hint = 'Nama Produk'
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
      TabOrder = 3
      Height = 48
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'Kegiatan Usaha'
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
      AnchorY = 65
    end
    object cb_kegiatan_usaha: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 54
      Hint = 'Kegiatan Usaha'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQrKegiatan_Usaha
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
    object cxLabel2: TcxLabel
      Left = 17
      Top = 83
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
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 95
    end
    object cb_jenis_produk: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 83
      Hint = 'Jenis Produk'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQJenis_Produk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindow
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 229
    ExplicitTop = 280
    ExplicitWidth = 569
    ExplicitHeight = 44
    Height = 44
    Width = 493
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
      Left = 306
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 382
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 488
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 564
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 397
      Height = 34
      ExplicitLeft = 473
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 300
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
      Left = 294
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 370
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 288
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 364
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 282
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 358
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 276
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
    Width = 493
    ExplicitWidth = 569
    inherited IconClose: TLabel
      Left = 459
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQrKegiatan_Usaha: TMyDataSource
    DataSet = MyQrKegiatan_Usaha
    Left = 392
    Top = 8
  end
  object MyQrKegiatan_Usaha: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_kegiatan_usaha)AS nama'
      'FROM ref_kategori_kegiatan_usaha'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQrKegiatan_Usahasandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQrKegiatan_Usahanama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQJenis_Produk: TMyDataSource
    DataSet = MyQJenis_Produk
    Left = 392
    Top = 56
  end
  object MyQJenis_Produk: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM ref_jenis_produk'
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
