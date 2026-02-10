inherited fr_DaftarBackupAPOLO: Tfr_DaftarBackupAPOLO
  Caption = 'Daftar Backup APOLO'
  ClientHeight = 377
  ClientWidth = 722
  ExplicitWidth = 728
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 340
    Width = 722
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 2
    object bt_close: TBitBtn
      Left = 641
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Close'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAA0000000000000AAA0333333333330AAA03333333333
        30AAA0333333333330AAA0333333333330AAA0333333333330AAA03333333333
        30AAA0333333333330AAA8000000000008AAAA0FFF0AAAAAAAA4AAA000AAAAAA
        AAA4AAAAAAAAAAAA4A4AAAAAAAAAAAAA44AAAAAAAAAAAAAA444A}
      TabOrder = 1
      OnClick = bt_closeClick
    end
    object bt_pilih: TBitBtn
      Left = 560
      Top = 6
      Width = 81
      Height = 25
      Align = alRight
      Caption = 'Pilih'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bt_pilihClick
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 0
    Width = 722
    Height = 33
    Align = alTop
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 0
    object Label58: TLabel
      Left = 6
      Top = 6
      Width = 50
      Height = 21
      Align = alLeft
      AutoSize = False
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 24
      ExplicitTop = 4
      ExplicitHeight = 13
    end
    object Edit1: TEdit
      Left = 56
      Top = 6
      Width = 321
      Height = 21
      Align = alLeft
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = DBGrid1KeyDown
      ExplicitHeight = 23
    end
    object bt_search: TBitBtn
      Left = 377
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
      OnClick = bt_searchClick
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 0
    Top = 33
    Width = 722
    Height = 307
    Align = alClient
    DataSource = dsDaftar
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = bt_pilihClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'kode_arsip'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Arsip'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_laporan'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal  Laporan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created_by'
        Title.Alignment = taCenter
        Title.Caption = 'Create by'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_created'
        Title.Alignment = taCenter
        Title.Caption = 'Last Created'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_updated'
        Title.Alignment = taCenter
        Title.Caption = 'Last Update'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 175
        Visible = True
      end>
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 680
    Top = 0
  end
  object dsDaftar: TMyDataSource
    DataSet = MyQDaftar
    Left = 72
    Top = 96
  end
  object MyQDaftar: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT `kode_arsip`, `tgl_laporan`, `created_by`, `last_created`' +
        ', `last_updated`'
      'FROM `pr_backup_log`'
      '&WHERE'
      'ORDER BY `kode_arsip`')
    Left = 32
    Top = 96
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQDaftarkode_arsip: TStringField
      FieldName = 'kode_arsip'
      Origin = 'apolo_backup_log.kode_arsip'
      Size = 25
    end
    object MyQDaftartgl_laporan: TDateField
      Alignment = taCenter
      FieldName = 'tgl_laporan'
      Origin = 'apolo_backup_log.tgl_laporan'
    end
    object MyQDaftarcreated_by: TIntegerField
      FieldName = 'created_by'
      Origin = 'apolo_backup_log.created_by'
    end
    object MyQDaftarlast_created: TDateTimeField
      FieldName = 'last_created'
      Origin = 'apolo_backup_log.last_created'
    end
    object MyQDaftarlast_updated: TDateTimeField
      FieldName = 'last_updated'
      Origin = 'apolo_backup_log.last_updated'
    end
  end
end
