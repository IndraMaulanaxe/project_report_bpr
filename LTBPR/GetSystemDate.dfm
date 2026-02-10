inherited fr_GetSystemDate: Tfr_GetSystemDate
  Left = 368
  Top = 221
  Caption = 'Tanggal System'
  ClientHeight = 155
  ClientWidth = 265
  ExplicitWidth = 271
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 249
    Height = 108
    Shape = bsFrame
  end
  object Label1: TLabel [1]
    Left = 40
    Top = 27
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object ket_tgl: TLabel [2]
    Left = 16
    Top = 51
    Width = 233
    Height = 54
    Alignment = taCenter
    AutoSize = False
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object bt_ok: TsBitBtn [4]
    Left = 95
    Top = 122
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
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
    OnClick = bt_okClick
  end
  object tgl: TDateTimePicker [5]
    Left = 120
    Top = 24
    Width = 89
    Height = 21
    Date = 39119.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 0.913934988428081800
    TabOrder = 0
    OnChange = tglChange
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 224
    Top = 16
  end
end
