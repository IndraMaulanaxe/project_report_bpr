inherited fr_DaftarPerkiraan: Tfr_DaftarPerkiraan
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Daftar Master Perkiraan'
  ClientHeight = 334
  ClientWidth = 770
  Font.Name = 'Tahoma'
  OldCreateOrder = False
  Position = poDesktopCenter
  ExplicitWidth = 776
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 16
  inherited lbl_view_only: TLabel
    Width = 57
    Height = 16
    ExplicitWidth = 57
    ExplicitHeight = 16
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 33
    Width = 770
    Height = 264
    Align = alClient
    DataSource = dsDaftarPerkiraan
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = bt_PilihClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    OnMouseMove = DBGrid1MouseMove
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'nama_perk'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Perkiraan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_perk'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Perkiraan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_alternatif'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Alternatif'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'type_perk'
        Title.Alignment = taCenter
        Title.Caption = 'Jenis Rekening'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'g_or_d'
        Title.Alignment = taCenter
        Title.Caption = 'G/D'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo_akhir'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end>
  end
  object sPanel1: TsPanel [2]
    Left = 0
    Top = 0
    Width = 770
    Height = 33
    SkinData.SkinSection = 'PANEL'
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object Label58: TLabel
      Left = 6
      Top = 6
      Width = 54
      Height = 21
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Edit1: TEdit
      Left = 60
      Top = 6
      Width = 245
      Height = 21
      Align = alLeft
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object bt_search: TsBitBtn
      Left = 305
      Top = 6
      Width = 22
      Height = 21
      Align = alLeft
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDD0
        0DDDDDDDDDDDDD07C0DDDDD00000007CC00DDDD8777707CC070DDDD8FFF07CC0
        F70DDDD80087CC0FF70DDD87E708C0FFF70DD8FEEE708FFFF70DD8EEEEE07FFF
        F70DD8FEEE707FFFF70DDD8FEF07FFFFF70DDDD8807FFFFFF70DDDD8FFFFFFF0
        000DDDD8FFFFFFF7F8DDDDD8FFFFFFF78DDDDDD888888888DDDD}
      TabOrder = 1
      TabStop = False
      OnClick = bt_searchClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel2: TsPanel [3]
    Left = 0
    Top = 297
    Width = 770
    Height = 37
    SkinData.SkinSection = 'PANEL'
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    object bt_close: TsBitBtn
      Left = 689
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Close'
      ImageIndex = 0
      Images = dm_bpr1.ImageList1
      TabOrder = 2
      OnClick = bt_closeClick
      SkinData.SkinSection = 'BUTTON'
    end
    object bt_pilih: TsBitBtn
      Left = 614
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Pilih'
      ImageIndex = 5
      Images = dm_bpr1.ImageList1
      TabOrder = 1
      OnClick = bt_PilihClick
      SkinData.SkinSection = 'BUTTON'
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
      OnClick = bt_refreshClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 232
    Top = 80
  end
  object MyQDaftarPerkiraan: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT kode_perk,CAST(CONCAT(REPEAT('#39' '#39',level_perk*4),nama_perk)' +
        ' AS CHAR(255)) AS nama_perk,'
      
        'kode_alternatif,kode_konsolidasi,type_perk,saldo_akhir,d_or_k,g_' +
        'or_d ,level_perk,id_induk,'
      
        'saldo_awal,saldo_kredit,saldo_debet,kode_induk,id_perk,nama_perk' +
        ' as nm_perk'
      'FROM perkiraan'
      '&WHERE &WHERE2 &ORDER &LIMIT')
    FetchAll = False
    Left = 264
    Top = 112
    MacroData = <
      item
        Name = 'WHERE'
      end
      item
        Name = 'WHERE2'
      end
      item
        Name = 'ORDER'
      end
      item
        Name = 'LIMIT'
      end>
    object MyQDaftarPerkiraankode_perk: TStringField
      FieldName = 'kode_perk'
      Origin = 'perkiraan.kode_perk'
      FixedChar = True
    end
    object MyQDaftarPerkiraannama_perk: TStringField
      FieldName = 'nama_perk'
      Origin = 'nama_perk'
      Size = 255
    end
    object MyQDaftarPerkiraankode_alternatif: TStringField
      FieldName = 'kode_alternatif'
      Origin = 'perkiraan.kode_alternatif'
      FixedChar = True
    end
    object MyQDaftarPerkiraankode_konsolidasi: TStringField
      FieldName = 'kode_konsolidasi'
      Origin = 'perkiraan.kode_konsolidasi'
      FixedChar = True
    end
    object MyQDaftarPerkiraantype_perk: TStringField
      FieldName = 'type_perk'
      Origin = 'perkiraan.type_perk'
      FixedChar = True
      Size = 15
    end
    object MyQDaftarPerkiraansaldo_akhir: TFloatField
      FieldName = 'saldo_akhir'
      Origin = 'perkiraan.saldo_akhir'
      DisplayFormat = '#,#0.00'
    end
    object MyQDaftarPerkiraand_or_k: TStringField
      FieldName = 'd_or_k'
      Origin = 'perkiraan.d_or_k'
      FixedChar = True
      Size = 1
    end
    object MyQDaftarPerkiraang_or_d: TStringField
      FieldName = 'g_or_d'
      Origin = 'perkiraan.g_or_d'
      FixedChar = True
      Size = 1
    end
    object MyQDaftarPerkiraanlevel_perk: TIntegerField
      FieldName = 'level_perk'
      Origin = 'perkiraan.level_perk'
    end
    object MyQDaftarPerkiraanid_induk: TIntegerField
      FieldName = 'id_induk'
      Origin = 'perkiraan.id_induk'
    end
    object MyQDaftarPerkiraansaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      Origin = 'perkiraan.saldo_awal'
      DisplayFormat = '#,#0.00'
    end
    object MyQDaftarPerkiraansaldo_kredit: TFloatField
      FieldName = 'saldo_kredit'
      Origin = 'perkiraan.saldo_kredit'
      DisplayFormat = '#,#0.00'
    end
    object MyQDaftarPerkiraansaldo_debet: TFloatField
      FieldName = 'saldo_debet'
      Origin = 'perkiraan.saldo_debet'
      DisplayFormat = '#,#0.00'
    end
    object MyQDaftarPerkiraankode_induk: TStringField
      FieldName = 'kode_induk'
      Origin = 'perkiraan.kode_induk'
      FixedChar = True
    end
    object MyQDaftarPerkiraanid_perk: TIntegerField
      FieldName = 'id_perk'
      Origin = 'perkiraan.id_perk'
    end
    object MyQDaftarPerkiraannm_perk: TStringField
      FieldName = 'nm_perk'
      FixedChar = True
      Size = 50
    end
  end
  object dsDaftarPerkiraan: TMyDataSource
    DataSet = MyQDaftarPerkiraan
    Left = 232
    Top = 112
  end
end
