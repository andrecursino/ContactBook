object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  ActiveControl = edtName
  Caption = 'Contact Book v1.0'
  ClientHeight = 191
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 19
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 12
    Top = 59
    Width = 70
    Height = 13
    Caption = 'Phone Number'
  end
  object edtName: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtPhoneNumber: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnShow: TButton
    Left = 88
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 2
    OnClick = btnShowClick
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 64
    object Register1: TMenuItem
      Caption = 'Register'
      object Contacts1: TMenuItem
        Caption = 'Contacts'
        OnClick = Contacts1Click
      end
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
