inherited fr_FormDN0001: Tfr_FormDN0001
  Caption = 'Form 0001 - Daftar Data Nasabah'
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
        DataController.DataSource = dsMyQDN0001
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
          Width = 150
        end
        object cxGridDBTableView1nama_nasabah: TcxGridDBColumn
          Caption = 'Nama Nasabah'
          DataBinding.FieldName = 'nama_nasabah'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1jenis_id: TcxGridDBColumn
          Caption = 'Jenis ID'
          DataBinding.FieldName = 'jenis_id'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1no_id: TcxGridDBColumn
          Caption = 'No ID'
          DataBinding.FieldName = 'no_id'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1nama_ibu_kandung: TcxGridDBColumn
          Caption = 'Nama Ibu Kandung'
          DataBinding.FieldName = 'nama_ibu_kandung'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1tgl_lahir: TcxGridDBColumn
          Caption = 'Tanggal Lahir'
          DataBinding.FieldName = 'tgl_lahir'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object cxGridDBTableView1no_id2: TcxGridDBColumn
          Caption = 'No ID 2'
          DataBinding.FieldName = 'no_id2'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1nama_pengurus: TcxGridDBColumn
          Caption = 'Nama Pengurus'
          DataBinding.FieldName = 'nama_pengurus'
          HeaderAlignmentHorz = taCenter
          Width = 250
        end
        object cxGridDBTableView1jenis_identitas: TcxGridDBColumn
          Caption = 'Jenis Identitas'
          DataBinding.FieldName = 'jenis_identitas'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1nomor_identitas: TcxGridDBColumn
          Caption = 'Nomor Identitas'
          DataBinding.FieldName = 'nomor_identitas'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1alamat: TcxGridDBColumn
          Caption = 'Alamat'
          DataBinding.FieldName = 'alamat'
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridDBTableView1kota_kab: TcxGridDBColumn
          Caption = 'Kota / Kabupaten'
          DataBinding.FieldName = 'kota_kab'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1wni: TcxGridDBColumn
          Caption = 'WNI'
          DataBinding.FieldName = 'wni'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1telpon: TcxGridDBColumn
          Caption = 'Telpon'
          DataBinding.FieldName = 'telpon'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1flag_fraud: TcxGridDBColumn
          Caption = 'Flag Fraud'
          DataBinding.FieldName = 'flag_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1hub_dgn_bank: TcxGridDBColumn
          Caption = 'Hubungan Dengan Bank'
          DataBinding.FieldName = 'hub_dgn_bank'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1slik_kode_hub_ljk: TcxGridDBColumn
          Caption = 'Slik Kode Hub LJK'
          DataBinding.FieldName = 'slik_kode_hub_ljk'
          HeaderAlignmentHorz = taCenter
          Width = 125
        end
        object cxGridDBTableView1slik_kode_gol_debitur: TcxGridDBColumn
          Caption = 'Slik Kode Gol Dibetur'
          DataBinding.FieldName = 'slik_kode_gol_debitur'
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
  object dsMyQDN0001: TMyDataSource
    DataSet = MyQDN0001
    Left = 320
    Top = 208
  end
  object MyQDN0001: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `nama_nasabah`,'
      '  `jenis_id`,'
      '  `no_id`,'
      '  `nama_ibu_kandung`,'
      '  `tgl_lahir`,'
      '  `no_id2`,'
      '  `nama_pengurus`,'
      '  `jenis_identitas`,'
      '  `nomor_identitas`,'
      '  `alamat`,'
      '  `kota_kab`,'
      '  `wni`,'
      '  `telpon`,'
      '  `flag_fraud`,'
      '  `hub_dgn_bank`,'
      '  `slik_kode_hub_ljk`,'
      '  `slik_kode_gol_debitur`'
      'FROM `lps_dn_f0001`')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQDN0001flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDN0001nasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDN0001nama_nasabah: TStringField
      FieldName = 'nama_nasabah'
      Size = 150
    end
    object MyQDN0001jenis_id: TStringField
      FieldName = 'jenis_id'
      Size = 3
    end
    object MyQDN0001no_id: TStringField
      FieldName = 'no_id'
      Size = 25
    end
    object MyQDN0001nama_ibu_kandung: TStringField
      FieldName = 'nama_ibu_kandung'
      Size = 150
    end
    object MyQDN0001tgl_lahir: TDateField
      FieldName = 'tgl_lahir'
    end
    object MyQDN0001no_id2: TStringField
      FieldName = 'no_id2'
      Size = 35
    end
    object MyQDN0001nama_pengurus: TStringField
      FieldName = 'nama_pengurus'
      Size = 150
    end
    object MyQDN0001jenis_identitas: TStringField
      FieldName = 'jenis_identitas'
      Size = 3
    end
    object MyQDN0001nomor_identitas: TStringField
      FieldName = 'nomor_identitas'
      Size = 25
    end
    object MyQDN0001alamat: TStringField
      FieldName = 'alamat'
      Size = 300
    end
    object MyQDN0001kota_kab: TStringField
      FieldName = 'kota_kab'
      Size = 4
    end
    object MyQDN0001wni: TStringField
      FieldName = 'wni'
      Size = 3
    end
    object MyQDN0001telpon: TStringField
      FieldName = 'telpon'
      Size = 15
    end
    object MyQDN0001flag_fraud: TStringField
      FieldName = 'flag_fraud'
      Size = 3
    end
    object MyQDN0001hub_dgn_bank: TStringField
      FieldName = 'hub_dgn_bank'
      Size = 2
    end
    object MyQDN0001slik_kode_hub_ljk: TStringField
      FieldName = 'slik_kode_hub_ljk'
      Size = 2
    end
    object MyQDN0001slik_kode_gol_debitur: TStringField
      FieldName = 'slik_kode_gol_debitur'
      Size = 11
    end
  end
end
