inherited fr_EntryFormE0303: Tfr_EntryFormE0303
  Caption = 'Entry Form E0303 - Kepemilikan Saham Pada Perusahaan Lain'
  ClientHeight = 299
  ClientWidth = 576
  ExplicitWidth = 582
  ExplicitHeight = 328
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 576
    ExplicitWidth = 576
  end
  inherited PanelContent: TcxGroupBox
    ExplicitTop = -1
    ExplicitWidth = 576
    ExplicitHeight = 255
    Height = 255
    Width = 576
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
      Top = 193
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
      AnchorY = 212
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 200
      Hint = 'Tindak Lanjut'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 3
      Height = 48
      Width = 298
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 78
      AutoSize = False
      Caption = 'Nama'
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 152
      AnchorY = 95
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'NIK'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 64
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 168
      AutoSize = False
      Caption = 'Kepemilikan (%)'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 27
      Width = 176
      AnchorY = 182
    end
    object persen: TcxCurrencyEdit
      Left = 185
      Top = 170
      Hint = 'Persentase Kepemilikan Tahun (%)'
      EditValue = 0.100000000000000000
      Properties.DisplayFormat = '#,##0.00'
      Properties.MaxValue = 100.000000000000000000
      Properties.MinValue = 0.100000000000000000
      TabOrder = 7
      Width = 121
    end
    object nik: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'NIK'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 8
      Height = 24
      Width = 298
    end
    object nama: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 83
      Hint = 'Nama'
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
    object cxLabel4: TcxLabel
      Left = 17
      Top = 113
      AutoSize = False
      Caption = 'Sandi Bank Lain'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 21
      Width = 135
      AnchorY = 124
    end
    object cb_sandibank: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 113
      Hint = 'Sandi Bank Lain'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefSandiBank
      TabOrder = 11
      Width = 298
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 137
      AutoSize = False
      Caption = 'Nama Bank/Perusahan Lain'
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 33
      Width = 162
      AnchorY = 154
    end
    object nama_bank: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 142
      Hint = 'Nama Bank/Perusahan Lain'
      TabStop = False
      AutoSize = False
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 13
      Height = 24
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 255
    ExplicitTop = 255
    ExplicitWidth = 576
    ExplicitHeight = 44
    Height = 44
    Width = 576
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
      Left = 389
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 389
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 571
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 571
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 480
      Height = 34
      ExplicitLeft = 480
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 383
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 383
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
      Left = 377
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 377
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 371
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 371
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 365
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 365
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 359
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 359
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 576
    ExplicitWidth = 576
    inherited IconClose: TLabel
      Left = 542
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefSandiBank: TMyDataSource
    DataSet = MyQRefSandiBank
    Left = 392
    Top = 8
  end
  object MyQRefSandiBank: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',nama_bank_ljk)AS nama'
      'FROM `ref_sandi_bank`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQRefSandiBanksandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefSandiBanknama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
