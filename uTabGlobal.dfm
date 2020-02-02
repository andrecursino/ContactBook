object TabGlobal: TTabGlobal
  OldCreateOrder = False
  Height = 284
  Width = 433
  object Conection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Andr'#233'\Documents\DelphiExercises\ContactBook\Da' +
        'ta\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 24
    Top = 24
  end
  object Transaction: TFDTransaction
    Connection = Conection
    Left = 96
    Top = 24
  end
  object TContact: TFDQuery
    AfterPost = TContactAfterPost
    Connection = Conection
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'select * from CONTACT'
      'order by Name')
    Left = 24
    Top = 88
    object TContactCODE: TIntegerField
      FieldName = 'CODE'
      Origin = 'CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TContactNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object TContactPHONENUMBER: TStringField
      FieldName = 'PHONENUMBER'
      Origin = 'PHONENUMBER'
      Size = 15
    end
  end
end
