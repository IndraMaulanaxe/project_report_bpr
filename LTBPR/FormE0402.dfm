inherited fr_FormE0402: Tfr_FormE0402
  Caption = 'Entry Form E0402 - Hubungan Keluarga Direksi Pemegang Saham'
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
        DataController.DataSource = dsMyQE0402
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
        object cxGridDBTableView1nik: TcxGridDBColumn
          Caption = 'NIK'
          DataBinding.FieldName = 'nik'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGridDBTableView1hubungan_keluarga_i_anggota: TcxGridDBColumn
          Caption = 'Hubungan Keluarga Anggota Direksi'
          DataBinding.FieldName = 'hubungan_keluarga_i_anggota_direksi'
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridDBTableView1hubungan_keluarga_ii_anggota: TcxGridDBColumn
          Caption = 'Hubungan Keluarga Anggota Komisaris'
          DataBinding.FieldName = 'hubungan_keluarga_ii_anggota_dewan_komisaris'
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridDBTableView1hubungan_keluarga_iii_pemegang: TcxGridDBColumn
          Caption = 'Hubungan Keluarga Anggota Pemegang Saham'
          DataBinding.FieldName = 'hubungan_keluarga_iii_pemegang_saham'
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object cxGridDBTableView1footer_1_penjelasan_lebih_lanjut: TcxGridDBColumn
          Caption = 'Penjelasan'
          DataBinding.FieldName = 'footer_1_penjelasan_lebih_lanjut'
          HeaderAlignmentHorz = taCenter
          Width = 300
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
  object dsMyQE0402: TMyDataSource
    DataSet = MyQE0402
    Left = 312
    Top = 224
  end
  object MyQE0402: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'select * from ltbprk_e0402_hubungan_keluarga_direksi_pemegang_sa' +
        'ham')
    ReadOnly = True
    Options.FieldOrigins = foNone
    Left = 312
    Top = 280
    object MyQE0402flag_detail: TStringField
      FieldName = 'flag_detail'
      Size = 3
    end
    object MyQE0402kode_komponen: TStringField
      FieldName = 'kode_komponen'
      Size = 12
    end
    object MyQE0402nik: TStringField
      FieldName = 'nik'
      Size = 25
    end
    object MyQE0402hubungan_keluarga_i_anggota_direksi: TStringField
      FieldName = 'hubungan_keluarga_i_anggota_direksi'
      Size = 2000
    end
    object MyQE0402hubungan_keluarga_ii_anggota_dewan_komisaris: TStringField
      FieldName = 'hubungan_keluarga_ii_anggota_dewan_komisaris'
      Size = 2000
    end
    object MyQE0402hubungan_keluarga_iii_pemegang_saham: TStringField
      FieldName = 'hubungan_keluarga_iii_pemegang_saham'
      Size = 2000
    end
    object MyQE0402footer_1_penjelasan_lebih_lanjut: TStringField
      FieldName = 'footer_1_penjelasan_lebih_lanjut'
      Size = 2000
    end
  end
end
