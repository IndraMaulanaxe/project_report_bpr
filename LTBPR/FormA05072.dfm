inherited fr_FormA05072: Tfr_FormA05072
  Caption = 'Form A05072 - Kegiatan Pengembangan'
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
        DataController.DataSource = dsMyQA05072
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
        object cxGridDBTableView1kegiatan_pengembangan: TcxGridDBColumn
          Caption = 'Kegiatan'
          DataBinding.FieldName = 'kegiatan_pengembangan'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1tanggal_pelaksanaan: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal_pelaksanaan'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1pihak_pelaksana: TcxGridDBColumn
          Caption = 'Pelaksana'
          DataBinding.FieldName = 'pihak_pelaksana'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1kategori_peserta: TcxGridDBColumn
          Caption = 'Peserta'
          DataBinding.FieldName = 'kategori_peserta'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1jumlah_peserta: TcxGridDBColumn
          Caption = 'Jumlah Peserta'
          DataBinding.FieldName = 'jumlah_peserta'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1uraian_kegiatan: TcxGridDBColumn
          Caption = 'Uraian'
          DataBinding.FieldName = 'uraian_kegiatan'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          HeaderAlignmentHorz = taCenter
          Width = 200
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
  object dsMyQA05072: TMyDataSource
    DataSet = MyQA05072
    Left = 312
    Top = 224
  end
  object MyQA05072: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'select * from ltbprk_a05072_kegiatan_pengembangan')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQA05072flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 3
    end
    object MyQA05072kode_komponen: TStringField
      FieldName = 'kode_komponen'
      Size = 5
    end
    object MyQA05072kegiatan_pengembangan: TStringField
      FieldName = 'kegiatan_pengembangan'
      Size = 2000
    end
    object MyQA05072tanggal_pelaksanaan: TDateField
      FieldName = 'tanggal_pelaksanaan'
    end
    object MyQA05072pihak_pelaksana: TStringField
      FieldName = 'pihak_pelaksana'
      Size = 2
    end
    object MyQA05072kategori_peserta: TStringField
      FieldName = 'kategori_peserta'
      Size = 2
    end
    object MyQA05072jumlah_peserta: TIntegerField
      FieldName = 'jumlah_peserta'
    end
    object MyQA05072uraian_kegiatan: TStringField
      FieldName = 'uraian_kegiatan'
      Size = 2000
    end
    object MyQA05072keterangan: TStringField
      FieldName = 'keterangan'
      Size = 2000
    end
  end
end
