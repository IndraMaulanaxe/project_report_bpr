inherited fr_FormE0500: Tfr_FormE0500
  Caption = 'Entry Form E0500 - Kebijakan Remunerasi dan Fasilitas Lain'
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
      Height = 394
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
        DataController.DataSource = dsMyQE0500
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
        object cxGridDBTableView1keterangan: TcxGridDBColumn
          Caption = 'Nama Komponen'
          DataBinding.FieldName = 'keterangan'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1direksi_jumlah_orang: TcxGridDBColumn
          Caption = 'Direksi (Jumlah Orang)'
          DataBinding.FieldName = 'direksi_jumlah_orang'
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object cxGridDBTableView1direksi_jumlah_keseluruhan: TcxGridDBColumn
          Caption = 'Direksi (Jumlah Seluruh Rp)'
          DataBinding.FieldName = 'direksi_jumlah_keseluruhan'
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object cxGridDBTableView1dewan_komisaris_jumlah_orang: TcxGridDBColumn
          Caption = 'Komisaris (Jumlah Orang)'
          DataBinding.FieldName = 'dewan_komisaris_jumlah_orang'
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object cxGridDBTableView1dewan_komisaris_jumlah_keseluruhan: TcxGridDBColumn
          Caption = 'Komisaris (Jumlah Seluruh Rp)'
          DataBinding.FieldName = 'dewan_komisaris_jumlah_keseluruhan'
          HeaderAlignmentHorz = taCenter
          Width = 175
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
      Width = 0
      Enabled = False
      Visible = False
      ExplicitWidth = 0
    end
    inherited btlb_tools2: TcxButton
      Left = 102
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
      Left = 108
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
  object dsMyQE0500: TMyDataSource
    DataSet = MyQE0500
    Left = 336
    Top = 224
  end
  object MyQE0500: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT a.*, b.keterangan FROM ltbprk_e0500_kebijakan_berdasarkan' +
        '_rups a'
      'LEFT JOIN ref_remunerasi b ON a.kode_komponen=b.sandi')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQE0500flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 3
    end
    object MyQE0500kode_komponen: TStringField
      FieldName = 'kode_komponen'
      Size = 3
    end
    object MyQE0500direksi_jumlah_orang: TIntegerField
      FieldName = 'direksi_jumlah_orang'
    end
    object MyQE0500direksi_jumlah_keseluruhan: TFloatField
      FieldName = 'direksi_jumlah_keseluruhan'
    end
    object MyQE0500dewan_komisaris_jumlah_orang: TIntegerField
      FieldName = 'dewan_komisaris_jumlah_orang'
    end
    object MyQE0500dewan_komisaris_jumlah_keseluruhan: TFloatField
      FieldName = 'dewan_komisaris_jumlah_keseluruhan'
    end
    object MyQE0500keterangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
  end
end
