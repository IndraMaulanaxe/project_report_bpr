inherited fr_EntryFormE0402: Tfr_EntryFormE0402
  Caption = 'Entry Form E0402 - Hubungan Keluarga Direksi Pemegang Saham'
  ClientHeight = 293
  ClientWidth = 492
  ExplicitWidth = 498
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 492
    ExplicitWidth = 510
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 510
    ExplicitHeight = 310
    Height = 249
    Width = 492
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
      TabOrder = 2
      Height = 24
      Width = 298
    end
    object memsaham: TcxMemo
      Tag = 1
      Left = 185
      Top = 191
      Hint = 'Hubungan Keluarga[III. Pemegang Saham]'
      HelpType = htKeyword
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
    object cxLabel1: TcxLabel
      Left = 17
      Top = 178
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Hubungan Keluarga'#13#10'[III. Pemegang Saham]'
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
      Height = 48
      Width = 168
      AnchorY = 202
    end
    object memkomisaris: TcxMemo
      Tag = 1
      Left = 185
      Top = 137
      Hint = 'Hubungan Keluarga[II. Anggota Dewan Komisaris]'
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
      Height = 48
      Width = 298
    end
    object memdireksi: TcxMemo
      Tag = 1
      Left = 185
      Top = 83
      Hint = 'Hubungan Keluarga[I. Anggota Direksi]'
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
      TabOrder = 4
      Height = 48
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 249
    ExplicitTop = 310
    ExplicitWidth = 510
    ExplicitHeight = 44
    Height = 44
    Width = 492
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
      Left = 305
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 323
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 487
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 505
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 396
      Height = 34
      ExplicitLeft = 414
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 299
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 317
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
      Left = 293
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 311
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 287
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 305
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 281
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 299
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 275
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 293
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 492
    ExplicitWidth = 510
    inherited IconClose: TLabel
      Left = 458
      ExplicitLeft = 771
    end
  end
  object cxLabel2: TcxLabel
    Left = 17
    Top = 123
    Hint = 'Hubungan Keuangan[II. Anggota Dewan Komisaris]'
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Hubungan  Keluarga'#13#10'[II. Anggota Komisaris]'
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
    Height = 51
    Width = 162
    AnchorY = 149
  end
  object cxLabel4: TcxLabel
    Left = 17
    Top = 76
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Hubungan  Keluarga'#13#10'[I. Anggota Direksi]'
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
    AnchorY = 95
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
