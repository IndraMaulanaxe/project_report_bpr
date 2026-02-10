inherited fr_CekPassword: Tfr_CekPassword
  Left = 371
  Top = 258
  ActiveControl = Edit1
  Caption = 'Cek Password Otorisator'
  ClientHeight = 160
  ClientWidth = 281
  OldCreateOrder = False
  ExplicitWidth = 287
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 265
    Height = 113
    Shape = bsFrame
  end
  object Label2: TLabel [1]
    Left = 69
    Top = 39
    Width = 142
    Height = 13
    AutoSize = False
    Caption = 'Masukkan Password Otorisasi'
    Transparent = True
  end
  object bt_simpan: TsBitBtn [3]
    Left = 103
    Top = 127
    Width = 75
    Height = 25
    Caption = '&Ok'
    Default = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
      333333333F777773FF333333008888800333333377333F3773F3333077870787
      7033333733337F33373F3308888707888803337F33337F33337F330777880887
      7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
      7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
      0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
      03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
      033333337F73FF737F33B33B778000877333333373F777337333333B30888880
      33333333373FFFF73333333B3300000333333333337777733333}
    ModalResult = 1
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = bt_simpanClick
  end
  object Edit1: TEdit [4]
    Left = 20
    Top = 63
    Width = 241
    Height = 23
    PasswordChar = '*'
    TabOrder = 0
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 216
    Top = 128
  end
end
