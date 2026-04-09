inherited fr_EntryFormE1100: Tfr_EntryFormE1100
  Caption = 
    'Entry Form E1100 - Pemberian Dana untuk Kegiatan Sosial dan Kegi' +
    'atan Politikn '
  ClientHeight = 268
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 493
    ExplicitWidth = 493
  end
  inherited PanelContent: TcxGroupBox
    TabOrder = 2
    ExplicitWidth = 493
    ExplicitHeight = 283
    Height = 224
    Width = 493
    object cxLabel2: TcxLabel
      Left = 16
      Top = 164
      AutoSize = False
      Caption = 'Penerima Dana'
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
      AnchorY = 176
    end
    object frekuesi: TcxLabel
      Left = 16
      Top = 194
      AutoSize = False
      Caption = 'Jumlah (Rp.)'
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
      AnchorY = 208
    end
    object penerima_dana: TcxTextEdit
      Tag = 1
      Left = 184
      Top = 165
      Hint = 'Penerima Dana'
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
      TabOrder = 8
      Height = 24
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
      TabOrder = 3
      Height = 24
      Width = 152
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
    object jumlah: TcxCurrencyEdit
      Left = 184
      Top = 195
      Hint = 'Nilai Transaksi'
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
      TabOrder = 10
      Width = 121
    end
    object Label6: TcxLabel
      Left = 17
      Top = 55
      AutoSize = False
      Caption = 'Tanggal'
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
      AnchorY = 65
    end
    object tgl_kegiatan: TcxDateEdit
      Left = 185
      Top = 53
      Hint = 'Tanggal Pelaksanaan'
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
    object cxLabel1: TcxLabel
      Left = 16
      Top = 83
      AutoSize = False
      Caption = 'Jenis Kegiatan'
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
      Height = 21
      Width = 135
      AnchorY = 94
    end
    object cb_jenis_kegiatan: TcxLookupComboBox
      Tag = 1
      Left = 184
      Top = 83
      Hint = 'Jenis Kegiatan'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefJenis_Kegiatan
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindow
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 109
      AutoSize = False
      Caption = 'Penjelasan Kegiatan'
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
      AnchorY = 124
    end
    object mempenjelasan_kegiatan: TcxMemo
      Tag = 1
      Left = 184
      Top = 113
      Hint = 'Penjelasan Kegiatan'
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 224
    TabOrder = 3
    ExplicitTop = 283
    ExplicitWidth = 493
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
      ExplicitLeft = 306
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 488
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 488
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 397
      Height = 34
      ExplicitLeft = 397
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 300
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 300
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
      ExplicitLeft = 294
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 288
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 288
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 282
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 282
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 276
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 276
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 493
    TabOrder = 1
    ExplicitWidth = 493
    inherited IconClose: TLabel
      Left = 459
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefJenis_Kegiatan: TMyDataSource
    DataSet = MyQRefJenis_Kegiatan
    Left = 384
    Top = 8
  end
  object MyQRefJenis_Kegiatan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM `ref_sosial_politik`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 456
    Top = 8
    object MyQRefJenis_Kegiatansandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefJenis_Kegiatannama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
