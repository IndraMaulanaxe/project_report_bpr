inherited fr_FormE0701: Tfr_FormE0701
  Caption = 'Form E0701 - Pelaksanaan Rapat dalam 1 (satu) Tahun'
  ClientHeight = 440
  ClientWidth = 861
  OnShow = FormShow
  ExplicitWidth = 867
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 861
    ExplicitWidth = 861
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 861
    ExplicitHeight = 398
    Height = 398
    Width = 861
    object cxgGrid: TcxGrid
      Left = 2
      Top = 2
      Width = 857
      Height = 278
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsMyQE0701
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.HideSelection = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.Indicator = True
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object cxGridDBTableView1flag_detail: TcxGridDBColumn
          DataBinding.FieldName = 'flag_detail'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTableView1kode_komponen: TcxGridDBColumn
          Caption = 'Kode Komponen'
          DataBinding.FieldName = 'kode_komponen'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tanggal_rapat: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal_rapat'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTableView1jumlah_peserta: TcxGridDBColumn
          Caption = 'Jumlah Peserta'
          DataBinding.FieldName = 'jumlah_peserta'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1topik_materi_pembahasan: TcxGridDBColumn
          Caption = 'Topik Materi'
          DataBinding.FieldName = 'topik_materi_pembahasan'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGBFooter: TcxGroupBox
      Left = 2
      Top = 280
      Align = alBottom
      Caption = 'Footer'
      Style.TextColor = clWhite
      TabOrder = 1
      Visible = False
      Height = 116
      Width = 857
      object cxGroupBox2: TcxGroupBox
        Left = 2
        Top = 70
        Align = alBottom
        PanelStyle.Active = True
        ParentBackground = False
        TabOrder = 0
        OnMouseDown = bgMouseDown
        OnMouseMove = bgMouseMove
        OnMouseUp = bgMouseUp
        Height = 44
        Width = 853
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Refresh'
          Align = alLeft
          Caption = 'Refresh'
          Enabled = False
          TabOrder = 0
          Visible = False
        end
        object cxButton2: TcxButton
          AlignWithMargins = True
          Left = 11
          Top = 5
          Width = 0
          Height = 34
          Align = alLeft
          Caption = 'Tools 1'
          Enabled = False
          TabOrder = 1
          Visible = False
        end
        object cxButton3: TcxButton
          AlignWithMargins = True
          Left = 17
          Top = 5
          Width = 0
          Height = 34
          Align = alLeft
          Caption = 'Tools 2'
          Enabled = False
          TabOrder = 2
          Visible = False
        end
        object cxButton4: TcxButton
          AlignWithMargins = True
          Left = 757
          Top = 5
          Width = 85
          Height = 34
          Hint = 'Simpan'
          Align = alRight
          Caption = 'Simpan'
          OptionsImage.ImageIndex = 78
          TabOrder = 3
          OnClick = cxButton4Click
        end
        object cxButton5: TcxButton
          AlignWithMargins = True
          Left = 848
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Keluar'
          Align = alRight
          Caption = 'Keluar'
          Enabled = False
          OptionsImage.ImageIndex = 78
          TabOrder = 4
          Visible = False
          OnClick = btlb_CloseClick
        end
        object cxButton7: TcxButton
          AlignWithMargins = True
          Left = 751
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Cetak'
          Align = alRight
          Caption = 'Cetak'
          Enabled = False
          OptionsImage.ImageIndex = 78
          TabOrder = 5
          Visible = False
        end
        object cxButton8: TcxButton
          AlignWithMargins = True
          Left = 23
          Top = 5
          Width = 0
          Height = 34
          Align = alLeft
          Caption = 'Tools 3'
          Enabled = False
          TabOrder = 6
          Visible = False
        end
        object cxButton9: TcxButton
          AlignWithMargins = True
          Left = 745
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Hapus'
          Align = alRight
          Caption = 'Hapus'
          Enabled = False
          OptionsImage.ImageIndex = 78
          TabOrder = 7
          Visible = False
        end
        object cxButton10: TcxButton
          AlignWithMargins = True
          Left = 739
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Koreksi'
          Align = alRight
          Caption = 'Koreksi'
          Enabled = False
          OptionsImage.ImageIndex = 78
          TabOrder = 8
          Visible = False
        end
        object cxButton11: TcxButton
          AlignWithMargins = True
          Left = 733
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Tambah'
          Align = alRight
          Caption = 'Tambah'
          Enabled = False
          OptionsImage.ImageIndex = 78
          TabOrder = 9
          Visible = False
        end
        object cxButton12: TcxButton
          AlignWithMargins = True
          Left = 727
          Top = 5
          Width = 0
          Height = 34
          Hint = 'Pilih'
          Align = alRight
          Caption = 'Pilih'
          Enabled = False
          TabOrder = 10
          Visible = False
        end
      end
      object cxLabel10: TcxLabel
        Left = 13
        Top = 6
        AutoSize = False
        Caption = 'Penjelasan'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindow
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.WordWrap = True
        Transparent = True
        Height = 30
        Width = 135
        AnchorY = 21
      end
      object memtindak_lanjut_footer: TcxMemo
        Tag = 1
        Left = 180
        Top = 17
        Hint = 'Penjelasan'
        ParentColor = True
        Style.TextColor = clWindow
        TabOrder = 2
        Height = 47
        Width = 664
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 398
    ExplicitTop = 398
    ExplicitWidth = 861
    Width = 861
    inherited btlb_Refresh: TcxButton
      OnClick = btlb_RefreshClick
    end
    inherited btlb_tools1: TcxButton
      Left = 187
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 187
      ExplicitWidth = 0
    end
    inherited btlb_tools2: TcxButton
      Left = 193
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 193
      ExplicitWidth = 0
    end
    inherited btlb_Save: TcxButton
      Left = 486
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 486
      ExplicitWidth = 0
    end
    inherited btlb_Close: TcxButton
      Left = 771
      ExplicitLeft = 771
    end
    inherited btlb_Cancel: TcxButton
      Left = 492
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 492
      ExplicitWidth = 0
    end
    inherited btlb_Print: TcxButton
      Left = 480
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 480
      ExplicitWidth = 0
    end
    inherited btlb_tools3: TcxButton
      Left = 199
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 199
      ExplicitWidth = 0
    end
    inherited btlb_Delete: TcxButton
      Left = 680
      OnClick = btlb_DeleteClick
      ExplicitLeft = 680
    end
    inherited btlb_Edit: TcxButton
      Left = 589
      OnClick = btlb_EditClick
      ExplicitLeft = 589
    end
    inherited btlb_Insert: TcxButton
      Left = 498
      OnClick = btlb_InsertClick
      ExplicitLeft = 498
    end
    inherited btlb_Pilih: TcxButton
      Left = 474
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 474
      ExplicitWidth = 0
    end
    object btlb_Footer: TcxButton
      AlignWithMargins = True
      Left = 96
      Top = 5
      Width = 85
      Height = 32
      Hint = 'Refresh'
      Align = alLeft
      Caption = 'Footer'
      TabOrder = 12
      OnClick = btlb_FooterClick
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 861
    ExplicitWidth = 861
    inherited IconClose: TLabel
      Left = 827
      ExplicitLeft = 724
    end
  end
  object MyQuery1: TMyQuery
    SQL.Strings = (
      'SELECT COUNT(*) AS jml, '
      '  SUM(baki_debet) AS bd, '
      '  SUM(`provisi_belum_amortisasi`) AS provisi,  '
      '  SUM(`biaya_transaksi_belum_amortisasi`) AS biaya, '
      '  SUM(`ppap_dibentuk`) AS ppapwd, '
      '  SUM(IF(kualitas IN ('#39'1'#39','#39'2'#39'), `pyad`, 0)) AS pyad,'
      
        '  SUM(baki_debet-`provisi_belum_amortisasi`+`biaya_transaksi_bel' +
        'um_amortisasi`-`pendapatan_bunga_ditangguhkan`-`cadangan_kerugia' +
        'n`) AS bd_netto,'
      '  SUM(IF(kualitas IN ('#39'3'#39','#39'4'#39','#39'5'#39'), pad, 0)) as pbdp'
      'FROM `apolo_f0600`'
      '&WHERE')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 88
    Top = 248
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQuery1jml: TLargeintField
      FieldName = 'jml'
    end
    object MyQuery1bd: TFloatField
      FieldName = 'bd'
    end
    object MyQuery1provisi: TFloatField
      FieldName = 'provisi'
    end
    object MyQuery1biaya: TFloatField
      FieldName = 'biaya'
    end
    object MyQuery1ppapwd: TFloatField
      FieldName = 'ppapwd'
    end
    object MyQuery1pyad: TFloatField
      FieldName = 'pyad'
    end
    object MyQuery1bd_netto: TFloatField
      FieldName = 'bd_netto'
    end
    object MyQuery1pbdp: TFloatField
      FieldName = 'pbdp'
    end
  end
  object dsMyQE0701: TMyDataSource
    DataSet = MyQE0701
    Left = 312
    Top = 224
  end
  object MyQE0701: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'select * from ltbprk_e0701_pelaksanaan_rapat_dalam_setahun')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQE0701flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 3
    end
    object MyQE0701kode_komponen: TStringField
      FieldName = 'kode_komponen'
      Size = 12
    end
    object MyQE0701tanggal_rapat: TDateField
      FieldName = 'tanggal_rapat'
    end
    object MyQE0701jumlah_peserta: TIntegerField
      FieldName = 'jumlah_peserta'
    end
    object MyQE0701topik_materi_pembahasan: TStringField
      FieldName = 'topik_materi_pembahasan'
      Size = 2000
    end
  end
end
