inherited fr_EntryFormLpsDk0004: Tfr_EntryFormLpsDk0004
  Caption = 'Form Dk0004 -  Entry Daftar Data Simpanan Join'
  ClientHeight = 198
  ClientWidth = 601
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 607
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel [1]
    Left = 0
    Top = 161
    Width = 601
    Height = 37
    Align = alBottom
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentColor = True
    TabOrder = 0
    object bt_save: TsBitBtn
      Left = 445
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Save'
      Align = alRight
      Caption = '&Save'
      ImageIndex = 78
      Images = dm_bpr1.ImageList1
      TabOrder = 0
      OnClick = bt_saveClick
    end
    object bt_cancel: TsBitBtn
      Left = 520
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Close'
      Align = alRight
      Caption = '&Cancel'
      ImageIndex = 1
      Images = dm_bpr1.ImageList1
      TabOrder = 1
      OnClick = bt_cancelClick
    end
  end
  object sCurrencyEdit3: TsCurrencyEdit [2]
    Left = 293
    Top = 8
    Width = 136
    Height = 21
    Hint = 'Jumlah Pendanaan Sindikasi Plafon'
    AutoSize = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    DisplayFormat = '#,#0.00'
  end
  object GroupEdit: TsGroupBox [3]
    Left = 0
    Top = 0
    Width = 601
    Height = 161
    Align = alClient
    Caption = 'Daftar Data Keuangan'
    TabOrder = 2
    object sPageControl1: TsPageControl
      Left = 2
      Top = 17
      Width = 597
      Height = 142
      Align = alClient
      TabOrder = 0
      ActiveIsBold = True
    end
    object sPanel2: TsPanel
      Left = 2
      Top = 17
      Width = 597
      Height = 142
      Hint = 'persentase_kepemilikan'
      Align = alClient
      Color = clHighlightText
      ParentBackground = False
      TabOrder = 1
      object Label16: TLabel
        Left = 24
        Top = 64
        Width = 153
        Height = 23
        AutoSize = False
        Caption = 'No Rekening'
      end
      object Label3: TLabel
        Left = 24
        Top = 38
        Width = 137
        Height = 13
        AutoSize = False
        Caption = 'Nasabah Id'
      end
      object Label1: TLabel
        Left = 24
        Top = 93
        Width = 153
        Height = 21
        AutoSize = False
        Caption = 'Persentase Kepemilikan'
      end
      object no_rekening: TEdit
        Tag = 1
        Left = 199
        Top = 64
        Width = 162
        Height = 23
        Hint = 'Nomor Rekening'
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object nasabah_id: TEdit
        Tag = 1
        Left = 199
        Top = 35
        Width = 162
        Height = 23
        Hint = 'Nasabah Id'
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object persentase_kepemilikan: TsCurrencyEdit
        Left = 199
        Top = 93
        Width = 162
        Height = 21
        Hint = 'Persentase Kepemilikan'
        AutoSize = False
        TabOrder = 2
        SkinData.SkinSection = 'EDIT'
        DecimalPlaces = 1
        DisplayFormat = '#,#0'
      end
    end
  end
  inherited sSkinProvider1: TsSkinProvider
    Left = 544
    Top = 0
  end
  object dsMyQTemp: TMyDataSource
    DataSet = MyQTemp
    Left = 416
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
    Left = 480
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
