inherited fr_GetSystemDate: Tfr_GetSystemDate
  Caption = 'Tanggal System'
  ClientHeight = 155
  ClientWidth = 265
  ExplicitWidth = 271
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 265
  end
  inherited PanelContent: TcxGroupBox
    Style.BorderStyle = ebsNone
    ExplicitLeft = -7
    ExplicitTop = -1
    ExplicitWidth = 265
    ExplicitHeight = 113
    Height = 113
    Width = 265
    object tgl: TDateTimePicker
      Left = 120
      Top = 37
      Width = 89
      Height = 21
      Date = 39119.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.913934988428081800
      TabOrder = 0
      OnChange = tglChange
    end
    object ket_tgl: TcxLabel
      Left = 2
      Top = 91
      Align = alBottom
      Caption = 'Laporan Tahunan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.WordWrap = True
      Transparent = True
      Width = 261
      AnchorX = 133
    end
    object cxLabel1: TcxLabel
      Left = 48
      Top = 37
      Caption = 'Tanggal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Transparent = True
      AnchorX = 73
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 113
    Style.BorderStyle = ebsNone
    Width = 265
    inherited btlb_Refresh: TcxButton
      Visible = False
    end
    inherited btlb_tools1: TcxButton
      Visible = False
    end
    inherited btlb_tools2: TcxButton
      Visible = False
    end
    inherited btlb_Save: TcxButton
      Left = 95
      Hint = 'OK'
      Align = alNone
      Caption = 'OK'
      OnClick = btlb_SaveClick
      ExplicitLeft = 95
    end
    inherited btlb_Close: TcxButton
      Left = 175
      Visible = False
    end
    inherited btlb_Cancel: TcxButton
      Left = 84
      Visible = False
    end
    inherited btlb_Print: TcxButton
      Left = -7
      Visible = False
    end
    inherited btlb_tools3: TcxButton
      Visible = False
    end
    inherited btlb_Delete: TcxButton
      Left = -98
      Visible = False
    end
    inherited btlb_Edit: TcxButton
      Left = -189
      Visible = False
    end
    inherited btlb_Insert: TcxButton
      Left = -280
      Visible = False
    end
    inherited btlb_Pilih: TcxButton
      Left = -371
      Visible = False
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 265
    inherited IconClose: TLabel
      Left = 231
    end
  end
end
