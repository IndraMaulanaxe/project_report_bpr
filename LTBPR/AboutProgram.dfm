inherited fr_AboutLTBPR: Tfr_AboutLTBPR
  Left = 314
  Top = 209
  Caption = 'About This Program '
  ClientHeight = 384
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 521
    Height = 337
    Shape = bsFrame
  end
  object Version: TLabel [1]
    Left = 129
    Top = 175
    Width = 289
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Version'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    IsControl = True
  end
  object ProductName: TLabel [2]
    Left = 96
    Top = 159
    Width = 345
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'LAPORAN TAHUNAN BPR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    IsControl = True
  end
  object Copyright: TLabel [3]
    Left = 197
    Top = 191
    Width = 155
    Height = 33
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
    IsControl = True
  end
  object OKButton: TButton [5]
    Left = 231
    Top = 351
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object Panel1: TPanel [6]
    Left = 176
    Top = 24
    Width = 193
    Height = 129
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 2
      Top = 2
      Width = 185
      Height = 121
      Align = alClient
      Stretch = True
      IsControl = True
      ExplicitLeft = 96
      ExplicitWidth = 323
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 8
    Top = 344
  end
end
