object frmContacts: TfrmContacts
  Left = 0
  Top = 0
  Caption = 'Contact Register'
  ClientHeight = 381
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 526
    Height = 381
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    object TabSheet1: TTabSheet
      Caption = 'Search'
      ExplicitLeft = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 518
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitTop = -6
        object edtSearch: TEdit
          Left = 0
          Top = 14
          Width = 225
          Height = 21
          TabOrder = 0
        end
        object btnSearch: TButton
          Left = 240
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Search'
          TabOrder = 1
          OnClick = btnSearchClick
        end
        object rbName: TRadioButton
          Left = 321
          Top = 16
          Width = 48
          Height = 17
          Caption = 'Name'
          TabOrder = 2
        end
        object rbCode: TRadioButton
          Left = 385
          Top = 16
          Width = 48
          Height = 17
          Caption = 'Code'
          TabOrder = 3
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 518
        Height = 312
        Align = alClient
        DataSource = DContact
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Data'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 58
        Top = 24
        Width = 25
        Height = 13
        Caption = 'Code'
      end
      object Label2: TLabel
        Left = 56
        Top = 51
        Width = 27
        Height = 13
        Caption = 'Name'
      end
      object Label3: TLabel
        Left = 16
        Top = 78
        Width = 67
        Height = 13
        Caption = 'PhoneNumber'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 21
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CODE'
        DataSource = DContact
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 48
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NAME'
        DataSource = DContact
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 75
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PHONENUMBER'
        DataSource = DContact
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 120
        Width = 240
        Height = 25
        DataSource = DContact
        TabOrder = 3
      end
    end
  end
  object DContact: TDataSource
    DataSet = TabGlobal.TContact
    Left = 468
    Top = 24
  end
end
