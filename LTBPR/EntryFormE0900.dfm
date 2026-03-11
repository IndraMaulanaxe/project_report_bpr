inherited fr_EntryFormE0900: Tfr_EntryFormE0900
  Caption = 'Entry Form E0900 - Permasalahan Hukum yang Dihadapi '
  ClientHeight = 224
  ClientWidth = 509
  ExplicitWidth = 515
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 509
    TabOrder = 1
    ExplicitWidth = 509
  end
  inherited PanelContent: TcxGroupBox
    TabOrder = 2
    ExplicitWidth = 509
    ExplicitHeight = 180
    Height = 180
    Width = 509
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
      Left = 15
      Top = 110
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
      AnchorY = 125
    end
    object mempenjelasan: TcxMemo
      Tag = 1
      Left = 185
      Top = 114
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
      TabOrder = 7
      Height = 47
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Jumlah Pidana'
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
    object jumlah_pidana: TcxCurrencyEdit
      Left = 185
      Top = 83
      Hint = 'Jumlah Pidana'
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
    object cb_komponen: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 23
      Hint = 'Kode Komponen'
      ParentColor = True
      ParentFont = False
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefHukum
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 52
      AutoSize = False
      Caption = 'Jumlah Perdata'
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
    object jumlah_perdata: TcxCurrencyEdit
      Left = 185
      Top = 53
      Hint = 'Jumlah Perdata'
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 180
    TabOrder = 3
    ExplicitTop = 180
    ExplicitWidth = 509
    ExplicitHeight = 44
    Height = 44
    Width = 509
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
      Left = 322
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 322
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 504
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 504
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 413
      Height = 34
      ExplicitLeft = 413
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 316
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 316
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
      Left = 310
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 310
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 304
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 304
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 298
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 298
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 292
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 292
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 509
    TabOrder = 0
    ExplicitWidth = 509
    inherited IconClose: TLabel
      Left = 475
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object MyQRefHukum: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM `ref_permasalahan_hukum`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 456
    Top = 40
    object MyQRefHukumsandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefHukumnama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
  object dsMyQRefHukum: TMyDataSource
    DataSet = MyQRefHukum
    Left = 384
    Top = 64
  end
end
