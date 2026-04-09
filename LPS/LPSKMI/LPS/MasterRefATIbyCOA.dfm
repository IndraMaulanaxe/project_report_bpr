inherited fr_MasterRefATIByCOA: Tfr_MasterRefATIByCOA
  BorderStyle = bsSizeable
  Caption = 'Master ATI by COA'
  ClientHeight = 376
  ClientWidth = 919
  ExplicitWidth = 935
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel2: TsPanel [1]
    Left = 0
    Top = 33
    Width = 919
    Height = 306
    SkinData.SkinSection = 'PANEL'
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitLeft = -428
    ExplicitTop = -3
    ExplicitWidth = 980
    ExplicitHeight = 343
    object sGauge1: TsGauge
      Left = 6
      Top = 283
      Width = 907
      Height = 17
      Align = alBottom
      Visible = False
      ForeColor = clNavy
      Progress = 0
      Suffix = '%'
      ExplicitTop = 215
      ExplicitWidth = 535
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 907
      Height = 277
      Align = alClient
      DataSource = dsMyQAtiCOA
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Times New Roman'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'sandi'
          Title.Alignment = taCenter
          Title.Caption = 'Sandi'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ati_tidak_berwujud'
          Title.Alignment = taCenter
          Title.Caption = 'Keterangan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 336
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kode_perk_biaya_perolehan'
          Title.Alignment = taCenter
          Title.Caption = '#Perk Biaya Perolehan'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kode_perk_akumulasi_amortisasi'
          Title.Alignment = taCenter
          Title.Caption = '#Perk Akum. Amortisasi'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kode_perk_akumulasi_kerugian'
          Title.Alignment = taCenter
          Title.Caption = '#Perk Akum. Kerugian'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 150
          Visible = True
        end>
    end
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 339
    Width = 919
    Height = 37
    SkinData.SkinSection = 'PANEL'
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 1
    ExplicitLeft = -428
    ExplicitTop = 303
    ExplicitWidth = 980
    object bt_tambah: TsBitBtn
      Left = 613
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Tambah'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1DDDDDDDDDD
        DDDDD11DDDDDDDD4DDDDD111DDDDD4D4D4DDD1111DDDDD444DDDD11111DD4444
        444DD1111DDDDD444DDDD111DDDDD4D4D4DDD11DDDDDDDD4DDDDD1DDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 674
    end
    object bt_edit: TsBitBtn
      Left = 688
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Edit'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDD0D0D0D0DDDDDDDDDDDDDDD00DDDDDDDDDDDDDD000DDDDD1DDDDDDD0B8
        0DDDD11DDDDDD0B70DDDD111DDDDDD0B80DDD1111DDDDD0B70DDD11111DDDDD0
        B80DD1111DDDDDD0B00DD111DDDDDDDD0110D11DDDDDDDDD000DD1DDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 749
    end
    object bt_delete: TsBitBtn
      Left = 763
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Delete'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD18DDDDDDD8D1DDDD118DDD
        DD18D11DDD811DDDD81DD111DDD118DD818DD1111DD8118811DDD11111DD1111
        1DDDD1111DDD8111DDDDD111DD8811118DDDD11DD1111DD118DDD1DDD11DDDDD
        118DDDDDDDDDDDDDD11DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      TabOrder = 3
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 824
    end
    object bt_close: TsBitBtn
      Left = 838
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Close'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAA0000000000000AAA0333333333330AAA03333333333
        30AAA0333333333330AAA0333333333330AAA0333333333330AAA03333333333
        30AAA0333333333330AAA8000000000008AAAA0FFF0AAAAAAAA4AAA000AAAAAA
        AAA4AAAAAAAAAAAA4A4AAAAAAAAAAAAA44AAAAAAAAAAAAAA444A}
      TabOrder = 4
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 899
    end
    object bt_refresh: TsBitBtn
      Left = 6
      Top = 6
      Width = 81
      Height = 25
      Align = alLeft
      Caption = 'Refresh'
      ImageIndex = 40
      Images = dm_bpr1.ImageList1
      TabOrder = 0
      SkinData.SkinSection = 'BUTTON'
    end
    object bt_biaya_perolehan: TsBitBtn
      Left = 87
      Top = 6
      Width = 170
      Height = 25
      Align = alLeft
      Caption = 'Setting Biaya Perolehan'
      ImageIndex = 66
      Images = dm_bpr1.ImageList1
      TabOrder = 5
      OnClick = bt_biaya_perolehanClick
      SkinData.SkinSection = 'BUTTON'
    end
    object bt_akum_amortisasi: TsBitBtn
      Left = 257
      Top = 6
      Width = 170
      Height = 25
      Align = alLeft
      Caption = 'Setting Akum Amortisasi'
      ImageIndex = 66
      Images = dm_bpr1.ImageList1
      TabOrder = 6
      OnClick = bt_akum_amortisasiClick
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 406
      ExplicitTop = 0
    end
    object bt_akum_kerugian: TsBitBtn
      Left = 427
      Top = 6
      Width = 170
      Height = 25
      Align = alLeft
      Caption = 'Setting Akum Kerugian'
      ImageIndex = 66
      Images = dm_bpr1.ImageList1
      TabOrder = 7
      OnClick = bt_akum_kerugianClick
      SkinData.SkinSection = 'BUTTON'
      ExplicitLeft = 593
      ExplicitTop = 0
    end
  end
  object sPanel3: TsPanel [3]
    Left = 0
    Top = 0
    Width = 919
    Height = 33
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 979
    object sLabel1: TsLabel
      Left = 1
      Top = 1
      Width = 96
      Height = 31
      Align = alLeft
      Alignment = taCenter
      Caption = 'Sumber Perolehan'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object sLabel2: TsLabel
      Left = 374
      Top = 1
      Width = 62
      Height = 31
      Align = alLeft
      Alignment = taCenter
      Caption = 'Status Aset'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object cb_sumber_perolehan: TDBLookupComboBox
      AlignWithMargins = True
      Left = 102
      Top = 6
      Width = 267
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      DropDownWidth = 300
      KeyField = 'sandi'
      ListField = 'sumber_perolehan'
      ListSource = dsSumberPerolehan
      TabOrder = 0
      OnClick = cb_sumber_perolehanClick
      ExplicitLeft = 118
    end
    object cb_status_aset: TDBLookupComboBox
      AlignWithMargins = True
      Left = 441
      Top = 6
      Width = 267
      Height = 23
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      DropDownWidth = 300
      KeyField = 'sandi'
      ListField = 'status_aset_ati'
      ListSource = dsStatusAset
      TabOrder = 1
      OnClick = cb_sumber_perolehanClick
      ExplicitLeft = 750
      ExplicitTop = 4
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 408
    Top = 88
  end
  object dsMyQAtiCOA: TMyDataSource
    DataSet = MyQAtiCOA
    Left = 456
    Top = 80
  end
  object MyQAtiCOA: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT `id`, `sandi`, `ati_tidak_berwujud`, `selectable`, `kode_' +
        'old`, '
      
        '  `sandi_sumber_perolehan`, `sandi_status_aset`, `kode_perk_biay' +
        'a_perolehan`, '
      
        '  `kode_perk_akumulasi_amortisasi`, `kode_perk_akumulasi_kerugia' +
        'n`'
      'FROM `apolo_ref_ati_coa`'
      '&WHERE')
    ReadOnly = True
    Left = 504
    Top = 80
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQAtiCOAid: TIntegerField
      FieldName = 'id'
    end
    object MyQAtiCOAsandi: TStringField
      FieldName = 'sandi'
      FixedChar = True
      Size = 3
    end
    object MyQAtiCOAati_tidak_berwujud: TStringField
      FieldName = 'ati_tidak_berwujud'
      Size = 250
    end
    object MyQAtiCOAselectable: TSmallintField
      FieldName = 'selectable'
    end
    object MyQAtiCOAkode_old: TStringField
      FieldName = 'kode_old'
      FixedChar = True
      Size = 3
    end
    object MyQAtiCOAsandi_sumber_perolehan: TStringField
      FieldName = 'sandi_sumber_perolehan'
      FixedChar = True
      Size = 2
    end
    object MyQAtiCOAsandi_status_aset: TStringField
      FieldName = 'sandi_status_aset'
      FixedChar = True
      Size = 1
    end
    object MyQAtiCOAkode_perk_biaya_perolehan: TStringField
      FieldName = 'kode_perk_biaya_perolehan'
      Size = 250
    end
    object MyQAtiCOAkode_perk_akumulasi_amortisasi: TStringField
      FieldName = 'kode_perk_akumulasi_amortisasi'
      Size = 250
    end
    object MyQAtiCOAkode_perk_akumulasi_kerugian: TStringField
      FieldName = 'kode_perk_akumulasi_kerugian'
      Size = 250
    end
  end
  object dsSumberPerolehan: TMyDataSource
    DataSet = MyQSumberPerolehan
    Left = 72
    Top = 96
  end
  object MyQSumberPerolehan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT `id`, `sandi`, `sumber_perolehan`, `selectable`'
      'FROM `apolo_ref_sumber_perolehan`'
      '&WHERE')
    Left = 104
    Top = 96
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQSumberPerolehanid: TIntegerField
      FieldName = 'id'
    end
    object MyQSumberPerolehansandi: TStringField
      FieldName = 'sandi'
      FixedChar = True
      Size = 2
    end
    object MyQSumberPerolehansumber_perolehan: TStringField
      FieldName = 'sumber_perolehan'
      Size = 250
    end
    object MyQSumberPerolehanselectable: TSmallintField
      FieldName = 'selectable'
    end
  end
  object dsStatusAset: TMyDataSource
    DataSet = MyQStatusAset
    Left = 208
    Top = 96
  end
  object MyQStatusAset: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT `id`, `sandi`, `status_aset_ati`, `selectable`'
      'FROM `apolo_ref_status_aset_ati`'
      '&WHERE')
    Left = 240
    Top = 96
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQStatusAsetid: TIntegerField
      FieldName = 'id'
    end
    object MyQStatusAsetsandi: TStringField
      FieldName = 'sandi'
      FixedChar = True
      Size = 1
    end
    object MyQStatusAsetstatus_aset_ati: TStringField
      FieldName = 'status_aset_ati'
      Size = 250
    end
    object MyQStatusAsetselectable: TSmallintField
      FieldName = 'selectable'
    end
  end
end
