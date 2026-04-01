inherited fr_EntryFormE0202: Tfr_EntryFormE0202
  Caption = 
    'Entry Form E0202 - Pelaksanaan Tugas dan Tanggung Jawab Anggota ' +
    'Dewan Komisaris'
  ClientHeight = 182
  ClientWidth = 494
  ExplicitWidth = 500
  ExplicitHeight = 211
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 494
    ExplicitWidth = 576
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 576
    ExplicitHeight = 257
    Height = 138
    Width = 494
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
      TabOrder = 1
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
      Style.Font.Color = clWhite
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
      Caption = 'Tugas Dan Tanggung Jawab'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
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
      TabOrder = 3
      Height = 47
      Width = 298
    end
    object Label6: TcxLabel
      Left = 17
      Top = 56
      AutoSize = False
      Caption = 'NIK'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
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
      AnchorY = 66
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 138
    ExplicitTop = 257
    ExplicitWidth = 576
    ExplicitHeight = 44
    Height = 44
    Width = 494
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
      Left = 307
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 389
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 489
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 571
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 398
      Height = 34
      ExplicitLeft = 480
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 301
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
      Left = 295
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 377
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 289
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 371
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 283
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 365
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 277
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
    Width = 494
    ExplicitWidth = 576
    inherited IconClose: TLabel
      Left = 460
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
