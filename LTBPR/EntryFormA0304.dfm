inherited fr_EntryFormA0304: Tfr_EntryFormA0304
  Caption = 'Entry Form A0304 -  Penjelasan NPL '
  ClientHeight = 210
  ClientWidth = 558
  ExplicitWidth = 564
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 558
    ExplicitWidth = 558
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 558
    ExplicitHeight = 166
    Height = 166
    Width = 558
    object cxLabel8: TcxLabel
      Left = 17
      Top = 50
      AutoSize = False
      Caption = 'Uraian'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 28
      Width = 135
      AnchorY = 64
    end
    object memuraian: TcxMemo
      Tag = 1
      Left = 185
      Top = 53
      Hint = 'Uraian'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 1
      Height = 47
      Width = 298
    end
    object memketerangan: TcxMemo
      Tag = 1
      Left = 185
      Top = 106
      Hint = 'Keterangan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 2
      Height = 47
      Width = 298
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 102
      AutoSize = False
      Caption = 'Keterangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 117
    end
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
      TabOrder = 4
      Height = 24
      Width = 103
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
  end
  inherited PanelFooter: TcxGroupBox
    Top = 166
    ExplicitTop = 166
    ExplicitWidth = 558
    ExplicitHeight = 44
    Height = 44
    Width = 558
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
      Left = 371
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 371
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 553
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 553
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 462
      Height = 34
      ExplicitLeft = 462
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 365
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 365
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
      Left = 359
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 359
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 353
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 353
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 347
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 347
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 341
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 341
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 558
    ExplicitWidth = 558
    inherited IconClose: TLabel
      Left = 524
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
