object fr_template: Tfr_template
  Left = 424
  Top = 228
  VertScrollBar.ButtonSize = 10
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  BorderStyle = bsDialog
  Caption = 'Form Template'
  ClientHeight = 405
  ClientWidth = 957
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnMouseDown = judulMouseDown
  PixelsPerInch = 96
  TextHeight = 15
  object lbl_view_only: TLabel
    Left = 0
    Top = 0
    Width = 54
    Height = 15
    Caption = 'View Only'
    Visible = False
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
    OnSkinItem = sSkinProvider1SkinItem
    Left = 432
    Top = 144
  end
end
