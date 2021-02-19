object DMBase: TDMBase
  OldCreateOrder = False
  Height = 369
  Width = 370
  object DB: TFDConnection
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDTransaction1: TFDTransaction
    Connection = DB
    Left = 40
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 128
  end
  object QryEmpresa: TFDQuery
    CachedUpdates = True
    Connection = DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA" FROM "EMPRESA"'
      'WHERE "COD_EMP" =:CODIGO')
    Left = 40
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object QryEmpresaCOD_EMP: TStringField
      DisplayWidth = 20
      FieldName = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryEmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
  end
  object QryCadEmpresa: TFDQuery
    CachedUpdates = True
    Connection = DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA","DT_CADASTRO" FROM "EMPRESA"'
      'WHERE "COD_EMP" = '#39'-1'#39)
    Left = 40
    Top = 296
    object StringField1: TStringField
      DisplayWidth = 20
      FieldName = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField2: TStringField
      DisplayWidth = 100
      FieldName = 'EMPRESA'
      Size = 100
    end
    object QryCadEmpresaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 40
    Top = 184
  end
end
