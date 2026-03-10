inherited fr_EntryFormE0201: Tfr_EntryFormE0201
  Caption = 
    'Entry Form E0201 - Pelaksanaan Tugas dan Tanggung Jawab Anggota ' +
    'Direksi '
  ClientHeight = 317
  ClientWidth = 518
  ExplicitWidth = 524
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 518
    ExplicitWidth = 518
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 518
    ExplicitHeight = 273
    Height = 273
    Width = 518
    object memlebih_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 190
      Hint = 'Penjesalan Lebih Lanjut'
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
      Top = 186
      AutoSize = False
      Caption = 'Penjelasan Lebih Lanjut'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 31
      Width = 135
      AnchorY = 202
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
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 34
    end
    object Label1: TcxLabel
      Left = 17
      Top = 129
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
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 37
      Width = 135
      AnchorY = 148
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 136
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
      Style.TextColor = clWhite
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
    object Label6: TcxLabel
      Left = 17
      Top = 56
      AutoSize = False
      Caption = 'NIK'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 17
      Width = 135
      AnchorY = 65
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
      TabOrder = 9
      Height = 24
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 273
    ExplicitTop = 273
    ExplicitWidth = 518
    ExplicitHeight = 44
    Height = 44
    Width = 518
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
      Left = 331
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 331
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 513
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 513
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 422
      Height = 34
      ExplicitLeft = 422
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 325
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 325
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
      Left = 319
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 319
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 313
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 313
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 307
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 307
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 301
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 301
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 518
    ExplicitWidth = 518
    inherited IconClose: TLabel
      Left = 484
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
