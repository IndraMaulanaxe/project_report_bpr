inherited fr_EntryFormDSJ0004: Tfr_EntryFormDSJ0004
  Caption = 'Form 0004 -  Entry Daftar Data Simpanan Join'
  ClientHeight = 208
  ClientWidth = 542
  ExplicitWidth = 548
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 16
  inherited PanelHeader: TPanel
    Width = 542
    ExplicitWidth = 542
  end
  inherited PanelContent: TcxGroupBox
    ExplicitWidth = 542
    ExplicitHeight = 164
    Height = 164
    Width = 542
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 538
      Height = 160
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabPage1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 156
      ClientRectLeft = 4
      ClientRectRight = 534
      ClientRectTop = 27
      object cxTabPage1: TcxTabSheet
        Caption = 'Page 1'
        ImageIndex = 0
        object PanelTab1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          PanelStyle.Active = True
          ParentBackground = False
          ParentColor = False
          Style.Color = 3355443
          TabOrder = 0
          OnMouseDown = bgMouseDown
          OnMouseMove = bgMouseMove
          OnMouseUp = bgMouseUp
          Height = 129
          Width = 530
          object cxLabel2: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 23
            AutoSize = False
            Caption = 'Nasabah ID'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 152
            AnchorY = 33
          end
          object cxLabel1: TcxLabel
            Left = 17
            Top = 50
            AutoSize = False
            Caption = 'No Rekening'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Transparent = True
            Height = 24
            Width = 135
            AnchorY = 62
          end
          object nasabah_id: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 21
            Hint = 'ID Nasabah'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 2
            Height = 24
            Width = 298
          end
          object no_rekening: TcxTextEdit
            Tag = 1
            Left = 185
            Top = 51
            Hint = 'Nomor Rekening'
            TabStop = False
            AutoSize = False
            ParentColor = True
            Properties.Alignment.Horz = taLeftJustify
            Style.LookAndFeel.Kind = lfOffice11
            Style.TextColor = clWindow
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 3
            Height = 24
            Width = 298
          end
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 83
            AutoSize = False
            Caption = 'Persentase Kepemilikan'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Transparent = True
            Height = 19
            Width = 152
            AnchorY = 93
          end
          object persentase_kepemilikan: TcxCurrencyEdit
            Left = 185
            Top = 81
            Hint = 'Persentase Kepemilikan'
            EditValue = '0'
            ParentColor = True
            ParentFont = False
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,#0'
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindow
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.TextColor = clWindow
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
        end
      end
    end
  end
  inherited PanelFooter: TcxGroupBox
    Top = 164
    ExplicitTop = 164
    ExplicitWidth = 542
    ExplicitHeight = 44
    Height = 44
    Width = 542
    inherited btlb_Refresh: TcxButton
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools1: TcxButton
      Left = 11
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 11
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools2: TcxButton
      Left = 17
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 17
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Save: TcxButton
      Left = 355
      Height = 34
      OnClick = btlb_SaveClick
      ExplicitLeft = 355
      ExplicitHeight = 34
    end
    inherited btlb_Close: TcxButton
      Left = 537
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 537
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Cancel: TcxButton
      Left = 446
      Height = 34
      ExplicitLeft = 446
      ExplicitHeight = 34
    end
    inherited btlb_Print: TcxButton
      Left = 349
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 349
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_tools3: TcxButton
      Left = 23
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 23
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Delete: TcxButton
      Left = 343
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 343
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Edit: TcxButton
      Left = 337
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 337
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Insert: TcxButton
      Left = 331
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 331
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
    inherited btlb_Pilih: TcxButton
      Left = 325
      Width = 0
      Height = 34
      Enabled = False
      Visible = False
      ExplicitLeft = 325
      ExplicitWidth = 0
      ExplicitHeight = 34
    end
  end
  inherited PanelTopSystem: TPanel
    Width = 542
    ExplicitWidth = 542
    inherited IconClose: TLabel
      Left = 508
      ExplicitLeft = 771
    end
  end
  object dsMyQTemp: TMyDataSource
    Left = 480
    Top = 56
  end
  object MyQTemp: TMyQuery
    Connection = dm_bpr1.MyCon2
    SQL.Strings = (
      'SELECT'
      '  `nasabah_id`,'
      '  `no_rekening`,'
      '  `persentase_kepemilikan`'
      'FROM `lps_dk_f0004`'
      '&WHERE')
    ReadOnly = True
    Left = 400
    Top = 48
    MacroData = <
      item
        Name = 'WHERE'
      end>
    object MyQTempnasabah_id: TStringField
      FieldName = 'nasabah_id'
    end
    object MyQTempno_rekening: TStringField
      FieldName = 'no_rekening'
      Size = 35
    end
    object MyQTemppersentase_kepemilikan: TFloatField
      FieldName = 'persentase_kepemilikan'
    end
  end
end
