inherited fr_FormDSJ0004: Tfr_FormDSJ0004
  Caption = 'Form 0004 -  Entry Daftar Data Simpanan Join'
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
    Height = 374
    Width = 861
    object cxgGrid: TcxGrid
      Left = 2
      Top = 2
      Width = 857
      Height = 370
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      ExplicitHeight = 394
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
        DataController.DataSource = dsMyQDSJ0004
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
        object cxGridDBTableView1nasabah_id: TcxGridDBColumn
          Caption = 'Nasabah ID'
          DataBinding.FieldName = 'nasabah_id'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTableView1no_rekening: TcxGridDBColumn
          Caption = 'Nomor Rekening'
          DataBinding.FieldName = 'no_rekening'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTableView1persentase_kepemilikan: TcxGridDBColumn
          Caption = 'Persentase Kepemilikan'
          DataBinding.FieldName = 'persentase_kepemilikan'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
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
      Width = 85
      Caption = 'Import'
      OnClick = btlb_tools1Click
      ExplicitWidth = 85
    end
    inherited btlb_tools2: TcxButton
      Left = 187
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 102
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
      Left = 193
      Width = 0
      Enabled = False
      Visible = False
      ExplicitLeft = 108
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
  end
  inherited PanelTopSystem: TPanel
    Width = 861
    ExplicitWidth = 861
    inherited IconClose: TLabel
      Left = 827
      ExplicitLeft = 724
    end
  end
  object sGauge1: TcxProgressBar
    Left = 0
    Top = 374
    Align = alBottom
    Properties.AnimationPath = cxapPingPong
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = clWindowText
    Properties.ShowTextStyle = cxtsText
    TabOrder = 4
    Visible = False
    ExplicitTop = 377
    Width = 861
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
  object dsMyQDSJ0004: TMyDataSource
    DataSet = MyQDSJ0004
    Left = 392
    Top = 272
  end
  object MyQDSJ0004: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `persentase_kepemilikan`'
      'FROM `lps_dk_f0004`'
      '&WHERE')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDSJ0004flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDSJ0004nasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDSJ0004no_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDSJ0004persentase_kepemilikan: TFloatField
      FieldName = 'persentase_kepemilikan'
    end
  end
  object MyQImport: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SET @pv_per_tgl = &TGL;'
      ''
      
        'SELECT nasabah_id, no_rekening, '#39'50'#39' AS persentase_kepemilikan F' +
        'ROM tab_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL '
      
        'SELECT nasabah_id_join, no_rekening, '#39'50'#39' AS persentase_kepemili' +
        'kan FROM tab_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL'
      
        'SELECT nasabah_id, no_rekening, '#39'50'#39' AS persentase_kepemilikan F' +
        'ROM dep_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39')'
      'UNION ALL'
      
        'SELECT nasabah_id_join, no_rekening, '#39'50'#39' AS persentase_kepemili' +
        'kan FROM dep_nominatif '
      'WHERE tgl_laporan = @pv_per_tgl AND type_join IN ('#39'OR'#39','#39'AND'#39');')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
      end>
    object MyQImportnasabah_id: TStringField
      FieldName = 'nasabah_id'
      FixedChar = True
    end
    object MyQImportno_rekening: TStringField
      FieldName = 'no_rekening'
      FixedChar = True
    end
    object MyQImportpersentase_kepemilikan: TStringField
      FieldName = 'persentase_kepemilikan'
      Size = 2
    end
  end
end
