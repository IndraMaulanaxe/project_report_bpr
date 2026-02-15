inherited fr_EntryFormA0506: Tfr_EntryFormA0506
  Caption = 
    'Entry Form A0506 -  Kerja Sama BPR dengan Bank atau Lembaga Lain' +
    ' '
  ClientHeight = 437
  ClientWidth = 569
  ExplicitWidth = 575
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 569
    ExplicitWidth = 569
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 569
    ExplicitHeight = 393
    Height = 393
    Width = 569
    object cxLabel8: TcxLabel
      Left = 17
      Top = 194
      AutoSize = False
      Caption = 'Jenis Kerja Sama'
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
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 1
      Height = 47
      Width = 298
    end
    object memuraian_kerjasama: TcxMemo
      Tag = 1
      Left = 185
      Top = 250
      Hint = 'Uraian Kerja Sama'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 2
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 246
      AutoSize = False
      Caption = 'Uraian Kerja Sama'
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
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 4
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
      Top = 81
      AutoSize = False
      Caption = 'Nama Bank / Lembaga Lain'
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
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 7
      Height = 48
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'Referensi Lembaga'
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
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefLembaga
      TabOrder = 9
      Width = 298
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 137
      AutoSize = False
      Caption = 'Sandi Bank'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 148
    end
    object cb_sandi_bank: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 137
      Hint = 'Sandi Bank'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefSandiBank
      TabOrder = 11
      Width = 298
    end
    object npwp: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 167
      Hint = 'NPWP'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 12
      Height = 24
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 164
      AutoSize = False
      Caption = 'NPWP'
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
      TabOrder = 15
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 329
      AutoSize = False
      Caption = 'Keterangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 344
    end
    object memketerangan: TcxMemo
      Tag = 1
      Left = 185
      Top = 333
      Hint = 'Keterangan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 17
      Height = 47
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 393
    ExplicitTop = 393
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
