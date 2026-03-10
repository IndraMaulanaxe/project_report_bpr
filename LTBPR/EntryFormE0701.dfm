inherited fr_EntryFormE0701: Tfr_EntryFormE0701
  Caption = 'Entry Form E0701 - Pelaksanaan Rapat dalam 1 (satu) Tahun '
  ClientHeight = 273
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 302
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 498
    ExplicitWidth = 498
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 498
    ExplicitHeight = 229
    Height = 229
    Width = 498
    object cxLabel8: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Jumlah Peserta'
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
      AnchorY = 95
    end
    object memmateri: TcxMemo
      Tag = 1
      Left = 185
      Top = 113
      Hint = 'Materi Pembahasan'
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
      TabOrder = 1
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 109
      AutoSize = False
      Caption = 'Materi Pembahasan'
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
    object tanggal: TcxDateEdit
      Left = 185
      Top = 53
      Hint = 'Tanggal'
      ParentColor = True
      ParentFont = False
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
    object cxLabel4: TcxLabel
      Left = 17
      Top = 162
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
      AnchorY = 177
    end
    object mempenjelasan: TcxMemo
      Tag = 1
      Left = 185
      Top = 166
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
      TabOrder = 8
      Height = 47
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 229
    ExplicitTop = 229
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
  object jumlah_peserta: TcxCurrencyEdit
    Left = 185
    Top = 83
    Hint = 'Jumlah Peserta'
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
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
