inherited fr_EntryFormE0203: Tfr_EntryFormE0203
  Caption = 
    'Entry Form E0203 - Tugas, Tanggung Jawab, Program Kerja, dan Rea' +
    'lisasi Program Kerja Komite'
  ClientHeight = 377
  ClientWidth = 576
  ExplicitWidth = 582
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 576
    ExplicitWidth = 576
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 576
    ExplicitHeight = 333
    Height = 333
    Width = 576
    object memprogram: TcxMemo
      Tag = 1
      Left = 185
      Top = 136
      Hint = 'Program'
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
      TabOrder = 0
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 132
      AutoSize = False
      Caption = 'Program'
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
      Height = 31
      Width = 135
      AnchorY = 148
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
      TabOrder = 2
      Height = 24
      Width = 160
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
    object Label1: TcxLabel
      Left = 17
      Top = 265
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Tindak Lanjut'
      ParentBiDiMode = False
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
      Height = 37
      Width = 135
      AnchorY = 284
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 272
      Hint = 'Tindak Lanjut'
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
      Height = 48
      Width = 298
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 83
      AutoSize = False
      Caption = 'Tugas Dan Tanggung Jawab'
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
      Height = 33
      Width = 152
      AnchorY = 100
    end
    object memtugas: TcxMemo
      Tag = 1
      Left = 185
      Top = 83
      Hint = 'Tugas Dan Tanggung Jawab'
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
      TabOrder = 7
      Height = 47
      Width = 298
    end
    object memrealisasi: TcxMemo
      Tag = 1
      Left = 185
      Top = 189
      Hint = 'Realisasi'
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 189
      AutoSize = False
      Caption = 'Realisasi'
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
      Height = 33
      Width = 152
      AnchorY = 206
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'Komite'
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
      AnchorY = 64
    end
    object cb_komite: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'Komite'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefKomite
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
    object cxLabel8: TcxLabel
      Left = 17
      Top = 240
      AutoSize = False
      Caption = 'Jumlah'
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
      AnchorY = 254
    end
    object jumlah: TcxCurrencyEdit
      Left = 185
      Top = 242
      Hint = 'Jumlah'
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
      TabOrder = 13
      Width = 121
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 333
    ExplicitTop = 333
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
  object dsMyQRefKomite: TMyDataSource
    DataSet = MyQRefKomite
    Left = 408
    Top = 8
  end
  object MyQRefKomite: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',kategori_komite)AS nama'
      'FROM `ref_komite`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 480
    Top = 8
    object MyQRefKomitesandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefKomitenama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
