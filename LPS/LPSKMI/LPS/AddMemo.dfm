inherited fr_AddMemo: Tfr_AddMemo
  Left = 431
  Top = 305
  Caption = 'fr_AddMemo'
  ClientHeight = 247
  ClientWidth = 452
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 458
  ExplicitHeight = 276
  PixelsPerInch = 96
  TextHeight = 15
  object Memo1: TMemo [1]
    Left = 0
    Top = 0
    Width = 452
    Height = 222
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
    WantReturns = False
    ExplicitWidth = 362
    ExplicitHeight = 315
  end
  object bt_ok: TsBitBtn [2]
    Left = 0
    Top = 222
    Width = 452
    Height = 25
    Align = alBottom
    Caption = 'Ok'
    Default = True
    TabOrder = 1
    OnClick = bt_okClick
    SkinData.SkinSection = 'BUTTON'
    ExplicitTop = 315
    ExplicitWidth = 362
  end
end
