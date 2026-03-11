inherited fr_EntryFormE0800: Tfr_EntryFormE0800
  Caption = 
    'Entry Form E0800 - Jumlah Penyimpangan Internal (Internal Fraud)' +
    ' '
  ClientHeight = 397
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 426
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 561
    ExplicitWidth = 561
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 561
    ExplicitHeight = 353
    Height = 353
    Width = 561
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
    object cxLabel4: TcxLabel
      Left = 17
      Top = 287
      AutoSize = False
      Caption = 'Penjelasan'
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
      AnchorY = 302
    end
    object mempenjelasan: TcxMemo
      Tag = 1
      Left = 243
      Top = 291
      Hint = 'Penjelasan'
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
      TabOrder = 13
      Height = 47
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Anggota Direksi Tahun Laporan'
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
      Width = 183
      AnchorY = 95
    end
    object direksi_thn_laporan: TcxCurrencyEdit
      Left = 241
      Top = 83
      Hint = 'Anggota Direksi Tahun Laporan'
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
      TabOrder = 6
      Width = 121
    end
    object komisaris_thn_lalu: TcxCurrencyEdit
      Left = 242
      Top = 112
      Hint = 'Anggota Komisaris Tahun Lalu'
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
      TabOrder = 7
      Width = 121
    end
    object cb_komponen: TcxLookupComboBox
      Tag = 1
      Left = 241
      Top = 23
      Hint = 'Kode Komponen'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefPenyimpangan
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindow
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 298
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 52
      AutoSize = False
      Caption = 'Anggota Direksi Tahun Lalu'
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
      Width = 176
      AnchorY = 66
    end
    object direksi_thn_lalu: TcxCurrencyEdit
      Left = 241
      Top = 53
      Hint = 'Anggota Direksi Tahun Lalu'
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
      TabOrder = 5
      Width = 121
    end
    object komisaris_thn_laporan: TcxCurrencyEdit
      Left = 242
      Top = 142
      Hint = 'Anggota Komisaris Tahun Laporan'
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
      TabOrder = 8
      Width = 121
    end
    object tidak_tetap_thn_laporan: TcxCurrencyEdit
      Left = 243
      Top = 261
      Hint = 'Pegawai Tidak Tetap Tahun Laporan'
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
      TabOrder = 12
      Width = 121
    end
    object tidak_tetap_thn_lalu: TcxCurrencyEdit
      Left = 243
      Top = 231
      Hint = 'Pegawai Tidak Tetap Tahun Lalu'
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
      TabOrder = 11
      Width = 121
    end
    object tetap_thn_laporan: TcxCurrencyEdit
      Left = 243
      Top = 202
      Hint = 'Pegawai Tetap Tahun Laporan'
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
    object tetap_thn_lalu: TcxCurrencyEdit
      Left = 242
      Top = 172
      Hint = 'Pegawai Tetap Tahun Lalu'
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
      TabOrder = 9
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 140
      AutoSize = False
      Caption = 'Anggota Komisaris Tahun Laporan'
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
      Width = 219
      AnchorY = 154
    end
    object cxLabel5: TcxLabel
      Left = 17
      Top = 111
      AutoSize = False
      Caption = 'Anggota Komisaris Tahun Lalu'
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
      Width = 209
      AnchorY = 125
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 200
      AutoSize = False
      Caption = 'Pegawai Tetap Tahun Laporan'
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
      Width = 200
      AnchorY = 214
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 170
      AutoSize = False
      Caption = 'Pegawai Tetap Tahun Lalu'
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
      Width = 219
      AnchorY = 184
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 259
      AutoSize = False
      Caption = 'Pegawai Tidak Tetap Tahun Laporan'
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
      Width = 219
      AnchorY = 273
    end
    object cxLabel7: TcxLabel
      Left = 17
      Top = 229
      AutoSize = False
      Caption = 'Pegawai Tidak Tetap Tahun Lalu'
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
      Width = 219
      AnchorY = 243
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 353
    ExplicitTop = 353
    ExplicitWidth = 561
    ExplicitHeight = 44
    Height = 44
    Width = 561
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
      Left = 374
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 374
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 556
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 556
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 465
      Height = 34
      ExplicitLeft = 465
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 368
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 368
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
      Left = 362
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 362
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 356
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 356
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 350
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 350
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 344
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 344
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 561
    ExplicitWidth = 561
    inherited IconClose: TLabel
      Left = 527
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object MyQRefPenyimpangan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM `ref_jumlah_penyimpangan`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 488
    Top = 64
    object MyQRefPenyimpangansandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefPenyimpangannama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefPenyimpangan: TMyDataSource
    DataSet = MyQRefPenyimpangan
    Left = 408
    Top = 64
  end
end
