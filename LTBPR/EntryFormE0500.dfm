inherited fr_EntryFormE0500: Tfr_EntryFormE0500
  Caption = 'Entry Form E0500 - Kebijakan Remunerasi dan Fasilitas Lain'
  ClientHeight = 288
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 561
    ExplicitWidth = 561
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 561
    ExplicitHeight = 244
    Height = 244
    Width = 561
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
    object cxLabel4: TcxLabel
      Left = 15
      Top = 169
      AutoSize = False
      Caption = 'Penjelasan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 184
    end
    object mempenjelasan: TcxMemo
      Tag = 1
      Left = 241
      Top = 173
      Hint = 'Penjelasan'
      ParentColor = True
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 2
      Height = 47
      Width = 298
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 81
      AutoSize = False
      Caption = 'Direksi (Jumlah Seluruh Rp)'
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
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      TabOrder = 4
      Width = 121
    end
    object komisaris_jml_orang: TcxCurrencyEdit
      Left = 242
      Top = 112
      Hint = 'Dewan Komisaris[Jumlah Orang]'
      EditValue = '0'
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      TabOrder = 5
      Width = 121
    end
    object cb_komponen: TcxLookupComboBox
      Tag = 1
      Left = 241
      Top = 23
      Hint = 'Kode Komponen'
      ParentColor = True
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefRemunerasi
      TabOrder = 6
      Width = 298
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 52
      AutoSize = False
      Caption = 'Direksi (Jumlah Orang)'
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
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      TabOrder = 8
      Width = 121
    end
    object komisaris_jml_seluruh: TcxCurrencyEdit
      Left = 242
      Top = 142
      Hint = 'Dewan Komisaris[Jumlah Keseluruhan (Rp)]'
      EditValue = '0'
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      TabOrder = 9
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 140
      AutoSize = False
      Caption = 'Komisaris (Jumlah Seluruh Rp)'
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
    Top = 244
    ExplicitTop = 244
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
