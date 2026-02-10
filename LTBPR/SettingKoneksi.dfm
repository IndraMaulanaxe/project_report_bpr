inherited fr_SettingKoneksi: Tfr_SettingKoneksi
  Caption = 'Setting Koneksi Database'
  ClientHeight = 210
  ClientWidth = 615
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 621
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 173
    Width = 615
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 1
    object bt_cancel: TBitBtn
      Left = 531
      Top = 6
      Width = 78
      Height = 25
      Align = alRight
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333339999933333333399999999933333399338083999333399993000339
        9933393999808333993399339993333339939933399033333993993333808333
        3993993333101933399399333300099339933993330009993933399933000399
        9933339993808339933333399999999933333333399999333333}
      ParentFont = False
      TabOrder = 2
      OnClick = bt_cancelClick
    end
    object bt_save: TBitBtn
      Left = 456
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Save'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = bt_saveClick
    end
    object bt_test: TBitBtn
      Left = 381
      Top = 6
      Width = 75
      Height = 25
      Align = alRight
      Caption = 'Test'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002939
        310000001800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00292929000000180000001800000018000000080000080000008C
        210000002100000018000000180029292900FF00FF00FF00FF00FF00FF00FF00
        FF0052525A0039634A007BCE7B007BCE7B007BCE7B00393939000839310000FF
        630000FF630000FF630000BD18000042180052525A00FF00FF00FF00FF002929
        2900001021007B944A007BCE5A007BCE63007BB563007331180008BD5A0000FF
        630000FF630000FF630000FF630000BD18000042180029292900FF00FF002929
        4200006B2100394A39007B8C5A007B9C2100F7A50000CE7300000031080000E7
        4A00007B4A00007B4A00007B4A00006B31000842180029294200292929000063
        310031DE63000008180039390000FFCE0000FFBD0000FFCE0000006300000031
        18005A3118009C630000394A31007BA54A007BCE730039214A000000180000E7
        4A0000FF6300319C5A00314A080008633100DEB50000BDC61800006B0000005A
        000000310800CE7B00005A6321007BC64A007BCE73004A635A000008080000FF
        630000FF630000FF630000FF63004A7B3100FFFF4A007BC60000008C0000006B
        0000BDAD0000F7A50000735A0000BDE773007BCE7B00185A210029292900007B
        4A0000FF630000FF630008BD5A00CEBD5A007BC60000FFFF3900FFFF4A00FFFF
        3100FFF70000FFBD000073630000BDE773009C9C7300292931000839210000FF
        630000FF630000FF63004A7B3100BDE7310039A5210039A50000FFFF4A00FFFF
        3100FFFF0000FFCE00008C7308006B635A0029634A00FF00FF00000008000000
        180000001800394A3900FFFF1800005A080000630000008C000039A51800FFFF
        3100FFFF0000FFCE00007B8C5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006B635A00004A310000A53900002918007B94000039A50000BDE7
        18007B7B2100185A21007BCE7B0018001800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000063310000FF630000FF630000BD5A0039520800FFB518007B8C
        3900006B18007BCE7B005A734A0063735A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF002929420000E74A0000FF630000FF630000393100395231007B9C
        5A007BCE7B005A735A002929290008001800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00292929000063310000FF630000FF630000E74A00394A39007BCE
        5A007B8C730029293100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0052525A0000633100007B4A00007B4A00002121005A73
        390029293100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentFont = False
      TabOrder = 0
      OnClick = bt_testClick
    end
  end
  object sPanel2: TsPanel [2]
    Left = 0
    Top = 0
    Width = 615
    Height = 173
    Align = alClient
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'Connection Name'
    end
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'Host Server'
    end
    object Label3: TLabel
      Left = 8
      Top = 146
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'Database Slik'
    end
    object Label4: TLabel
      Left = 8
      Top = 65
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'Port'
    end
    object Label23: TLabel
      Left = 288
      Top = 38
      Width = 137
      Height = 13
      AutoSize = False
      Caption = 'Host ID'
    end
    object Label6: TLabel
      Left = 288
      Top = 65
      Width = 137
      Height = 13
      AutoSize = False
      Caption = 'Host IP VPN'
    end
    object Label5: TLabel
      Left = 8
      Top = 92
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'User Name'
    end
    object Label7: TLabel
      Left = 8
      Top = 119
      Width = 98
      Height = 13
      AutoSize = False
      Caption = 'Password'
    end
    object Label8: TLabel
      Left = 288
      Top = 146
      Width = 137
      Height = 13
      AutoSize = False
      Caption = 'Database Core'
    end
    object con_name: TEdit
      Left = 112
      Top = 8
      Width = 488
      Height = 23
      Hint = 'Nama Koneksi'
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = con_nameChange
    end
    object db_host: TEdit
      Left = 112
      Top = 35
      Width = 169
      Height = 23
      Hint = 'IP Server'
      CharCase = ecLowerCase
      TabOrder = 1
      OnChange = con_nameChange
    end
    object db_name_slik: TEdit
      Left = 112
      Top = 143
      Width = 169
      Height = 23
      Hint = 'Nama Database Apolo'
      CharCase = ecLowerCase
      TabOrder = 9
      OnChange = con_nameChange
    end
    object db_port: TEdit
      Left = 112
      Top = 62
      Width = 49
      Height = 23
      Hint = 'Port Database Server'
      CharCase = ecLowerCase
      TabOrder = 3
      OnChange = con_nameChange
      OnKeyPress = log_portKeyPress
    end
    object db_host_id: TEdit
      Left = 431
      Top = 35
      Width = 169
      Height = 23
      Hint = 'Server ID'
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = con_nameChange
    end
    object db_ip_vpn: TEdit
      Left = 431
      Top = 62
      Width = 169
      Height = 23
      Hint = 'IP VPN Server'
      CharCase = ecUpperCase
      TabOrder = 4
      OnChange = con_nameChange
    end
    object db_username: TEdit
      Left = 112
      Top = 89
      Width = 169
      Height = 23
      Hint = 'Nama User Database'
      PasswordChar = '*'
      TabOrder = 5
      OnChange = con_nameChange
    end
    object db_password: TEdit
      Left = 112
      Top = 116
      Width = 169
      Height = 23
      Hint = 'Password Database'
      PasswordChar = '*'
      TabOrder = 8
      OnChange = con_nameChange
    end
    object chk_test_koneksi: TsCheckBox
      Left = 288
      Top = 115
      Width = 156
      Height = 17
      Caption = 'Test Connection'
      Alignment = taLeftJustify
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object chk_online: TsCheckBox
      Left = 288
      Top = 91
      Width = 156
      Height = 17
      Caption = 'Online'
      Alignment = taLeftJustify
      AutoSize = False
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object db_name_core: TEdit
      Left = 431
      Top = 143
      Width = 169
      Height = 23
      Hint = 'Nama Database Core'
      CharCase = ecLowerCase
      TabOrder = 10
      OnChange = con_nameChange
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 8
    Top = 176
  end
  object MyConTest: TMyConnection
    Options.Compress = True
    Server = 'localhost'
    LoginPrompt = False
    Left = 40
    Top = 176
  end
end
