inherited fr_EntryFormE1000: Tfr_EntryFormE1000
  Caption = 
    'Entry Form E1000 - Transaksi yang Mengandung Benturan Kepentinga' +
    'n '
  ClientHeight = 519
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 493
    ExplicitWidth = 509
  end
  inherited PanelContent: TcxGroupBox
    ExplicitTop = -1
    ExplicitWidth = 509
    ExplicitHeight = 526
    Height = 475
    Width = 493
    object cxGroupBox1: TcxGroupBox
      Left = 17
      Top = 52
      Caption = 'Pihak Yang Memiliki'
      Style.TextColor = clWhite
      TabOrder = 0
      Height = 118
      Width = 466
      object cxLabel1: TcxLabel
        Left = 6
        Top = 20
        AutoSize = False
        Caption = 'Nama'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 32
      end
      object nama_milik: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 21
        Hint = 'Nama Pihak Yang Memiliki'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Height = 24
        Width = 281
      end
      object cxLabel3: TcxLabel
        Left = 6
        Top = 50
        AutoSize = False
        Caption = 'Jabatan'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 62
      end
      object jabatan_milik: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 51
        Hint = 'Jabatan Pihak Yang Memiliki'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Height = 24
        Width = 281
      end
      object cxLabel6: TcxLabel
        Left = 6
        Top = 80
        AutoSize = False
        Caption = 'NIK'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 92
      end
      object nik_milik: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 81
        Hint = 'NIK Nama Pihak Yang Memiliki'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 5
        Height = 24
        Width = 281
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 17
      Top = 176
      Caption = 'Pengambil Keputusan'
      Style.TextColor = clWhite
      TabOrder = 1
      Height = 118
      Width = 466
      object cxLabel7: TcxLabel
        Left = 6
        Top = 20
        AutoSize = False
        Caption = 'Nama'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 32
      end
      object nama_putusan: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 21
        Hint = 'Nama Pengambil Keputusan'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Height = 24
        Width = 281
      end
      object cxLabel8: TcxLabel
        Left = 6
        Top = 50
        AutoSize = False
        Caption = 'Jabatan'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 62
      end
      object jabatan_putusan: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 51
        Hint = 'Jabatan Pengambil Keputusan'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Height = 24
        Width = 281
      end
      object cxLabel9: TcxLabel
        Left = 6
        Top = 80
        AutoSize = False
        Caption = 'NIK'
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        Height = 24
        Width = 135
        AnchorY = 92
      end
      object nik_putusan: TcxTextEdit
        Tag = 1
        Left = 168
        Top = 81
        Hint = 'NIK Nama Pengambil Keputusan'
        TabStop = False
        AutoSize = False
        Properties.Alignment.Horz = taLeftJustify
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 5
        Height = 24
        Width = 281
      end
    end
    object cxLabel2: TcxLabel
      Left = 17
      Top = 300
      AutoSize = False
      Caption = 'Jenis Transaksi'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 135
      AnchorY = 312
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 410
      AutoSize = False
      Caption = 'Penjelasan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 425
    end
    object frekuesi: TcxLabel
      Left = 17
      Top = 329
      AutoSize = False
      Caption = 'Nilai Transaksi'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 27
      Width = 135
      AnchorY = 343
    end
    object jenis_trans: TcxTextEdit
      Tag = 1
      Left = 185
      Top = 301
      Hint = 'Jenis Transaksi'
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
      TabOrder = 6
      Height = 24
      Width = 152
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
    object mempenjelasan: TcxMemo
      Tag = 1
      Left = 185
      Top = 414
      Hint = 'Penjelasan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 8
      Height = 47
      Width = 298
    end
    object nilai_trans: TcxCurrencyEdit
      Left = 185
      Top = 331
      Hint = 'Nilai Transaksi'
      Properties.DisplayFormat = '#,##0'
      TabOrder = 9
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 17
      Top = 357
      AutoSize = False
      Caption = 'Keterangan'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      Height = 30
      Width = 135
      AnchorY = 372
    end
    object memketer: TcxMemo
      Tag = 1
      Left = 185
      Top = 361
      Hint = 'Keterangan'
      Properties.OnChange = MemKeteranganPropertiesChange
      TabOrder = 11
      Height = 47
      Width = 298
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 475
    ExplicitTop = 180
    ExplicitWidth = 509
    ExplicitHeight = 44
    Height = 44
    Width = 493
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
      Left = 306
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 322
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 488
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 504
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 397
      Height = 34
      ExplicitLeft = 413
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 300
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
      Left = 294
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 310
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 288
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 304
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 282
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 298
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 276
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
    Width = 493
    ExplicitWidth = 509
    inherited IconClose: TLabel
      Left = 459
      ExplicitLeft = 771
    end
  end
  object MyDataSource1: TMyDataSource
    Left = 392
    Top = 328
  end
end
