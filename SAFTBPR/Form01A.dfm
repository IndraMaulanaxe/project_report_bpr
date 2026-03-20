inherited fr_Form01A: Tfr_Form01A
  Caption = 
    'Form 01A - Laporan Penerapan SAF yang mencakup informasi kejadia' +
    'n fraud dan informasi pelaku fraud'
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
        DataController.DataSource = dsMyQ01A
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
        object cxGridDBTableView1kode_komponen: TcxGridDBColumn
          Caption = 'Kode Komponen'
          DataBinding.FieldName = 'kode_komponen'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1kejadian_fraud_menurut_pelaku: TcxGridDBColumn
          Caption = 'Kejadian Fraud'
          DataBinding.FieldName = 'kejadian_fraud_menurut_pelaku'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1id_kejadian_fraud: TcxGridDBColumn
          Caption = 'ID Kejadian Fraud'
          DataBinding.FieldName = 'id_kejadian_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1jenis_fraud: TcxGridDBColumn
          Caption = 'Jenis Fraud'
          DataBinding.FieldName = 'jenis_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1ket_jenis_fraud: TcxGridDBColumn
          Caption = 'Keterangan Jenis Fraud'
          DataBinding.FieldName = 'ket_jenis_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1aktivitas_terkait_fraud: TcxGridDBColumn
          Caption = 'Aktivitas Terkait Fraud'
          DataBinding.FieldName = 'aktivitas_terkait_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object cxGridDBTableView1deskripsi_fraud: TcxGridDBColumn
          Caption = 'Deskripsi Fraud'
          DataBinding.FieldName = 'deskripsi_fraud'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGridDBTableView1status_penanganan: TcxGridDBColumn
          Caption = 'Status Penanganan'
          DataBinding.FieldName = 'status_penanganan'
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
  object dsMyQ01A: TMyDataSource
    DataSet = MyQ01A
    Left = 320
    Top = 208
  end
  object MyQ01A: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'select * from saftbpr_01a')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQ01Aflag_detail: TStringField
      FieldName = 'flag_detail'
      FixedChar = True
      Size = 3
    end
    object MyQ01Akode_komponen: TStringField
      FieldName = 'kode_komponen'
      FixedChar = True
      Size = 10
    end
    object MyQ01Akejadian_fraud_menurut_pelaku: TStringField
      FieldName = 'kejadian_fraud_menurut_pelaku'
      FixedChar = True
      Size = 2
    end
    object MyQ01Aid_kejadian_fraud: TStringField
      FieldName = 'id_kejadian_fraud'
      Size = 13
    end
    object MyQ01Ajenis_fraud: TStringField
      FieldName = 'jenis_fraud'
      FixedChar = True
      Size = 3
    end
    object MyQ01Aket_jenis_fraud: TStringField
      FieldName = 'ket_jenis_fraud'
      Size = 500
    end
    object MyQ01Aaktivitas_terkait_fraud: TIntegerField
      FieldName = 'aktivitas_terkait_fraud'
    end
    object MyQ01Adeskripsi_fraud: TStringField
      FieldName = 'deskripsi_fraud'
      Size = 4000
    end
    object MyQ01Alokasi_fraud: TStringField
      FieldName = 'lokasi_fraud'
      FixedChar = True
      Size = 2
    end
    object MyQ01Aket_lokasi_fraud: TStringField
      FieldName = 'ket_lokasi_fraud'
      FixedChar = True
      Size = 4
    end
    object MyQ01Adivisi_unit_kerja: TStringField
      FieldName = 'divisi_unit_kerja'
      Size = 250
    end
    object MyQ01Apihak_yang_dirugikan: TStringField
      FieldName = 'pihak_yang_dirugikan'
      FixedChar = True
      Size = 3
    end
    object MyQ01Awaktu_terjadi_awal: TDateField
      FieldName = 'waktu_terjadi_awal'
    end
    object MyQ01Awaktu_terjadi_akhir: TDateField
      FieldName = 'waktu_terjadi_akhir'
    end
    object MyQ01Afraud_diketahui: TDateField
      FieldName = 'fraud_diketahui'
    end
    object MyQ01Aljk_riil: TFloatField
      FieldName = 'ljk_riil'
    end
    object MyQ01Aljk_potensial: TFloatField
      FieldName = 'ljk_potensial'
    end
    object MyQ01Aljk_recovery: TFloatField
      FieldName = 'ljk_recovery'
    end
    object MyQ01Akonsumen_riil: TFloatField
      FieldName = 'konsumen_riil'
    end
    object MyQ01Akonsumen_potensial: TFloatField
      FieldName = 'konsumen_potensial'
    end
    object MyQ01Akonsumen_recovery: TFloatField
      FieldName = 'konsumen_recovery'
    end
    object MyQ01Apihak_lain_riil: TFloatField
      FieldName = 'pihak_lain_riil'
    end
    object MyQ01Apihak_lain_potensial: TFloatField
      FieldName = 'pihak_lain_potensial'
    end
    object MyQ01Apihak_lain_recovery: TFloatField
      FieldName = 'pihak_lain_recovery'
    end
    object MyQ01Akelemahan_penyebab_fraud: TStringField
      FieldName = 'kelemahan_penyebab_fraud'
      FixedChar = True
      Size = 3
    end
    object MyQ01Aket_kelemahan_fraud: TStringField
      FieldName = 'ket_kelemahan_fraud'
      Size = 1000
    end
    object MyQ01Atindakan_penanganan_fraud: TStringField
      FieldName = 'tindakan_penanganan_fraud'
      FixedChar = True
      Size = 2
    end
    object MyQ01Aket_tindakan_penanganan: TStringField
      FieldName = 'ket_tindakan_penanganan'
      Size = 1000
    end
    object MyQ01Atindakan_pencegahan_fraud: TStringField
      FieldName = 'tindakan_pencegahan_fraud'
      FixedChar = True
      Size = 3
    end
    object MyQ01Aket_tindakan_pencegahan: TStringField
      FieldName = 'ket_tindakan_pencegahan'
      Size = 1000
    end
    object MyQ01Atarget_waktu_pelaksanaan: TStringField
      FieldName = 'target_waktu_pelaksanaan'
      Size = 100
    end
    object MyQ01Arealisasi_pelaksanaan: TStringField
      FieldName = 'realisasi_pelaksanaan'
      Size = 100
    end
    object MyQ01Aintern_ekstern: TStringField
      FieldName = 'intern_ekstern'
      FixedChar = True
      Size = 3
    end
    object MyQ01Anama_pelaku: TStringField
      FieldName = 'nama_pelaku'
      Size = 50
    end
    object MyQ01Ajenis_identitas: TStringField
      FieldName = 'jenis_identitas'
      FixedChar = True
      Size = 3
    end
    object MyQ01Anomor_identitas: TStringField
      FieldName = 'nomor_identitas'
      Size = 50
    end
    object MyQ01Ajenis_kelamin: TStringField
      FieldName = 'jenis_kelamin'
      FixedChar = True
      Size = 1
    end
    object MyQ01Aalamat_identitas: TStringField
      FieldName = 'alamat_identitas'
      Size = 500
    end
    object MyQ01Aalamat_domisili: TStringField
      FieldName = 'alamat_domisili'
      Size = 500
    end
    object MyQ01Atempat_lahir: TStringField
      FieldName = 'tempat_lahir'
      Size = 150
    end
    object MyQ01Atanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
    end
    object MyQ01Astatus_pelaku: TStringField
      FieldName = 'status_pelaku'
      FixedChar = True
      Size = 3
    end
    object MyQ01Ajabatan_saat_fraud: TStringField
      FieldName = 'jabatan_saat_fraud'
      FixedChar = True
      Size = 3
    end
    object MyQ01Aket_jabatan_saat_fraud: TStringField
      FieldName = 'ket_jabatan_saat_fraud'
      Size = 100
    end
    object MyQ01Ajabatan_saat_diketahui: TStringField
      FieldName = 'jabatan_saat_diketahui'
      FixedChar = True
      Size = 3
    end
    object MyQ01Aket_jabatan_saat_diketahui: TStringField
      FieldName = 'ket_jabatan_saat_diketahui'
      Size = 100
    end
    object MyQ01Aketerangan_pelaku: TStringField
      FieldName = 'keterangan_pelaku'
      FixedChar = True
      Size = 3
    end
    object MyQ01Apengenaan_sanksi: TStringField
      FieldName = 'pengenaan_sanksi'
      Size = 200
    end
    object MyQ01Astatus_penanganan: TStringField
      FieldName = 'status_penanganan'
      FixedChar = True
      Size = 3
    end
  end
end
