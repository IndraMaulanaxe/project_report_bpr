inherited fr_EntryForm2000: Tfr_EntryForm2000
  Caption = 'Entry Form 2000 -  Formasi Sumber Daya Manusia '
  ClientHeight = 291
  ClientWidth = 554
  ExplicitWidth = 560
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 554
    ExplicitWidth = 554
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 554
    ExplicitHeight = 249
    Height = 249
    Width = 554
    object Label3: TcxLabel
      Left = 18
      Top = 11
      AutoSize = False
      Caption = 'Kode Komponen'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 23
    end
    object kode_komponen: TcxButtonEdit
      Left = 143
      Top = 16
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 1
      Height = 24
      Width = 103
    end
    object nm_nik: TcxTextEdit
      Tag = 1
      Left = 143
      Top = 46
      Hint = 'NIK'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 2
      Height = 24
      Width = 298
    end
    object Label6: TcxLabel
      Left = 18
      Top = 71
      AutoSize = False
      Caption = 'Nama'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 19
      Width = 135
      AnchorY = 81
    end
    object MemNama: TcxMemo
      Tag = 1
      Left = 143
      Top = 76
      Hint = 'Nama'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 4
      Height = 24
      Width = 298
    end
    object cxLabel1: TcxLabel
      Left = 18
      Top = 46
      AutoSize = False
      Caption = 'NIK'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 58
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 106
      AutoSize = False
      Caption = 'Jabatan'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 95
      AnchorY = 118
    end
    object cxLabel3: TcxLabel
      Left = 18
      Top = 136
      AutoSize = False
      Caption = 'Status Kepegawaian'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 148
    end
    object cxLabel4: TcxLabel
      Left = 18
      Top = 166
      AutoSize = False
      Caption = 'Tingkat Pendidikan'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 178
    end
    object cxLabel5: TcxLabel
      Left = 18
      Top = 196
      AutoSize = False
      Caption = 'Lama Masa Jabatan'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 208
    end
    object cb_jabatan: TcxLookupComboBox
      Tag = 1
      Left = 143
      Top = 106
      Hint = 'jabatan'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQSandiJabatan
      TabOrder = 10
      Width = 298
    end
    object cb_status: TcxLookupComboBox
      Tag = 1
      Left = 143
      Top = 136
      Hint = 'status kepegawaian'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'status'
        end>
      Properties.ListSource = dsMyQSandiKepegawaian
      TabOrder = 11
      Width = 298
    end
    object cb_pendidikan: TcxLookupComboBox
      Tag = 1
      Left = 143
      Top = 166
      Hint = 'Tingkat Pendidikan'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'tingkat'
        end>
      Properties.ListSource = dsMyQSandiPendidikan
      TabOrder = 12
      Width = 114
    end
    object cb_masajabatan: TcxDateEdit
      Left = 143
      Top = 196
      Hint = 'lama masa jabatan'
      EditValue = 43997d
      Properties.DisplayFormat = 'dd/MM/yyyy'
      TabOrder = 13
      Width = 114
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 249
    ExplicitTop = 249
    ExplicitWidth = 554
    Width = 554
    inherited btlb_Refresh: TcxButton
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 6
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_tools1: TcxButton
      Left = 11
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 12
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_tools2: TcxButton
      Left = 17
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 18
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Save: TcxButton
      Left = 367
      OnClick = btlb_SaveClick
      ExplicitLeft = 366
      ExplicitTop = 6
      ExplicitHeight = 30
    end
    inherited btlb_Close: TcxButton
      Left = 549
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 548
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Cancel: TcxButton
      Left = 458
      ExplicitLeft = 457
      ExplicitTop = 6
      ExplicitHeight = 30
    end
    inherited btlb_Print: TcxButton
      Left = 361
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 360
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_tools3: TcxButton
      Left = 23
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 24
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Delete: TcxButton
      Left = 355
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 354
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Edit: TcxButton
      Left = 349
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 348
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Insert: TcxButton
      Left = 343
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 342
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
    inherited btlb_Pilih: TcxButton
      Left = 337
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 336
      ExplicitTop = 6
      ExplicitWidth = 0
      ExplicitHeight = 30
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 554
    ExplicitWidth = 554
    inherited IconClose: TLabel
      Left = 520
      ExplicitLeft = 771
    end
  end
  object MyQSandiJabatan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',nama)AS nama'
      'FROM kp_ref_jabatan'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQSandiJabatansandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQSandiJabatannama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQSandiJabatan: TMyDataSource
    DataSet = MyQSandiJabatan
    Left = 392
    Top = 8
  end
  object MyQSandiKepegawaian: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',status)AS status'
      'FROM `kp_ref_status_kepegawaian`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 488
    Top = 72
    object MyQSandiKepegawaiansandi: TStringField
      FieldName = 'sandi'
      Size = 2
    end
    object MyQSandiKepegawaianstatus: TStringField
      FieldName = 'status'
      Size = 105
    end
  end
  object dsMyQSandiKepegawaian: TMyDataSource
    DataSet = MyQSandiKepegawaian
    Left = 408
    Top = 56
  end
  object MyQSandiPendidikan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',tingkat)AS tingkat'
      'FROM kp_ref_tingkat_pendidikan'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 400
    Top = 128
    object MyQSandiPendidikansandi: TStringField
      FieldName = 'sandi'
      Size = 2
    end
    object MyQSandiPendidikantingkat: TStringField
      FieldName = 'tingkat'
      Size = 25
    end
  end
  object dsMyQSandiPendidikan: TMyDataSource
    DataSet = MyQSandiPendidikan
    Left = 480
    Top = 128
  end
  object MyDataSource1: TMyDataSource
    Left = 488
    Top = 184
  end
end
