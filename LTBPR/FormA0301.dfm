inherited fr_FormA0301: Tfr_FormA0301
  Caption = 'Form A0301 - Riwayat Pendirian BPR'
  ClientHeight = 440
  ClientWidth = 861
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
      ExplicitLeft = 1
      ExplicitTop = 3
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
        DataController.DataSource = dsMyQA0301
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
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object cxGridDBTableView1kode_komponen: TcxGridDBColumn
          DataBinding.FieldName = 'kode_komponen'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object cxGridDBTableView1nomor_akta_pendirian: TcxGridDBColumn
          Caption = 'Nomor Akta Pendirian'
          DataBinding.FieldName = 'nomor_akta_pendirian'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tanggal_akta_pendirian: TcxGridDBColumn
          Caption = 'Tanggal Pendirian Akta'
          DataBinding.FieldName = 'tanggal_akta_pendirian'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1nomor_perubahan_anggaran_dasar: TcxGridDBColumn
          Caption = 'Nomor Perubahan Anggaran Dasar'
          DataBinding.FieldName = 'nomor_perubahan_anggaran_dasar'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tanggal_perubahan_anggaran_dasar: TcxGridDBColumn
          Caption = 'Tanggal Perubahan Anggaran Dasar'
          DataBinding.FieldName = 'tanggal_perubahan_anggaran_dasar'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1nomor_pengesahan_dari_instansi: TcxGridDBColumn
          Caption = 'Nomor Pengesahan Dari Instasi'
          DataBinding.FieldName = 'nomor_pengesahan_dari_instansi'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tanggal_pengesahan_dari_instansi: TcxGridDBColumn
          Caption = 'Tanggal Pengesahan Dari Instasi'
          DataBinding.FieldName = 'tanggal_pengesahan_dari_instansi'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1tanggal_mulai_beroperasi: TcxGridDBColumn
          Caption = 'Tanggal Mulai Beroperasi'
          DataBinding.FieldName = 'tanggal_mulai_beroperasi'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1bidang_usaha_sesuai_anggaran_dasar: TcxGridDBColumn
          Caption = 'Bidang Usaha Sesuai Anggaran Dasar'
          DataBinding.FieldName = 'bidang_usaha_sesuai_anggaran_dasar'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1tempat_kedudukan: TcxGridDBColumn
          Caption = 'Tempat Kedudukan'
          DataBinding.FieldName = 'tempat_kedudukan'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1opini_akuntan_publik: TcxGridDBColumn
          Caption = 'Opini Akuntan Publik'
          DataBinding.FieldName = 'opini_akuntan_publik'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1nama_akuntan_publik: TcxGridDBColumn
          Caption = 'Nama Akuntan Publik'
          DataBinding.FieldName = 'nama_akuntan_publik'
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
      ExplicitTop = 6
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
      ExplicitTop = 6
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
  object dsMyQA0301: TMyDataSource
    DataSet = MyQA0301
    Left = 312
    Top = 224
  end
  object MyQA0301: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT * FROM `ltbprk_a0301_riwayat_pendirian_bpr`')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQA0301flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 3
    end
    object MyQA0301kode_komponen: TStringField
      FieldName = 'kode_komponen'
      Size = 5
    end
    object MyQA0301nomor_akta_pendirian: TStringField
      FieldName = 'nomor_akta_pendirian'
      Size = 50
    end
    object MyQA0301tanggal_akta_pendirian: TDateField
      FieldName = 'tanggal_akta_pendirian'
    end
    object MyQA0301nomor_perubahan_anggaran_dasar: TStringField
      FieldName = 'nomor_perubahan_anggaran_dasar'
      Size = 50
    end
    object MyQA0301tanggal_perubahan_anggaran_dasar: TDateField
      FieldName = 'tanggal_perubahan_anggaran_dasar'
    end
    object MyQA0301nomor_pengesahan_dari_instansi: TStringField
      FieldName = 'nomor_pengesahan_dari_instansi'
      Size = 50
    end
    object MyQA0301tanggal_pengesahan_dari_instansi: TDateField
      FieldName = 'tanggal_pengesahan_dari_instansi'
    end
    object MyQA0301tanggal_mulai_beroperasi: TDateField
      FieldName = 'tanggal_mulai_beroperasi'
    end
    object MyQA0301bidang_usaha_sesuai_anggaran_dasar: TStringField
      FieldName = 'bidang_usaha_sesuai_anggaran_dasar'
      Size = 2000
    end
    object MyQA0301tempat_kedudukan: TStringField
      FieldName = 'tempat_kedudukan'
      Size = 2000
    end
    object MyQA0301opini_akuntan_publik: TStringField
      FieldName = 'opini_akuntan_publik'
      Size = 2
    end
    object MyQA0301nama_akuntan_publik: TStringField
      FieldName = 'nama_akuntan_publik'
      Size = 2000
    end
    object MyQA0301keterangan: TStringField
      FieldName = 'keterangan'
      Size = 2000
    end
  end
end
