inherited fr_EntryFormE0500: Tfr_EntryFormE0500
  Caption = 'Entry Form E0500 - Kebijakan Remunerasi dan Fasilitas Lain'
  ClientHeight = 220
  ClientWidth = 553
  ExplicitWidth = 559
  ExplicitHeight = 249
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 553
    ExplicitWidth = 553
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 553
    ExplicitHeight = 176
    Height = 176
    Width = 553
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
    object cxLabel3: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Direksi (Jumlah Seluruh Rp)'
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
    object direksi_jml_seluruh: TcxCurrencyEdit
      Left = 241
      Top = 83
      Hint = 'Direksi[Jumlah Keseluruhan (Rp)]'
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
      TabOrder = 3
      Width = 121
    end
    object komisaris_jml_orang: TcxCurrencyEdit
      Left = 242
      Top = 112
      Hint = 'Dewan Komisaris[Jumlah Orang]'
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
      Properties.ListSource = dsMyQRefRemunerasi
      Properties.OnChange = cb_komponenPropertiesChange
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 52
      AutoSize = False
      Caption = 'Direksi (Jumlah Orang)'
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
    object direksi_jml_orang: TcxCurrencyEdit
      Left = 242
      Top = 53
      Hint = 'Direksi[Jumlah Orang]'
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
      TabOrder = 4
      Width = 121
    end
    object komisaris_jml_seluruh: TcxCurrencyEdit
      Left = 242
      Top = 142
      Hint = 'Dewan Komisaris[Jumlah Keseluruhan (Rp)]'
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
    object cxLabel2: TcxLabel
      Left = 17
      Top = 140
      AutoSize = False
      Caption = 'Komisaris (Jumlah Seluruh Rp)'
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
      Caption = 'Komisaris (Jumlah Orang)'
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 176
    ExplicitTop = 176
    ExplicitWidth = 553
    ExplicitHeight = 44
    Height = 44
    Width = 553
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
      Left = 366
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 366
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 548
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 548
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 457
      Height = 34
      ExplicitLeft = 457
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 360
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 360
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
      Left = 354
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 354
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 348
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 348
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 342
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 342
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 336
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 336
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 553
    ExplicitWidth = 553
    inherited IconClose: TLabel
      Left = 519
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object MyQRefRemunerasi: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM `ref_remunerasi`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 488
    Top = 64
    object MyQRefRemunerasisandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefRemunerasinama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefRemunerasi: TMyDataSource
    DataSet = MyQRefRemunerasi
    Left = 408
    Top = 64
  end
end
