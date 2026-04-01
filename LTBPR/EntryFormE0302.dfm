inherited fr_EntryFormE0302: Tfr_EntryFormE0302
  Caption = 'Entry Form E0302 - Kepemilikan Saham Pada Kelompok Usaha BPR'
  ClientHeight = 240
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 489
    ExplicitWidth = 576
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 576
    ExplicitHeight = 255
    Height = 196
    Width = 489
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
      TabOrder = 0
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
    object cxLabel2: TcxLabel
      Left = 17
      Top = 83
      AutoSize = False
      Caption = 'Nama Kelompok Usaha'
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
    object memkelompok: TcxMemo
      Tag = 1
      Left = 185
      Top = 83
      Hint = 'Nama Kelompok Usaha BPR'
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
      TabOrder = 2
      Height = 47
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'NIK'
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
    object cxLabel8: TcxLabel
      Left = 17
      Top = 164
      AutoSize = False
      Caption = 'Kepemilikan Tahun Lalu (%)'
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
      AnchorY = 178
    end
    object persen_sebelumya: TcxCurrencyEdit
      Left = 185
      Top = 166
      Hint = 'Persentase Kepemilikan Tahun Sebelumnya(%)'
      EditValue = 0.100000000000000000
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.##'
      Properties.MaxValue = 100.000000000000000000
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 134
      AutoSize = False
      Caption = 'Kepemilikan (%)'
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
      AnchorY = 148
    end
    object persen: TcxCurrencyEdit
      Left = 185
      Top = 136
      Hint = 'Persentase Kepemilikan (%)'
      EditValue = 0.100000000000000000
      ParentColor = True
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.##'
      Properties.MaxValue = 100.000000000000000000
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
    object nik: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'NIK'
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
      TabOrder = 1
      Height = 24
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 196
    ExplicitTop = 255
    ExplicitWidth = 576
    ExplicitHeight = 44
    Height = 44
    Width = 489
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
      Left = 302
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 389
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 484
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 571
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 393
      Height = 34
      ExplicitLeft = 480
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 296
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
      Left = 290
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 377
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 284
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 371
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 278
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 365
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 272
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
    Width = 489
    ExplicitWidth = 576
    inherited IconClose: TLabel
      Left = 455
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
