object fr_FormRefAPOLO: Tfr_FormRefAPOLO
  Left = 0
  Top = 0
  Caption = 'Referensi'
  ClientHeight = 321
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 633
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
      ExplicitLeft = 4
    end
    object Edit1: TEdit
      Left = 56
      Top = 6
      Width = 200
      Height = 21
      Align = alLeft
      TabOrder = 0
      OnChange = Edit1Change
    end
    object bt_search: TBitBtn
      Left = 256
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
    object nm_table: TEdit
      Left = 278
      Top = 6
      Width = 200
      Height = 21
      Align = alLeft
      TabOrder = 2
      Visible = False
    end
    object filter2: TEdit
      Left = 478
      Top = 6
      Width = 200
      Height = 21
      Align = alLeft
      TabOrder = 3
      Visible = False
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 284
    Width = 633
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 1
    object bt_close: TBitBtn
      Left = 552
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
      Left = 471
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 633
    Height = 251
    Align = alClient
    DataSource = dsMasterReferensi
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
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
        FieldName = 'keterangan'
        Title.Alignment = taCenter
        Title.Caption = 'Keterangan'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 542
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'selectable'
        Title.Alignment = taCenter
        Title.Caption = 'Selectable'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
  end
  object dsMasterReferensi: TMyDataSource
    DataSet = MyQMasterReferensi
    Left = 72
    Top = 96
  end
  object MyQMasterReferensi: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      
        'SELECT &FIELDID as `id`, &FIELD1 AS `sandi`, &FIELD2 AS `keteran' +
        'gan`, &FIELDSELECT as `selectable`'
      'FROM &NAMA_TABLE'
      '&WHERE'
      'ORDER BY `id`')
    Left = 32
    Top = 96
    MacroData = <
      item
        Name = 'FIELDID'
        Value = '`id`'
      end
      item
        Name = 'FIELD1'
        Value = '`sandi`'
      end
      item
        Name = 'FIELD2'
        Value = '`nama_kotakab`'
      end
      item
        Name = 'FIELDSELECT'
        Value = '`selectable`'
      end
      item
        Name = 'NAMA_TABLE'
        Value = '`apolo_ref_sandi_kotakab`'
      end
      item
        Name = 'WHERE'
      end>
  end
  object sSkinProvider1: TsSkinProvider
    MakeSkinMenu = True
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 605
  end
end
