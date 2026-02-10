inherited fr_ProgramSetting: Tfr_ProgramSetting
  Left = 323
  Top = 216
  Caption = 'Program Setting'
  ClientHeight = 424
  ClientWidth = 589
  ExplicitWidth = 595
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 15
  object bt_ok: TsBitBtn [1]
    Left = 428
    Top = 391
    Width = 75
    Height = 25
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
    TabOrder = 3
    OnClick = bt_okClick
  end
  object bt_cancel: TsBitBtn [2]
    Left = 503
    Top = 391
    Width = 78
    Height = 25
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
    TabOrder = 4
    OnClick = bt_cancelClick
  end
  object Panel1: TsPanel [3]
    Left = 8
    Top = 8
    Width = 573
    Height = 121
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 122
      Height = 13
      AutoSize = False
      Caption = 'Kombinasi Warna Huruf'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 43
      Width = 122
      Height = 13
      AutoSize = False
      Caption = 'Warna Item Terpilih'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 67
      Width = 122
      Height = 13
      AutoSize = False
      Caption = 'Warna Item Min Stock'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 91
      Width = 122
      Height = 13
      AutoSize = False
      Caption = 'Warna Item Max Stock'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 240
      Top = 19
      Width = 66
      Height = 13
      AutoSize = False
      Caption = 'Warna Latar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 240
      Top = 40
      Width = 66
      Height = 13
      AutoSize = False
      Caption = 'Warna Latar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 417
      Top = 19
      Width = 112
      Height = 13
      AutoSize = False
      Caption = 'Setiap                Baris'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ColorGridMaxFront: TColorBox
      Left = 136
      Top = 88
      Width = 89
      Height = 22
      DefaultColorColor = clRed
      Selected = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ColorGridMinFront: TColorBox
      Left = 136
      Top = 64
      Width = 89
      Height = 22
      DefaultColorColor = clGreen
      Selected = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ColorGridSelectedFront: TColorBox
      Left = 136
      Top = 40
      Width = 89
      Height = 22
      DefaultColorColor = clWhite
      Selected = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ColorGridOddFront: TColorBox
      Left = 136
      Top = 16
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ColorGridSelectedBg: TColorBox
      Left = 312
      Top = 40
      Width = 89
      Height = 22
      Selected = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ColorGridOddBg: TColorBox
      Left = 312
      Top = 16
      Width = 89
      Height = 22
      Selected = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ColorGridRow: TEdit
      Left = 456
      Top = 16
      Width = 33
      Height = 23
      TabOrder = 2
      Text = '0'
      OnKeyPress = ColorGridRowKeyPress
    end
  end
  object sPanel1: TsPanel [4]
    Left = 8
    Top = 135
    Width = 573
    Height = 103
    TabOrder = 1
    object Label8: TLabel
      Left = 12
      Top = 33
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Nama Domain Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 55
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Nama File Setup'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 12
      Top = 11
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'MicroBPR Version '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 12
      Top = 77
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'IP SMS Center'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 312
      Top = 11
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'FTP Domain'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label15: TLabel
      Left = 312
      Top = 33
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'FTP Username'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 312
      Top = 55
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'FTP Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label17: TLabel
      Left = 312
      Top = 77
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'FTP Folder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object nm_versi: TsEdit
      Left = 136
      Top = 8
      Width = 89
      Height = 23
      ReadOnly = True
      TabOrder = 0
    end
    object nm_domain: TsEdit
      Left = 136
      Top = 30
      Width = 163
      Height = 23
      TabOrder = 2
    end
    object nm_file_setup: TsEdit
      Left = 136
      Top = 52
      Width = 163
      Height = 23
      TabOrder = 4
    end
    object nm_ip_sms: TsEdit
      Left = 136
      Top = 74
      Width = 163
      Height = 23
      TabOrder = 6
    end
    object ftp_user: TsEdit
      Left = 400
      Top = 30
      Width = 163
      Height = 23
      TabOrder = 3
      Visible = False
    end
    object ftp_password: TsEdit
      Left = 400
      Top = 52
      Width = 163
      Height = 23
      Hint = 'Biarkan kosong jika tidak ada perubahan'
      PasswordChar = '*'
      TabOrder = 5
      Visible = False
    end
    object ftp_folder: TsEdit
      Left = 400
      Top = 74
      Width = 163
      Height = 23
      Hint = 'Contoh penulisan : /public/ftp/upload/'
      TabOrder = 7
      Visible = False
    end
    object ftp_name: TsEdit
      Left = 400
      Top = 8
      Width = 163
      Height = 23
      TabOrder = 1
      Visible = False
    end
  end
  object sPanel2: TsPanel [5]
    Left = 8
    Top = 244
    Width = 573
    Height = 141
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 2
    object Label18: TLabel
      Left = 12
      Top = 11
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Connection Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 12
      Top = 33
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Host Server'
    end
    object Label21: TLabel
      Left = 12
      Top = 55
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Port'
    end
    object Label22: TLabel
      Left = 12
      Top = 77
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Database Slik'
    end
    object Label23: TLabel
      Left = 312
      Top = 33
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'Host ID'
    end
    object Label24: TLabel
      Left = 312
      Top = 55
      Width = 82
      Height = 13
      AutoSize = False
      Caption = 'Host IP VPN'
    end
    object Label5: TLabel
      Left = 12
      Top = 99
      Width = 118
      Height = 13
      AutoSize = False
      Caption = 'Database Core'
    end
    object cb_backup_db: TsComboBox
      Left = 136
      Top = 8
      Width = 427
      Height = 23
      Hint = 'Nama Koneksi'
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = -1
      TabOrder = 0
      OnChange = cb_backup_dbChange
    end
    object con_host: TEdit
      Left = 136
      Top = 30
      Width = 163
      Height = 23
      Hint = 'IP Server'
      TabStop = False
      CharCase = ecLowerCase
      ReadOnly = True
      TabOrder = 1
    end
    object con_port: TEdit
      Left = 136
      Top = 52
      Width = 49
      Height = 23
      Hint = 'Port Database Server'
      TabStop = False
      CharCase = ecLowerCase
      ReadOnly = True
      TabOrder = 3
    end
    object bt_new: TsBitBtn
      Left = 370
      Top = 82
      Width = 65
      Height = 49
      Caption = 'New'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1DDDDDDDDDD
        DDDDD11DDDDDDDD4DDDDD111DDDDD4D4D4DDD1111DDDDD444DDDD11111DD4444
        444DD1111DDDDD444DDDD111DDDDD4D4D4DDD11DDDDDDDD4DDDDD1DDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      Layout = blGlyphTop
      TabOrder = 6
      OnClick = bt_newClick
    end
    object bt_edit: TsBitBtn
      Left = 441
      Top = 82
      Width = 58
      Height = 49
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
      Layout = blGlyphTop
      TabOrder = 7
      OnClick = bt_editClick
    end
    object bt_delete: TsBitBtn
      Left = 505
      Top = 82
      Width = 58
      Height = 49
      Caption = 'Delete'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD18DDDDDDD8D1DDDD118DDD
        DD18D11DDD811DDDD81DD111DDD118DD818DD1111DD8118811DDD11111DD1111
        1DDDD1111DDD8111DDDDD111DD8811118DDDD11DD1111DD118DDD1DDD11DDDDD
        118DDDDDDDDDDDDDD11DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      Layout = blGlyphTop
      TabOrder = 8
      OnClick = bt_deleteClick
    end
    object con_db: TEdit
      Left = 136
      Top = 74
      Width = 163
      Height = 23
      Hint = 'Nama Database'
      TabStop = False
      CharCase = ecLowerCase
      ReadOnly = True
      TabOrder = 5
    end
    object con_host_id: TEdit
      Left = 400
      Top = 30
      Width = 163
      Height = 23
      Hint = 'Server ID'
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 2
    end
    object con_ip_vpn: TEdit
      Left = 400
      Top = 52
      Width = 163
      Height = 23
      Hint = 'IP VPN Server'
      TabStop = False
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 4
    end
    object con_db_report: TEdit
      Left = 136
      Top = 96
      Width = 163
      Height = 23
      Hint = 'Nama Database Report'
      TabStop = False
      CharCase = ecLowerCase
      ReadOnly = True
      TabOrder = 9
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 464
  end
end
