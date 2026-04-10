inherited fr_FormDSN0002: Tfr_FormDSN0002
  Caption = 'Form 0002 -  Entry Daftar Simpanan Nasabah'
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
        DataController.DataSource = dsMyQDSN0002
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
        object cxGridDBTableView1jumlah_pemilik_rekening: TcxGridDBColumn
          Caption = 'Jumlah Rekening'
          DataBinding.FieldName = 'jumlah_pemilik_rekening'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1nasabah_id: TcxGridDBColumn
          Caption = 'Nasabah ID'
          DataBinding.FieldName = 'nasabah_id'
          HeaderAlignmentHorz = taCenter
          Width = 125
        end
        object cxGridDBTableView1kode_integrasi: TcxGridDBColumn
          Caption = 'Kode Integrasi'
          DataBinding.FieldName = 'kode_integrasi'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1no_rekening: TcxGridDBColumn
          Caption = 'Nomor Rekening'
          DataBinding.FieldName = 'no_rekening'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1status_dana: TcxGridDBColumn
          Caption = 'Status Dana'
          DataBinding.FieldName = 'status_dana'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tgl_mulai_atau_tgl_aro_terakhir: TcxGridDBColumn
          Caption = 'Tanggal Mulai'
          DataBinding.FieldName = 'tgl_mulai_atau_tgl_aro_terakhir'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1suku_bunga: TcxGridDBColumn
          Caption = 'Suku Bunga'
          DataBinding.FieldName = 'suku_bunga'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1suku_bunga_val: TcxGridDBColumn
          Caption = 'Suku Bunga Val'
          DataBinding.FieldName = 'suku_bunga_val'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1biaya_cashback: TcxGridDBColumn
          Caption = 'Cashback'
          DataBinding.FieldName = 'biaya_cashback'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1tingkat_bunga_penjaminan_lps: TcxGridDBColumn
          Caption = 'Bunga Penjamin LPS'
          DataBinding.FieldName = 'tingkat_bunga_penjaminan_lps'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1kategori_tingkat_bunga_simpanan: TcxGridDBColumn
          Caption = 'Kategori Tingkat Bunga'
          DataBinding.FieldName = 'kategori_tingkat_bunga_simpanan'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1saldo_akhir: TcxGridDBColumn
          Caption = 'Saldo Akhir'
          DataBinding.FieldName = 'saldo_akhir'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1nominal_blokir: TcxGridDBColumn
          Caption = 'Nominal Blokir'
          DataBinding.FieldName = 'nominal_blokir'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1alasan_blokir: TcxGridDBColumn
          Caption = 'Alasan'
          DataBinding.FieldName = 'alasan_blokir'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1saldo_akhir_bunga_bmhd: TcxGridDBColumn
          Caption = 'Saldo Akhir Bunga'
          DataBinding.FieldName = 'saldo_akhir_bunga_bmhd'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1tgl_akru_terakhir: TcxGridDBColumn
          Caption = 'Tanggal Akhir'
          DataBinding.FieldName = 'tgl_akru_terakhir'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGridDBTableView1tanggal_jt: TcxGridDBColumn
          Caption = 'Tanggal Jatuh Tempo'
          DataBinding.FieldName = 'tanggal_jt'
          HeaderAlignmentHorz = taCenter
          Width = 75
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
  object dsMyQDSN0002: TMyDataSource
    DataSet = MyQDSN0002
    Left = 384
    Top = 272
  end
  object MyQDSN0002: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `jumlah_pemilik_rekening`,'
      '  `nasabah_id`,'
      '  `kode_integrasi`,'
      '  `no_rekening`,'
      '  `status_dana`,'
      '  `tgl_mulai_atau_tgl_aro_terakhir`,'
      '  `suku_bunga`,'
      '  `suku_bunga_val`,'
      '  `biaya_cashback`,'
      '  `tingkat_bunga_penjaminan_lps`,'
      '  `kategori_tingkat_bunga_simpanan`,'
      '  `saldo_akhir`,'
      '  `nominal_blokir`,'
      '  `alasan_blokir`,'
      '  `saldo_akhir_bunga_bmhd`,'
      '  `tgl_akru_terakhir`,'
      '  `tanggal_jt`'
      'FROM `lps_dsn_f0002`'
      '&WHERE'
      'LIMIT 30')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDSN0002jumlah_pemilik_rekening: TIntegerField
      FieldName = 'jumlah_pemilik_rekening'
    end
    object MyQDSN0002nasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDSN0002kode_integrasi: TStringField
      FieldName = 'kode_integrasi'
      Size = 4
    end
    object MyQDSN0002no_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDSN0002status_dana: TStringField
      FieldName = 'status_dana'
      Size = 1
    end
    object MyQDSN0002tgl_mulai_atau_tgl_aro_terakhir: TDateField
      FieldName = 'tgl_mulai_atau_tgl_aro_terakhir'
    end
    object MyQDSN0002suku_bunga: TStringField
      FieldName = 'suku_bunga'
      Size = 1
    end
    object MyQDSN0002suku_bunga_val: TFloatField
      FieldName = 'suku_bunga_val'
    end
    object MyQDSN0002biaya_cashback: TFloatField
      FieldName = 'biaya_cashback'
    end
    object MyQDSN0002tingkat_bunga_penjaminan_lps: TFloatField
      FieldName = 'tingkat_bunga_penjaminan_lps'
    end
    object MyQDSN0002kategori_tingkat_bunga_simpanan: TStringField
      FieldName = 'kategori_tingkat_bunga_simpanan'
      Size = 3
    end
    object MyQDSN0002saldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
    end
    object MyQDSN0002nominal_blokir: TFloatField
      FieldName = 'nominal_blokir'
    end
    object MyQDSN0002alasan_blokir: TStringField
      FieldName = 'alasan_blokir'
      Size = 2
    end
    object MyQDSN0002saldo_akhir_bunga_bmhd: TFloatField
      FieldName = 'saldo_akhir_bunga_bmhd'
    end
    object MyQDSN0002tgl_akru_terakhir: TDateField
      FieldName = 'tgl_akru_terakhir'
    end
    object MyQDSN0002tanggal_jt: TDateField
      FieldName = 'tanggal_jt'
    end
  end
end
