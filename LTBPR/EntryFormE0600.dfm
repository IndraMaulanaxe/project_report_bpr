inherited fr_EntryFormE0600: Tfr_EntryFormE0600
  Caption = 'Entry Form E0600 - Rasio Gaji Tertinggi dan Gaji Terendah'
  ClientHeight = 205
  ClientWidth = 499
  ExplicitWidth = 505
  ExplicitHeight = 234
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 499
    ExplicitWidth = 510
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 510
    ExplicitHeight = 310
    Height = 161
    Width = 499
    object Label1: TcxLabel
      Left = 17
      Top = 92
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
      AnchorY = 111
    end
    object memtindak_lanjut: TcxMemo
      Tag = 1
      Left = 185
      Top = 99
      Hint = 'Tindak Lanjut'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 1
      Height = 48
      Width = 298
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 38
      AutoSize = False
      Caption = 'Kode Komponen'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 50
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 67
      AutoSize = False
      Caption = 'Rasio'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 27
      Width = 135
      AnchorY = 81
    end
    object cb_komponen: TcxLookupComboBox
      Tag = 1
      Left = 185
      Top = 38
      Hint = 'Kode Komponen'
      Properties.KeyFieldNames = 'sandi'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsMyQRefRasio
      TabOrder = 4
      Width = 298
    end
    object rasio: TcxCurrencyEdit
      Left = 185
      Top = 69
      Hint = 'Rasio'
      Properties.DisplayFormat = '0.00'
      TabOrder = 5
      Width = 121
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 161
    ExplicitTop = 310
    ExplicitWidth = 510
    ExplicitHeight = 44
    Height = 44
    Width = 499
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
      Left = 312
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 323
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 494
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 505
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 403
      Height = 34
      ExplicitLeft = 414
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 306
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
      Left = 300
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 311
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 294
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 305
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 288
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 299
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 282
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
    Width = 499
    ExplicitWidth = 510
    inherited IconClose: TLabel
      Left = 465
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
  object dsMyQRefRasio: TMyDataSource
    DataSet = MyQRefRasio
    Left = 392
    Top = 8
  end
  object MyQRefRasio: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT sandi, CONCAT(sandi,'#39' - '#39',keterangan)AS nama'
      'FROM `ref_rasio_gaji`'
      'ORDER BY sandi')
    Options.FieldOrigins = foNone
    Left = 464
    Top = 8
    object MyQRefRasiosandi: TStringField
      FieldName = 'sandi'
      Size = 3
    end
    object MyQRefRasionama: TStringField
      FieldName = 'nama'
      Size = 261
    end
  end
end
