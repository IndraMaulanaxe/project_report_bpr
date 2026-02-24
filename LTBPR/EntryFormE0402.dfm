inherited fr_EntryFormE0402: Tfr_EntryFormE0402
  Caption = 'Entry Form E0402 - Hubungan Keluarga Direksi Pemegang Saham'
  ClientHeight = 354
  ClientWidth = 510
  ExplicitWidth = 516
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 510
    ExplicitWidth = 510
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 510
    ExplicitHeight = 310
    Height = 310
    Width = 510
    object kode_komponen: TcxButtonEdit
      Left = 185
      Top = 23
      Hint = 'Kode Komponen'
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 83
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = dm_bpr1.ImageList1
      TabOrder = 0
      Height = 24
      Width = 160
    end
    object Label3: TcxLabel
      Left = 17
      Top = 22
      AutoSize = False
      Caption = 'Kode Komponen'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 34
    end
    object Label1: TcxLabel
      Left = 17
      Top = 238
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Tindak Lanjut'
      ParentBiDiMode = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 37
      Width = 135
      AnchorY = 257
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 245
      Hint = 'Tindak Lanjut'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 3
      Height = 48
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 53
      AutoSize = False
      Caption = 'NIK'
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
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 5
      Height = 24
      Width = 298
    end
    object memsaham: TcxMemo
      Tag = 1
      Left = 185
      Top = 191
      Hint = 'Hubungan Keluarga[III. Pemegang Saham]'
      HelpType = htKeyword
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 6
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
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 48
      Width = 168
      AnchorY = 202
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 310
    ExplicitTop = 310
    ExplicitWidth = 510
    ExplicitHeight = 44
    Height = 44
    Width = 510
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
      Left = 323
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 323
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 505
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 505
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 414
      Height = 34
      ExplicitLeft = 414
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 317
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
      Left = 311
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 311
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 305
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 305
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 299
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 299
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 293
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
    Width = 510
    ExplicitWidth = 510
    inherited IconClose: TLabel
      Left = 476
      ExplicitLeft = 771
    end
  end
  object memkomisaris: TcxMemo
    Tag = 1
    Left = 185
    Top = 137
    Hint = 'Hubungan Keluarga[II. Anggota Dewan Komisaris]'
    Properties.OnChange = MemKeteranganPropertiesChange
    TabOrder = 4
    Height = 48
    Width = 298
  end
  object cxLabel2: TcxLabel
    Left = 17
    Top = 123
    Hint = 'Hubungan Keuangan[II. Anggota Dewan Komisaris]'
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Hubungan  Keluarga'#13#10'[II. Anggota Komisaris]'
    ParentBiDiMode = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    Properties.WordWrap = True
    Transparent = True
    Height = 51
    Width = 162
    AnchorY = 149
  end
  object memdireksi: TcxMemo
    Tag = 1
    Left = 185
    Top = 83
    Hint = 'Hubungan Keluarga[I. Anggota Direksi]'
    Properties.OnChange = MemKeteranganPropertiesChange
    TabOrder = 6
    Height = 48
    Width = 298
  end
  object cxLabel4: TcxLabel
    Left = 17
    Top = 76
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'Hubungan  Keluarga'#13#10'[I. Anggota Direksi]'
    ParentBiDiMode = False
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
