inherited fr_Form0100: Tfr_Form0100
  Caption = 'Form 0100 - Laporan Informasi Utama'
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
        DataController.DataSource = dsMyQ0100
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
        object cxGridDBTableView1sandi_laporan: TcxGridDBColumn
          Caption = 'Sandi Laporan'
          DataBinding.FieldName = 'sandi_laporan'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1tanggal_kejadian: TcxGridDBColumn
          Caption = 'Tanggal Kejadian'
          DataBinding.FieldName = 'tanggal_kejadian'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1nomor_sk_ojk: TcxGridDBColumn
          Caption = 'Nomor SK OJK'
          DataBinding.FieldName = 'nomor_sk_ojk'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1nomor_akta: TcxGridDBColumn
          Caption = 'Nomor Akta'
          DataBinding.FieldName = 'nomor_akta'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1nomor_persetujuan: TcxGridDBColumn
          Caption = 'Nomor Persetujuan'
          DataBinding.FieldName = 'nomor_persetujuan'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1nama_pihak: TcxGridDBColumn
          Caption = 'Nama Pihak'
          DataBinding.FieldName = 'nama_pihak'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1nik_npwp: TcxGridDBColumn
          Caption = 'NK/ NPWP'
          DataBinding.FieldName = 'nik_npwp'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1pelanggaran: TcxGridDBColumn
          Caption = 'Pelanggaran'
          DataBinding.FieldName = 'pelanggaran'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1status_dokumen: TcxGridDBColumn
          Caption = 'Status Dokumen'
          DataBinding.FieldName = 'status_dokumen'
          HeaderAlignmentHorz = taCenter
          Width = 100
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
  object dsMyQ0100: TMyDataSource
    DataSet = MyQ0100
    Left = 320
    Top = 208
  end
  object MyQ0100: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'select * from linsbpr_0100')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 328
    Top = 280
    object MyQ0100flag_detail: TStringField
      FieldName = 'flag_detail'
      FixedChar = True
      Size = 3
    end
    object MyQ0100sandi_laporan: TStringField
      FieldName = 'sandi_laporan'
      FixedChar = True
      Size = 10
    end
    object MyQ0100tanggal_kejadian: TDateField
      FieldName = 'tanggal_kejadian'
    end
    object MyQ0100nomor_sk_ojk: TStringField
      FieldName = 'nomor_sk_ojk'
      Size = 50
    end
    object MyQ0100tanggal_sk_ojk: TDateField
      FieldName = 'tanggal_sk_ojk'
    end
    object MyQ0100nomor_akta: TStringField
      FieldName = 'nomor_akta'
      Size = 50
    end
    object MyQ0100tanggal_akta: TDateField
      FieldName = 'tanggal_akta'
    end
    object MyQ0100nomor_persetujuan: TStringField
      FieldName = 'nomor_persetujuan'
      Size = 50
    end
    object MyQ0100tanggal_persetujuan: TDateField
      FieldName = 'tanggal_persetujuan'
    end
    object MyQ0100tanggal_efektif: TDateField
      FieldName = 'tanggal_efektif'
    end
    object MyQ0100nama_pihak: TStringField
      FieldName = 'nama_pihak'
      Size = 2000
    end
    object MyQ0100nik_npwp: TStringField
      FieldName = 'nik_npwp'
      Size = 25
    end
    object MyQ0100jabatan: TStringField
      FieldName = 'jabatan'
      FixedChar = True
      Size = 1
    end
    object MyQ0100jenis_produk: TStringField
      FieldName = 'jenis_produk'
      FixedChar = True
      Size = 2
    end
    object MyQ0100nama_produk: TStringField
      FieldName = 'nama_produk'
      Size = 2000
    end
    object MyQ0100jenis_kantor: TStringField
      FieldName = 'jenis_kantor'
      FixedChar = True
      Size = 2
    end
    object MyQ0100alamat: TStringField
      FieldName = 'alamat'
      Size = 2000
    end
    object MyQ0100alamat_baru: TStringField
      FieldName = 'alamat_baru'
      Size = 2000
    end
    object MyQ0100tanggal_selesai: TDateField
      FieldName = 'tanggal_selesai'
    end
    object MyQ0100pelanggaran: TStringField
      FieldName = 'pelanggaran'
      FixedChar = True
      Size = 1
    end
    object MyQ0100alasan: TStringField
      FieldName = 'alasan'
      Size = 2000
    end
    object MyQ0100nama_pjti: TStringField
      FieldName = 'nama_pjti'
      Size = 2000
    end
    object MyQ0100register_ref: TStringField
      FieldName = 'register_ref'
      Size = 50
    end
    object MyQ0100langkah_perbaikan: TStringField
      FieldName = 'langkah_perbaikan'
      Size = 2000
    end
    object MyQ0100target_waktu: TDateField
      FieldName = 'target_waktu'
    end
    object MyQ0100realisasi: TStringField
      FieldName = 'realisasi'
      Size = 2000
    end
    object MyQ0100status: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object MyQ0100status_dokumen: TStringField
      FieldName = 'status_dokumen'
      FixedChar = True
      Size = 1
    end
  end
end
