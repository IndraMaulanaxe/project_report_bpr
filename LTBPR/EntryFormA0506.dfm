inherited fr_EntryFormA0506: Tfr_EntryFormA0506
  Caption = 
    'Entry Form A0506 -  Kerja Sama BPR dengan Bank atau Lembaga Lain' +
    ' '
  ClientHeight = 382
  ClientWidth = 494
  ExplicitWidth = 500
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 494
    ExplicitWidth = 569
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 569
    ExplicitHeight = 393
    Height = 338
    Width = 494
    object cxLabel8: TcxLabel
      Left = 17
      Top = 194
      AutoSize = False
      Caption = 'Jenis Kerja Sama'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 28
      Width = 135
      AnchorY = 208
    end
    object memjenis_kerjasama: TcxMemo
      Tag = 1
      Left = 185
      Top = 197
      Hint = 'Jenis Kerja Sama'
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
    object memuraian_kerjasama: TcxMemo
      Tag = 1
      Left = 185
      Top = 250
      Hint = 'Uraian Kerja Sama'
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
    object cxLabel10: TcxLabel
      Left = 17
      Top = 246
      AutoSize = False
      Caption = 'Uraian Kerja Sama'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 261
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
      Width = 121
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
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 34
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Nama Bank / Lembaga Lain'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 29
      Width = 135
      AnchorY = 96
    end
    object memnama_bank_lembaga: TcxMemo
      Tag = 1
      Left = 185
      Top = 84
      Hint = 'Nama Bank Atau Lembaga'
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
      Height = 48
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'Referensi Lembaga'
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
      AnchorY = 65
    end
    object cb_ref_lembaga: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 54
      Hint = 'Referensi Lembaga'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefLembaga
      Properties.OnChange = cb_ref_lembagaPropertiesChange
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
      Top = 137
      AutoSize = False
      Caption = 'Sandi Bank'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 148
    end
    object cb_sandi_bank: TcxLookupComboBox
      Left = 185
      Top = 137
      Hint = 'Sandi Bank'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefSandiBank
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
    object npwp: TcxTextEdit
      Left = 185
      Top = 167
      Hint = 'NPWP'
      TabStop = False
      AutoSize = False
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.TextColor = clWindow
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 4
      Height = 24
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 164
      AutoSize = False
      Caption = 'NPWP'
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
      Height = 31
      Width = 162
      AnchorY = 180
    end
    object Label6: TcxLabel
      Left = 17
      Top = 305
      AutoSize = False
      Caption = 'Tanggal Kerja Sama'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 19
      Width = 135
      AnchorY = 315
    end
    object tgl_kerjasama: TcxDateEdit
      Left = 185
      Top = 303
      Hint = 'Tanggal Kerja Sama'
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 338
    ExplicitTop = 393
    ExplicitWidth = 569
    ExplicitHeight = 44
    Height = 44
    Width = 494
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
      Left = 307
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 382
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 489
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 564
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 398
      Height = 34
      ExplicitLeft = 473
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 301
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
      Left = 295
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 370
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 289
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 364
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 283
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 358
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 277
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
    Width = 494
    ExplicitWidth = 569
    inherited IconClose: TLabel
      Left = 460
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefLembaga: TMyDataSource
    DataSet = MyQRefLembaga
    Left = 392
    Top = 8
  end
  object MyQRefLembaga: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_lembaga)AS nama'
      'FROM `ref_lembaga`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQRefLembagasandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefLembaganama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefSandiBank: TMyDataSource
    DataSet = MyQRefSandiBank
    Left = 392
    Top = 56
  end
  object MyQRefSandiBank: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',nama_bank_ljk)AS nama'
      'FROM `ref_sandi_bank`'
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
