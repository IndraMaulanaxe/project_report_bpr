inherited fr_EntryFormE0204: Tfr_EntryFormE0204
  Caption = 
    'Entry Form E0204 - Struktur, Keanggotaan, Keahlian, dan Independ' +
    'ensi Anggota Komite'
  ClientHeight = 448
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 477
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 498
    ExplicitWidth = 498
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 498
    ExplicitHeight = 404
    Height = 404
    Width = 498
    object kode_komponen: TcxButtonEdit
      Left = 185
      Top = 23
      Hint = 'Kode Komponen'
      AutoSize = False
      ParentColor = True
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 0
      Height = 24
      Width = 160
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
    object Label1: TcxLabel
      Left = 17
      Top = 335
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Tindak Lanjut'
      ParentBiDiMode = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 37
      Width = 135
      AnchorY = 354
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 342
      Hint = 'Tindak Lanjut'
      ParentColor = True
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 3
      Height = 48
      Width = 298
    end
    object memkeahlian: TcxMemo
      Tag = 1
      Left = 185
      Top = 112
      Hint = 'Keahlian'
      ParentColor = True
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 4
      Height = 47
      Width = 298
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 112
      AutoSize = False
      Caption = 'Keahlian'
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 152
      AnchorY = 129
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 165
      AutoSize = False
      Caption = 'Komite Audit'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 176
    end
    object cb_audit: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 165
      Hint = 'Komite Audit'
      ParentColor = True
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefKomite
      TabOrder = 7
      Width = 298
    end
    object cb_pantau: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 195
      Hint = 'Komite Pemantau Risiko'
      ParentColor = True
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefKomite
      TabOrder = 8
      Width = 298
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 195
      AutoSize = False
      Caption = 'Komite Pemantau Risiko'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 206
    end
    object cb_manaj: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 254
      Hint = 'Komite Manajemen Risiko'
      ParentColor = True
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefKomite
      TabOrder = 10
      Width = 298
    end
    object cxLabel5: TcxLabel
      Left = 17
      Top = 254
      AutoSize = False
      Caption = 'Komite Manajemen Risiko'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 161
      AnchorY = 265
    end
    object cb_remunerasi: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 224
      Hint = 'Komite Remunerasi dan Nominasi'
      ParentColor = True
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefKomite
      TabOrder = 12
      Width = 298
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 224
      AutoSize = False
      Caption = 'Komite Remunerasi '
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 235
    end
    object Label6: TcxLabel
      Left = 17
      Top = 56
      AutoSize = False
      Caption = 'Nama Anggota Komite'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 19
      Width = 135
      AnchorY = 66
    end
    object nama_anggota: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'Nama Anggota Komite'
      TabStop = False
      AutoSize = False
      ParentColor = True
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 15
      Height = 24
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 404
    ExplicitTop = 404
    ExplicitWidth = 498
    ExplicitHeight = 44
    Height = 44
    Width = 498
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
      Left = 311
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 311
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 493
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 493
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 402
      Height = 34
      ExplicitLeft = 402
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 305
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 305
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
      Left = 299
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 299
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 293
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 293
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 287
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 287
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 281
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 281
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 498
    ExplicitWidth = 498
    inherited IconClose: TLabel
      Left = 464
      ExplicitLeft = 771
    end
  end
  object cb_pihak: TcxLookupComboBox
    Tag = 1
    Left = 185
    Top = 312
    Hint = 'Pihak Independen'
    ParentColor = True
    Properties.KeyFieldNames = 'sandi'
    Properties.ListColumns = <
      item
        FieldName = 'nama'
      end>
    Properties.ListSource = dsMyQRefindepeden
    TabOrder = 4
    Width = 298
  end
  object cxLabel7: TcxLabel
    Left = 17
    Top = 312
    AutoSize = False
    Caption = 'Pihak Independen'
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 21
    Width = 135
    AnchorY = 323
  end
  object cb_lainya: TcxLookupComboBox
    Tag = 1
    Left = 185
    Top = 282
    Hint = 'Komite Lainnya'
    ParentColor = True
    Properties.KeyFieldNames = 'sandi'
    Properties.ListColumns = <
      item
        FieldName = 'nama'
      end>
    Properties.ListSource = dsMyQRefKomite
    TabOrder = 6
    Width = 298
  end
  object cxLabel9: TcxLabel
    Left = 17
    Top = 282
    AutoSize = False
    Caption = 'Komite Lainnya'
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 21
    Width = 135
    AnchorY = 293
  end
  object cxLabel2: TcxLabel
    Left = 17
    Top = 86
    AutoSize = False
    Caption = 'NIK'
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 19
    Width = 135
    AnchorY = 96
  end
  object nik: TcxTextEdit
    Tag = 1
    Left = 185
    Top = 83
    Hint = 'NIK'
    TabStop = False
    AutoSize = False
    ParentColor = True
    Properties.Alignment.Horz = taLeftJustify
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 9
    Height = 24
    Width = 298
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefKomite: TMyDataSource
    DataSet = MyQRefKomite
    Left = 32
    Top = 360
  end
  object MyQRefKomite: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_komite_jabatan)AS nama'
      'FROM `ref_komite_jabatan`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 128
    Top = 360
    object MyQRefKomitesandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefKomitenama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object MyQRefindepeden: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_independent)AS nama'
      'FROM `ref_pihak_independen`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 128
    Top = 408
    object StringField1: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefindepeden: TMyDataSource
    DataSet = MyQRefindepeden
    Left = 32
    Top = 408
  end
end
