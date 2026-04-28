inherited fr_FormDK0003: Tfr_FormDK0003
  Caption = 'Form 0003 -  Entry Laporan Dana Kewajiban'
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
        DataController.DataSource = dsMyQDK0003
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
        object cxGridDBTableView1jenis: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1kolektibilitas: TcxGridDBColumn
          Caption = 'Kolektibilitas'
          DataBinding.FieldName = 'kolektibilitas'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1plafon: TcxGridDBColumn
          Caption = 'Plafon'
          DataBinding.FieldName = 'plafon'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1baki_debet: TcxGridDBColumn
          Caption = 'Baki Debet'
          DataBinding.FieldName = 'baki_debet'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tunggakan_pokok: TcxGridDBColumn
          Caption = 'Tunggakan Pokok'
          DataBinding.FieldName = 'tunggakan_pokok'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tunggakan_bunga: TcxGridDBColumn
          Caption = 'Tunggakan Pokok'
          DataBinding.FieldName = 'tunggakan_bunga'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1jenis_agunan: TcxGridDBColumn
          Caption = 'Jenis Agunan'
          DataBinding.FieldName = 'jenis_agunan'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tgl_mulai: TcxGridDBColumn
          Caption = 'Tanggal Mulai'
          DataBinding.FieldName = 'tgl_mulai'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1tgl_jatuh_tempo: TcxGridDBColumn
          Caption = 'Tanggal Jatuh Tempo'
          DataBinding.FieldName = 'tgl_jatuh_tempo'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1kategori_usaha: TcxGridDBColumn
          Caption = 'Kategori Usaha'
          DataBinding.FieldName = 'kategori_usaha'
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
  object dsMyQDK0003: TMyDataSource
    DataSet = MyQDK0003
    Left = 400
    Top = 272
  end
  object MyQDK0003: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `flag_detail`,'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `jenis`,'
      '  `kolektibilitas`,'
      '  `plafon`,'
      '  `baki_debet`,'
      '  `tunggakan_pokok`,'
      '  `tunggakan_bunga`,'
      '  `jenis_agunan`,'
      '  `tgl_mulai`,'
      '  `tgl_jatuh_tempo`,'
      '  `kategori_usaha`'
      'FROM `lps_dk_f0003`'
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
    object MyQDK0003flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 1
    end
    object MyQDK0003nasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQDK0003no_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQDK0003jenis: TStringField
      FieldName = 'jenis'
      Size = 3
    end
    object MyQDK0003kolektibilitas: TStringField
      FieldName = 'kolektibilitas'
      Size = 1
    end
    object MyQDK0003plafon: TFloatField
      FieldName = 'plafon'
    end
    object MyQDK0003baki_debet: TFloatField
      FieldName = 'baki_debet'
    end
    object MyQDK0003tunggakan_pokok: TFloatField
      FieldName = 'tunggakan_pokok'
    end
    object MyQDK0003tunggakan_bunga: TFloatField
      FieldName = 'tunggakan_bunga'
    end
    object MyQDK0003jenis_agunan: TStringField
      FieldName = 'jenis_agunan'
      Size = 10
    end
    object MyQDK0003tgl_mulai: TDateField
      FieldName = 'tgl_mulai'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQDK0003tgl_jatuh_tempo: TDateField
      FieldName = 'tgl_jatuh_tempo'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MyQDK0003kategori_usaha: TStringField
      FieldName = 'kategori_usaha'
      Size = 2
    end
  end
  object MyQImport: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      '#DK'
      'SET @pv_per_tgl = &TGL; #'#39'2025-12-31'#39'; '
      ''
      'SELECT'
      #39'D'#39' AS D,'
      'kr.nasabah_id,'
      'kr.no_rekening,'
      'IF(k.jenis = '#39'05'#39', '#39'30'#39', k.jenis) AS jenis_kewajiban, '
      'kr.kolek_bi,'
      'kr.jml_pinjaman,'
      'CEIL(kr.baki_debet) AS baki_debet,'
      'CEIL(kr.jumlah_tunggakan_pokok) AS jumlah_tunggakan_pokok,'
      'CEIL(kr.jumlah_tunggakan_bunga) AS jumlah_tunggakan_bunga,'
      '(CASE'
      #9'WHEN kr.jenis_agunan IN ('#39'1'#39','#39'2'#39','#39'3'#39') THEN 100'
      #9'WHEN kr.jenis_agunan IN ('#39'4'#39','#39'5'#39','#39'6'#39','#39'7'#39','#39'9'#39') THEN 200'
      #9'ELSE 300'
      'END) AS jenis_agunan,'
      'kr.tgl_realisasi AS jangka_waktu_mulai,'
      'kr.tgl_jatuh_tempo AS jangka_waktu_jatuh_tempo,'
      
        'IF(k.kategori_usaha IS NULL, '#39'99'#39', k.kategori_usaha) AS kategori' +
        '_usaha'
      'FROM kre_nominatif kr'
      'LEFT JOIN `slik_kredit` sk ON kr.no_rekening = sk.`no_rekening`'
      
        'LEFT JOIN `apolo_f0600_kredit` k ON kr.no_rekening = k.`NO_REKEN' +
        'ING`'
      
        'LEFT JOIN `kre_kode_jenis_agunan` ja ON ja.kode_jenis_agunan = k' +
        'r.jenis_agunan')
    ReadOnly = True
    Left = 56
    Top = 88
    MacroData = <
      item
        Name = 'TGL'
        Value = #39'2025-12-31'#39
      end>
    object MyQImportnasabah_id: TStringField
      FieldName = 'nasabah_id'
      FixedChar = True
    end
    object MyQImportno_rekening: TStringField
      FieldName = 'no_rekening'
      FixedChar = True
      Size = 25
    end
    object MyQImportjenis_kewajiban: TStringField
      FieldName = 'jenis_kewajiban'
      Size = 2
    end
    object MyQImportkolek_bi: TSmallintField
      FieldName = 'kolek_bi'
    end
    object MyQImportjml_pinjaman: TFloatField
      FieldName = 'jml_pinjaman'
    end
    object MyQImportbaki_debet: TLargeintField
      FieldName = 'baki_debet'
    end
    object MyQImportjumlah_tunggakan_pokok: TLargeintField
      FieldName = 'jumlah_tunggakan_pokok'
    end
    object MyQImportjumlah_tunggakan_bunga: TLargeintField
      FieldName = 'jumlah_tunggakan_bunga'
    end
    object MyQImportjangka_waktu_mulai: TDateField
      FieldName = 'jangka_waktu_mulai'
    end
    object MyQImportjangka_waktu_jatuh_tempo: TDateField
      FieldName = 'jangka_waktu_jatuh_tempo'
    end
    object MyQImportkategori_usaha: TStringField
      FieldName = 'kategori_usaha'
      Size = 2
    end
    object MyQImportjenis_agunan: TIntegerField
      FieldName = 'jenis_agunan'
    end
  end
end
