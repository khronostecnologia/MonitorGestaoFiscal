object DMImportacaoXML: TDMImportacaoXML
  OldCreateOrder = False
  Height = 663
  Width = 1195
  object DsQryNF: TDataSource
    DataSet = MemNF
    Left = 24
    Top = 16
  end
  object DsQryItensNF: TDataSource
    DataSet = MemItensNF
    Left = 24
    Top = 72
  end
  object MemNF: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 104
    Top = 16
    object MemNFIND_OPER: TStringField
      FieldName = 'IND_OPER'
      Size = 50
    end
    object MemNFCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 50
    end
    object MemNFCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 5
    end
    object MemNFSER: TStringField
      FieldName = 'SER'
      Size = 5
    end
    object MemNFNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemNFCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 44
    end
    object MemNFDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object MemNFDT_E_ES: TDateTimeField
      FieldName = 'DT_E_ES'
    end
    object MemNFVL_DOC: TFloatField
      FieldName = 'VL_DOC'
      DisplayFormat = '0.00'
    end
    object MemNFVL_MERC: TFloatField
      FieldName = 'VL_MERC'
      DisplayFormat = '0.00'
    end
    object MemNFVL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemNFVL_FRT: TFloatField
      FieldName = 'VL_FRT'
      DisplayFormat = '0.00'
    end
    object MemNFVL_SEG: TFloatField
      FieldName = 'VL_SEG'
      DisplayFormat = '0.00'
    end
    object MemNFVL_OUT_DA: TFloatField
      FieldName = 'VL_OUT_DA'
      DisplayFormat = '0.00'
    end
    object MemNFVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNFVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNFVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNFVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNFVL_BC_IPI: TFloatField
      FieldName = 'VL_BC_IPI'
      DisplayFormat = '0.00'
    end
    object MemNFVL_IPI: TFloatField
      FieldName = 'VL_IPI'
      DisplayFormat = '0.00'
    end
    object MemNFVL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
      DisplayFormat = '0.00'
    end
    object MemNFVL_PIS: TFloatField
      FieldName = 'VL_PIS'
      DisplayFormat = '0.00'
    end
    object MemNFVL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNFVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNFPARTICIPANTE: TStringField
      FieldName = 'PARTICIPANTE'
      Size = 100
    end
    object MemNFCOD_EMP: TStringField
      FieldName = 'COD_EMP'
    end
    object MemNFEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object MemNFMES: TIntegerField
      FieldName = 'MES'
    end
    object MemNFANO: TIntegerField
      FieldName = 'ANO'
    end
    object MemNFUF_PART: TStringField
      FieldName = 'UF_PART'
      Size = 2
    end
    object MemNFUF_EMP: TStringField
      FieldName = 'UF_EMP'
      Size = 2
    end
    object MemNFCRT: TStringField
      FieldName = 'CRT'
      Size = 100
    end
    object MemNFINDFINAL: TStringField
      FieldName = 'INDFINAL'
      Size = 100
    end
    object MemNFFINNFE: TStringField
      FieldName = 'FINNFE'
      Size = 100
    end
    object MemNFVL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemNFVL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemNFVL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemNFVL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemNFVL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemNFVL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemNFVL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemNFVL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemNFIEST_PART: TStringField
      FieldName = 'IEST_PART'
    end
    object MemNFINFCPL: TStringField
      FieldName = 'INFCPL'
      Size = 500
    end
    object MemNFSELECIONADO: TStringField
      DisplayLabel = 'x'
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemNFID: TStringField
      FieldName = 'ID'
    end
    object MemNFDT_IMPORTACAO_XML: TDateTimeField
      FieldName = 'DT_IMPORTACAO_XML'
    end
  end
  object MemItensNF: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 72
    object MemItensNFCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 14
    end
    object MemItensNFQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object MemItensNFUNID: TStringField
      FieldName = 'UNID'
      Size = 5
    end
    object MemItensNFVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      DisplayFormat = '0.00'
    end
    object MemItensNFVL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemItensNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object MemItensNFVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNFALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object MemItensNFVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNFVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNFALIQ_ST: TFloatField
      FieldName = 'ALIQ_ST'
    end
    object MemItensNFVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNFDESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 50
    end
    object MemItensNFCOD_EAN: TStringField
      FieldName = 'COD_EAN'
      Size = 13
    end
    object MemItensNFNCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object MemItensNFCEST: TStringField
      FieldName = 'CEST'
      Size = 30
    end
    object MemItensNFVL_SEGURO: TFloatField
      FieldName = 'VL_SEGURO'
    end
    object MemItensNFVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object MemItensNFVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object MemItensNFVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object MemItensNFVL_OUTRAS_DESP: TFloatField
      FieldName = 'VL_OUTRAS_DESP'
    end
    object MemItensNFVL_ICMSST_RET: TFloatField
      FieldName = 'VL_ICMSST_RET'
    end
    object MemItensNFVL_ICMSST_DEST: TFloatField
      FieldName = 'VL_ICMSST_DEST'
    end
    object MemItensNFVL_ICMSST_DESON: TFloatField
      FieldName = 'VL_ICMSST_DESON'
    end
    object MemItensNFVL_FRETE: TFloatField
      FieldName = 'VL_FRETE'
    end
    object MemItensNFVL_TOTAL_ITEM: TFloatField
      FieldName = 'VL_TOTAL_ITEM'
    end
    object MemItensNFCST: TStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 4
    end
    object MemItensNFCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object MemItensNFVL_BC_ST_RET: TFloatField
      FieldName = 'VL_BC_ST_RET'
    end
    object MemItensNFVL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemItensNFVL_BC_FCP_ST: TFloatField
      FieldName = 'VL_BC_FCP_ST'
    end
    object MemItensNFVL_BC_FCP_ST_RET: TFloatField
      FieldName = 'VL_BC_FCP_ST_RET'
    end
    object MemItensNFVL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemItensNFVL_BC_ST_DEST: TFloatField
      FieldName = 'VL_BC_ST_DEST'
    end
    object MemItensNFVL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemItensNFVL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemItensNFVL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemItensNFVL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemItensNFVL_BC_UF_DEST: TFloatField
      FieldName = 'VL_BC_UF_DEST'
    end
    object MemItensNFVL_BC_FCP_UF_DEST: TFloatField
      FieldName = 'VL_BC_FCP_UF_DEST'
    end
    object MemItensNFVL_BC_II: TFloatField
      FieldName = 'VL_BC_II'
    end
    object MemItensNFVL_DESP_ADU_II: TFloatField
      FieldName = 'VL_DESP_ADU_II'
    end
    object MemItensNFVL_IOF_II: TFloatField
      FieldName = 'VL_IOF_II'
    end
    object MemItensNFP_RED_BC: TFloatField
      FieldName = 'P_RED_BC'
    end
    object MemItensNFP_RED_BC_ST: TFloatField
      FieldName = 'P_RED_BC_ST'
    end
    object MemItensNFP_ICMS_EFET: TFloatField
      FieldName = 'P_ICMS_EFET'
    end
    object MemItensNFP_MVA_ST: TFloatField
      FieldName = 'P_MVA_ST'
    end
    object MemItensNFUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object MemItensNFVL_ICMS_OP: TFloatField
      FieldName = 'VL_ICMS_OP'
    end
    object MemItensNFP_DIF: TFloatField
      FieldName = 'P_DIF'
    end
    object MemItensNFP_ICMS_DIF: TFloatField
      FieldName = 'P_ICMS_DIF'
    end
    object MemItensNFVL_BC_FCP: TFloatField
      FieldName = 'VL_BC_FCP'
    end
    object MemItensNFP_FCP_ST: TFloatField
      FieldName = 'P_FCP_ST'
    end
    object MemItensNFP_FCP_ST_RET: TFloatField
      FieldName = 'P_FCP_ST_RET'
    end
    object MemItensNFP_RED_BC_EFET: TFloatField
      FieldName = 'P_RED_BC_EFET'
    end
    object MemItensNFVL_BC_EFET: TFloatField
      FieldName = 'VL_BC_EFET'
    end
    object MemItensNFVL_ICMS_EFET: TFloatField
      FieldName = 'VL_ICMS_EFET'
    end
    object MemItensNFVL_ICMS_SUBSTITUTO: TFloatField
      FieldName = 'VL_ICMS_SUBSTITUTO'
    end
    object MemItensNFP_FCP_UF_DEST: TFloatField
      FieldName = 'P_FCP_UF_DEST'
    end
    object MemItensNFP_ICMS_UF_DEST: TFloatField
      FieldName = 'P_ICMS_UF_DEST'
    end
    object MemItensNFP_ICMS_INTER: TFloatField
      FieldName = 'P_ICMS_INTER'
    end
    object MemItensNFP_ICMS_INTER_PART: TFloatField
      FieldName = 'P_ICMS_INTER_PART'
    end
    object MemItensNFVL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemItensNFVL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemItensNFP_BC_OP: TFloatField
      FieldName = 'P_BC_OP'
    end
    object MemItensNFORIG_CST: TStringField
      FieldName = 'ORIG_CST'
      Size = 1
    end
    object MemItensNFORIG_CSOSN: TStringField
      FieldName = 'ORIG_CSOSN'
      Size = 1
    end
    object MemItensNFNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object MemItensNFSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemItensNFVL_CRED_ICMSSN: TFloatField
      FieldName = 'VL_CRED_ICMSSN'
    end
    object MemItensNFP_VL_CRED_ICMSSN: TFloatField
      FieldName = 'P_VL_CRED_ICMSSN'
    end
    object MemItensNFID: TStringField
      FieldName = 'ID'
    end
    object MemItensNFIDNF: TStringField
      FieldName = 'IDNF'
    end
    object MemItensNFCAPA_IND_OPER: TStringField
      FieldName = 'CAPA_IND_OPER'
      Size = 50
    end
    object MemItensNFCAPA_COD_PART: TStringField
      FieldName = 'CAPA_COD_PART'
      Size = 50
    end
    object MemItensNFCAPA_COD_MOD: TStringField
      FieldName = 'CAPA_COD_MOD'
      Size = 5
    end
    object MemItensNFCAPA_SER: TStringField
      FieldName = 'CAPA_SER'
      Size = 5
    end
    object MemItensNFNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      ProviderFlags = []
      Size = 10
    end
    object MemItensNFCAPA_CHV_NFE: TStringField
      FieldName = 'CAPA_CHV_NFE'
      Size = 44
    end
    object MemItensNFCAPA_DT_DOC: TDateTimeField
      FieldName = 'CAPA_DT_DOC'
    end
    object MemItensNFCAPA_DT_E_ES: TDateTimeField
      FieldName = 'CAPA_DT_E_ES'
    end
    object MemItensNFCAPA_VL_DOC: TFloatField
      FieldName = 'CAPA_VL_DOC'
    end
    object MemItensNFCAPA_VL_MERC: TFloatField
      FieldName = 'CAPA_VL_MERC'
    end
    object MemItensNFCAPA_VL_DESC: TFloatField
      FieldName = 'CAPA_VL_DESC'
    end
    object MemItensNFCAPA_VL_FRT: TFloatField
      FieldName = 'CAPA_VL_FRT'
    end
    object MemItensNFCAPA_VL_SEG: TFloatField
      FieldName = 'CAPA_VL_SEG'
    end
    object MemItensNFCAPA_VL_OUT_DA: TFloatField
      FieldName = 'CAPA_VL_OUT_DA'
    end
    object MemItensNFCAPA_VL_BC_ICMS: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS'
    end
    object MemItensNFCAPA_VL_ICMS: TFloatField
      FieldName = 'CAPA_VL_ICMS'
    end
    object MemItensNFCAPA_VL_BC_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS_ST'
    end
    object MemItensNFCAPA_VL_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_ICMS_ST'
    end
    object MemItensNFCAPA_VL_IPI: TFloatField
      FieldName = 'CAPA_VL_IPI'
    end
    object MemItensNFCAPA_VL_PIS: TFloatField
      FieldName = 'CAPA_VL_PIS'
    end
    object MemItensNFCAPA_VL_COFINS: TFloatField
      FieldName = 'CAPA_VL_COFINS'
    end
    object MemItensNFCAPA_PARTICIPANTE: TStringField
      FieldName = 'CAPA_PARTICIPANTE'
      Size = 100
    end
    object MemItensNFCAPA_UF_PART: TStringField
      FieldName = 'CAPA_UF_PART'
      Size = 2
    end
    object MemItensNFCAPA_UF_EMP: TStringField
      FieldName = 'CAPA_UF_EMP'
      Size = 2
    end
    object MemItensNFCAPA_CRT: TStringField
      FieldName = 'CAPA_CRT'
      Size = 100
    end
    object MemItensNFCAPA_INDFINAL: TStringField
      FieldName = 'CAPA_INDFINAL'
      Size = 100
    end
    object MemItensNFCAPA_FINNFE: TStringField
      FieldName = 'CAPA_FINNFE'
      Size = 100
    end
    object MemItensNFCAPA_VL_II: TFloatField
      FieldName = 'CAPA_VL_II'
    end
    object MemItensNFCAPA_VL_ICMS_DESON: TFloatField
      FieldName = 'CAPA_VL_ICMS_DESON'
    end
    object MemItensNFCAPA_VL_FCP_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_FCP_UF_DEST'
    end
    object MemItensNFCAPA_VL_ICMS_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_DEST'
    end
    object MemItensNFCAPA_VL_ICMS_UF_REMET: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_REMET'
    end
    object MemItensNFCAPA_VL_FCP: TFloatField
      FieldName = 'CAPA_VL_FCP'
    end
    object MemItensNFCAPA_VL_FCP_ST: TFloatField
      FieldName = 'CAPA_VL_FCP_ST'
    end
    object MemItensNFCAPA_VL_FCP_ST_RET: TFloatField
      FieldName = 'CAPA_VL_FCP_ST_RET'
    end
    object MemItensNFCAPA_IEST_PART: TStringField
      FieldName = 'CAPA_IEST_PART'
    end
    object MemItensNFCAPA_INFCPL: TStringField
      FieldName = 'CAPA_INFCPL'
      Size = 500
    end
    object MemItensNFCAPA_VL_BC_IPI: TFloatField
      FieldName = 'CAPA_VL_BC_IPI'
    end
    object MemItensNFCAPA_VL_BC_PIS: TFloatField
      FieldName = 'CAPA_VL_BC_PIS'
    end
    object MemItensNFCAPA_VL_BC_COFINS: TFloatField
      FieldName = 'CAPA_VL_BC_COFINS'
    end
  end
  object QryArrayNF_1: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "NF"('
      
        '            "ID", "IND_OPER", "COD_PART", "PARTICIPANTE", "COD_M' +
        'OD", "SER", '
      
        '            "NUM_DOC", "CHV_NFE", "DT_DOC", "DT_E_ES", "VL_DOC",' +
        ' "VL_MERC", '
      
        '            "VL_DESC", "VL_FRT", "VL_SEG", "VL_OUT_DA", "VL_BC_I' +
        'CMS", "VL_ICMS", '
      
        '            "VL_BC_ICMS_ST", "VL_ICMS_ST", "VL_BC_IPI", "VL_IPI"' +
        ', "VL_BC_PIS", '
      
        '            "VL_PIS", "VL_BC_COFINS", "VL_COFINS", "COD_EMP", "E' +
        'MPRESA", '
      
        '            "MES", "ANO", "UF_PART", "UF_EMP", "CRT", "INDFINAL"' +
        ', "FINNFE", '
      
        '            "VL_II", "VL_ICMS_DESON", "VL_FCP_UF_DEST", "VL_ICMS' +
        '_UF_DEST", '
      
        '            "VL_ICMS_UF_REMET", "VL_FCP", "VL_FCP_ST", "VL_FCP_S' +
        'T_RET","iest_part",'
      '            "INFCPL","DT_IMPORTACAO_XML")'
      
        '    VALUES (:ID,:IND_OPER,:COD_PART,:PARTICIPANTE,:COD_MOD,:SER,' +
        ' '
      
        '            :NUM_DOC,:CHV_NFE,:DT_DOC,:DT_E_ES,:VL_DOC,:VL_MERC,' +
        ' '
      
        '            :VL_DESC,:VL_FRT,:VL_SEG,:VL_OUT_DA,:VL_BC_ICMS,:VL_' +
        'ICMS, '
      
        '            :VL_BC_ICMS_ST,:VL_ICMS_ST,:VL_BC_IPI,:VL_IPI,:VL_BC' +
        '_PIS,'
      '            :VL_PIS,:VL_BC_COFINS,:VL_COFINS,:COD_EMP,:EMPRESA, '
      '            :MES,:ANO,:UF_PART,:UF_EMP,:CRT,:INDFINAL,:FINNFE, '
      
        '            :VL_II,:VL_ICMS_DESON,:VL_FCP_UF_DEST,:VL_ICMS_UF_DE' +
        'ST, '
      
        '            :VL_ICMS_UF_REMET,:VL_FCP,:VL_FCP_ST,:VL_FCP_ST_RET,' +
        ':iest_part, '
      '            :INFCPL,:DT_IMPORTACAO_XML'
      '           );')
    Left = 352
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IND_OPER'
        ParamType = ptInput
      end
      item
        Name = 'COD_PART'
        ParamType = ptInput
      end
      item
        Name = 'PARTICIPANTE'
        ParamType = ptInput
      end
      item
        Name = 'COD_MOD'
        ParamType = ptInput
      end
      item
        Name = 'SER'
        ParamType = ptInput
      end
      item
        Name = 'NUM_DOC'
        ParamType = ptInput
      end
      item
        Name = 'CHV_NFE'
        ParamType = ptInput
      end
      item
        Name = 'DT_DOC'
        ParamType = ptInput
      end
      item
        Name = 'DT_E_ES'
        ParamType = ptInput
      end
      item
        Name = 'VL_DOC'
        ParamType = ptInput
      end
      item
        Name = 'VL_MERC'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESC'
        ParamType = ptInput
      end
      item
        Name = 'VL_FRT'
        ParamType = ptInput
      end
      item
        Name = 'VL_SEG'
        ParamType = ptInput
      end
      item
        Name = 'VL_OUT_DA'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'VL_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'COD_EMP'
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'MES'
        ParamType = ptInput
      end
      item
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        Name = 'UF_PART'
        ParamType = ptInput
      end
      item
        Name = 'UF_EMP'
        ParamType = ptInput
      end
      item
        Name = 'CRT'
        ParamType = ptInput
      end
      item
        Name = 'INDFINAL'
        ParamType = ptInput
      end
      item
        Name = 'FINNFE'
        ParamType = ptInput
      end
      item
        Name = 'VL_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_REMET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'IEST_PART'
        ParamType = ptInput
      end
      item
        Name = 'INFCPL'
        ParamType = ptInput
      end
      item
        Name = 'DT_IMPORTACAO_XML'
        ParamType = ptInput
      end>
  end
  object QryArrayItensNF_1: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "NF_ITENS"('
      '            "ID", "IDNF","NUM_ITEM","COD_ITEM", "DESCR_ITEM", '
      
        '            "QTDE", "UNID", "VL_ITEM", "VL_DESC", "CFOP", "VL_BC' +
        '_ICMS", "ALIQ_ICMS", '
      
        '            "VL_ICMS", "VL_BC_ICMS_ST", "ALIQ_ST", "VL_ICMS_ST",' +
        ' "COD_EAN", '
      
        '            "CEST", "NCM", "VL_TOTAL_ITEM", "VL_IPI", "VL_OUTRAS' +
        '_DESP", "VL_PIS", '
      
        '            "VL_COFINS", "VL_ICMSST_RET", "VL_ICMSST_DEST", "VL_' +
        'ICMSST_DESON", '
      
        '            "VL_FRETE", "VL_SEGURO", "CSOSN", "CST", "VL_BC_ST_R' +
        'ET", "VL_FCP_ST", '
      
        '            "VL_BC_FCP_ST", "VL_BC_FCP_ST_RET", "VL_FCP_ST_RET",' +
        ' "VL_BC_ST_DEST", '
      
        '            "VL_ICMS_DESON", "VL_II", "VL_FCP_UF_DEST", "VL_FCP"' +
        ', "VL_BC_UF_DEST", '
      
        '            "VL_BC_FCP_UF_DEST", "VL_ICMS_UF_DEST", "VL_ICMS_UF_' +
        'REMET", "VL_BC_II", '
      
        '            "VL_DESP_ADU_II", "VL_IOF_II", "P_RED_BC", "P_RED_BC' +
        '_ST", "P_ICMS_EFET", '
      
        '            "P_MVA_ST", "UF_ST", "VL_ICMS_OP", "P_DIF", "P_ICMS_' +
        'DIF", "VL_BC_FCP", '
      
        '            "P_FCP_ST", "P_FCP_ST_RET", "P_RED_BC_EFET", "VL_BC_' +
        'EFET", "VL_ICMS_EFET", '
      
        '            "VL_ICMS_SUBSTITUTO", "P_FCP_UF_DEST", "P_ICMS_UF_DE' +
        'ST", "P_ICMS_INTER", '
      
        '            "P_ICMS_INTER_PART", "P_BC_OP", "ORIG_CST", "ORIG_CS' +
        'OSN", '
      '            "VL_CRED_ICMSSN", "P_VL_CRED_ICMSSN")'
      '    VALUES (:ID,:IDNF,:NUM_ITEM,:COD_ITEM,:DESCR_ITEM, '
      
        '            :QTDE,:UNID,:VL_ITEM,:VL_DESC,:CFOP,:VL_BC_ICMS,:ALI' +
        'Q_ICMS, '
      
        '            :VL_ICMS,:VL_BC_ICMS_ST,:ALIQ_ST,:VL_ICMS_ST,:COD_EA' +
        'N, '
      
        '            :CEST,:NCM,:VL_TOTAL_ITEM,:VL_IPI,:VL_OUTRAS_DESP,:V' +
        'L_PIS, '
      
        '            :VL_COFINS,:VL_ICMSST_RET,:VL_ICMSST_DEST,:VL_ICMSST' +
        '_DESON, '
      
        '            :VL_FRETE,:VL_SEGURO,:CSOSN,:CST,:VL_BC_ST_RET,:VL_F' +
        'CP_ST, '
      
        '            :VL_BC_FCP_ST,:VL_BC_FCP_ST_RET,:VL_FCP_ST_RET,:VL_B' +
        'C_ST_DEST, '
      
        '            :VL_ICMS_DESON,:VL_II,:VL_FCP_UF_DEST,:VL_FCP,:VL_BC' +
        '_UF_DEST, '
      
        '            :VL_BC_FCP_UF_DEST,:VL_ICMS_UF_DEST,:VL_ICMS_UF_REME' +
        'T,:VL_BC_II, '
      
        '            :VL_DESP_ADU_II,:VL_IOF_II,:P_RED_BC,:P_RED_BC_ST,:P' +
        '_ICMS_EFET, '
      
        '            :P_MVA_ST,:UF_ST,:VL_ICMS_OP,:P_DIF,:P_ICMS_DIF,:VL_' +
        'BC_FCP,'
      
        '            :P_FCP_ST,:P_FCP_ST_RET,:P_RED_BC_EFET,:VL_BC_EFET,:' +
        'VL_ICMS_EFET, '
      
        '            :VL_ICMS_SUBSTITUTO,:P_FCP_UF_DEST,:P_ICMS_UF_DEST,:' +
        'P_ICMS_INTER, '
      '            :P_ICMS_INTER_PART,:P_BC_OP,:ORIG_CST,:ORIG_CSOSN, '
      '            :VL_CRED_ICMSSN,:P_VL_CRED_ICMSSN'
      '           );')
    Left = 352
    Top = 72
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IDNF'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NUM_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'COD_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'DESCR_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        Name = 'UNID'
        ParamType = ptInput
      end
      item
        Name = 'VL_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESC'
        ParamType = ptInput
      end
      item
        Name = 'CFOP'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'ALIQ_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'ALIQ_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'COD_EAN'
        ParamType = ptInput
      end
      item
        Name = 'CEST'
        ParamType = ptInput
      end
      item
        Name = 'NCM'
        ParamType = ptInput
      end
      item
        Name = 'VL_TOTAL_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'VL_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_OUTRAS_DESP'
        ParamType = ptInput
      end
      item
        Name = 'VL_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_FRETE'
        ParamType = ptInput
      end
      item
        Name = 'VL_SEGURO'
        ParamType = ptInput
      end
      item
        Name = 'CSOSN'
        ParamType = ptInput
      end
      item
        Name = 'CST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ST_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_REMET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESP_ADU_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_IOF_II'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC_ST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_EFET'
        ParamType = ptInput
      end
      item
        Name = 'P_MVA_ST'
        ParamType = ptInput
      end
      item
        Name = 'UF_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_OP'
        ParamType = ptInput
      end
      item
        Name = 'P_DIF'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_DIF'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_SUBSTITUTO'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_INTER'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_INTER_PART'
        ParamType = ptInput
      end
      item
        Name = 'P_BC_OP'
        ParamType = ptInput
      end
      item
        Name = 'ORIG_CST'
        ParamType = ptInput
      end
      item
        Name = 'ORIG_CSOSN'
        ParamType = ptInput
      end
      item
        Name = 'VL_CRED_ICMSSN'
        ParamType = ptInput
      end
      item
        Name = 'P_VL_CRED_ICMSSN'
        ParamType = ptInput
      end>
  end
  object DsQryCTe: TDataSource
    DataSet = MemCTe
    Left = 24
    Top = 168
  end
  object MemCTe: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 168
    object MemCTeID: TStringField
      FieldName = 'ID'
    end
    object MemCTeDT_EMIS: TDateTimeField
      FieldName = 'DT_EMIS'
    end
    object MemCTeCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object MemCTeCOD_PART: TStringField
      FieldName = 'COD_PART'
    end
    object MemCTePARTICIPANTE: TStringField
      FieldName = 'PARTICIPANTE'
      Size = 100
    end
    object MemCTeCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 5
    end
    object MemCTeSER: TStringField
      FieldName = 'SER'
      Size = 5
    end
    object MemCTeNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeCHV_CTE: TStringField
      FieldName = 'CHV_CTE'
      Size = 44
    end
    object MemCTeOBS: TStringField
      FieldName = 'OBS'
      Size = 500
    end
    object MemCTeCOD_EMP: TStringField
      FieldName = 'COD_EMP'
    end
    object MemCTeEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object MemCTeMES: TIntegerField
      FieldName = 'MES'
    end
    object MemCTeANO: TIntegerField
      FieldName = 'ANO'
    end
    object MemCTeSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object MemCTeTP_TOMADOR: TStringField
      FieldName = 'TP_TOMADOR'
    end
    object MemCTeVL_PREST: TFloatField
      FieldName = 'VL_PREST'
    end
    object MemCTeCOD_MUN_INI: TIntegerField
      FieldName = 'COD_MUN_INI'
    end
    object MemCTeDESC_MUN_INI: TStringField
      FieldName = 'DESC_MUN_INI'
      Size = 150
    end
    object MemCTeUF_INI: TStringField
      FieldName = 'UF_INI'
      Size = 2
    end
    object MemCTeCOD_MUN_FIM: TIntegerField
      FieldName = 'COD_MUN_FIM'
    end
    object MemCTeDESC_MUN_FIM: TStringField
      FieldName = 'DESC_MUN_FIM'
      Size = 150
    end
    object MemCTeUF_FIM: TStringField
      FieldName = 'UF_FIM'
      Size = 2
    end
    object MemCTeDT_IMPORTACAO_XML: TDateTimeField
      FieldName = 'DT_IMPORTACAO_XML'
    end
  end
  object QryArrayCTe: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE" '
      '('
      '    "ID",'
      '    "DT_EMIS",'
      '    "CFOP",'
      '    "COD_PART",'
      '    "PARTICIPANTE",'
      '    "COD_MOD",'
      '    "SER",'
      '    "NUM_DOC",'
      '    "CHV_CTE",'
      '    "OBS",'
      '    "COD_EMP",'
      '    "EMPRESA",'
      '    "MES",'
      '    "ANO",'
      '    "TP_TOMADOR",'
      '    "VL_PREST",'
      '    "COD_MUN_INI",'
      '    "DESC_MUN_INI",'
      '    "UF_INI",'
      '    "COD_MUN_FIM",'
      '    "DESC_MUN_FIM",'
      '    "UF_FIM",'
      '    "DT_IMPORTACAO_XML"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :DT_EMIS,'
      '    :CFOP,'
      '    :COD_PART,'
      '    :PARTICIPANTE,'
      '    :COD_MOD,'
      '    :SER,'
      '    :NUM_DOC,'
      '    :CHV_CTE,'
      '    :OBS,'
      '    :COD_EMP,'
      '    :EMPRESA,'
      '    :MES,'
      '    :ANO,'
      '    :TP_TOMADOR,'
      '    :VL_PREST,'
      '    :COD_MUN_INI,'
      '    :DESC_MUN_INI,'
      '    :UF_INI,'
      '    :COD_MUN_FIM,'
      '    :DESC_MUN_FIM,'
      '    :UF_FIM,'
      '    :DT_IMPORTACAO_XML'
      ')')
    Left = 184
    Top = 168
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'DT_EMIS'
        ParamType = ptInput
      end
      item
        Name = 'CFOP'
        ParamType = ptInput
      end
      item
        Name = 'COD_PART'
        ParamType = ptInput
      end
      item
        Name = 'PARTICIPANTE'
        ParamType = ptInput
      end
      item
        Name = 'COD_MOD'
        ParamType = ptInput
      end
      item
        Name = 'SER'
        ParamType = ptInput
      end
      item
        Name = 'NUM_DOC'
        ParamType = ptInput
      end
      item
        Name = 'CHV_CTE'
        ParamType = ptInput
      end
      item
        Name = 'OBS'
        ParamType = ptInput
      end
      item
        Name = 'COD_EMP'
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'MES'
        ParamType = ptInput
      end
      item
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        Name = 'TP_TOMADOR'
        ParamType = ptInput
      end
      item
        Name = 'VL_PREST'
        ParamType = ptInput
      end
      item
        Name = 'COD_MUN_INI'
        ParamType = ptInput
      end
      item
        Name = 'DESC_MUN_INI'
        ParamType = ptInput
      end
      item
        Name = 'UF_INI'
        ParamType = ptInput
      end
      item
        Name = 'COD_MUN_FIM'
        ParamType = ptInput
      end
      item
        Name = 'DESC_MUN_FIM'
        ParamType = ptInput
      end
      item
        Name = 'UF_FIM'
        ParamType = ptInput
      end
      item
        Name = 'DT_IMPORTACAO_XML'
        ParamType = ptInput
      end>
  end
  object DsQryCTeDoc: TDataSource
    DataSet = MemCTeDoc
    Left = 24
    Top = 554
  end
  object MemCTeDoc: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 554
    object MemCTeDocID: TStringField
      FieldName = 'ID'
    end
    object MemCTeDocIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeDocCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 44
    end
    object MemCTeDocSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
    object MemCTeDocNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
  end
  object QryArrayCTeDoc: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_DOC"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CHV_NFE"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CHV_NFE'
      ')')
    Left = 184
    Top = 554
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CHV_NFE'
        ParamType = ptInput
      end>
  end
  object DsQryCTeEmit: TDataSource
    DataSet = MemCTeEmit
    Left = 24
    Top = 224
  end
  object MemCTeEmit: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 224
    object MemCTeEmitID: TStringField
      FieldName = 'ID'
    end
    object MemCTeEmitIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeEmitCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MemCTeEmitENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object MemCTeEmitCODMUN: TIntegerField
      FieldName = 'CODMUN'
    end
    object MemCTeEmitMUN: TStringField
      FieldName = 'MUN'
      Size = 100
    end
    object MemCTeEmitUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MemCTeEmitNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeEmitNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QryArrayCTeEmit: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_EMIT"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CNPJ",'
      '    "ENDERECO",'
      '    "CODMUN",'
      '    "MUN",'
      '    "UF",'
      '    "NOME"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CNPJ,'
      '    :ENDERECO,'
      '    :CODMUN,'
      '    :MUN,'
      '    :UF,'
      '    :NOME'
      ')')
    Left = 184
    Top = 224
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        Name = 'CODMUN'
        ParamType = ptInput
      end
      item
        Name = 'MUN'
        ParamType = ptInput
      end
      item
        Name = 'UF'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object DsQryCTeRem: TDataSource
    DataSet = MemCTeRem
    Left = 24
    Top = 280
  end
  object MemCTeRem: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 280
    object MemCTeRemID: TStringField
      FieldName = 'ID'
    end
    object MemCTeRemIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeRemCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MemCTeRemENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object MemCTeRemCODMUN: TIntegerField
      FieldName = 'CODMUN'
    end
    object MemCTeRemMUN: TStringField
      FieldName = 'MUN'
      Size = 100
    end
    object MemCTeRemUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MemCTeRemNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeRemNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QryArrayCTeRem: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_REM"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CNPJ",'
      '    "ENDERECO",'
      '    "CODMUN",'
      '    "MUN",'
      '    "UF",'
      '    "NOME"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CNPJ,'
      '    :ENDERECO,'
      '    :CODMUN,'
      '    :MUN,'
      '    :UF,'
      '    :NOME'
      ')')
    Left = 184
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        Name = 'CODMUN'
        ParamType = ptInput
      end
      item
        Name = 'MUN'
        ParamType = ptInput
      end
      item
        Name = 'UF'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object DsQryCTeExt: TDataSource
    DataSet = MemCTeExt
    Left = 24
    Top = 336
  end
  object MemCTeExt: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 336
    object MemCTeExtID: TStringField
      FieldName = 'ID'
    end
    object MemCTeExtIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeExtCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MemCTeExtENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object MemCTeExtCODMUN: TIntegerField
      FieldName = 'CODMUN'
    end
    object MemCTeExtMUN: TStringField
      FieldName = 'MUN'
      Size = 100
    end
    object MemCTeExtUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MemCTeExtNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeExtNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QryArrayCTeExt: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_EXT"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CNPJ",'
      '    "ENDERECO",'
      '    "CODMUN",'
      '    "MUN",'
      '    "UF",'
      '    "NOME"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CNPJ,'
      '    :ENDERECO,'
      '    :CODMUN,'
      '    :MUN,'
      '    :UF,'
      '    :NOME'
      ')')
    Left = 184
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        Name = 'CODMUN'
        ParamType = ptInput
      end
      item
        Name = 'MUN'
        ParamType = ptInput
      end
      item
        Name = 'UF'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object DsQryCTeReceb: TDataSource
    DataSet = MemCTeReceb
    Left = 24
    Top = 392
  end
  object MemCTeReceb: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 392
    object MemCTeRecebID: TStringField
      FieldName = 'ID'
    end
    object MemCTeRecebIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeRecebCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MemCTeRecebENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object MemCTeRecebCODMUN: TIntegerField
      FieldName = 'CODMUN'
    end
    object MemCTeRecebMUN: TStringField
      FieldName = 'MUN'
      Size = 100
    end
    object MemCTeRecebUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MemCTeRecebNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeRecebNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QryArrayCTeReceb: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_RECEB"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CNPJ",'
      '    "ENDERECO",'
      '    "CODMUN",'
      '    "MUN",'
      '    "UF",'
      '    "NOME"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CNPJ,'
      '    :ENDERECO,'
      '    :CODMUN,'
      '    :MUN,'
      '    :UF,'
      '    :NOME'
      ')')
    Left = 184
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        Name = 'CODMUN'
        ParamType = ptInput
      end
      item
        Name = 'MUN'
        ParamType = ptInput
      end
      item
        Name = 'UF'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object DsQryCTeDest: TDataSource
    DataSet = MemCTeDest
    Left = 24
    Top = 444
  end
  object MemCTeDest: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 444
    object MemCTeDestID: TStringField
      FieldName = 'ID'
    end
    object MemCTeDestIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeDestCNPJ: TStringField
      FieldName = 'CNPJ'
    end
    object MemCTeDestENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object MemCTeDestCODMUN: TIntegerField
      FieldName = 'CODMUN'
    end
    object MemCTeDestMUN: TStringField
      FieldName = 'MUN'
      Size = 100
    end
    object MemCTeDestUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MemCTeDestNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemCTeDestNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object QryArrayCTeDest: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_DEST"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CNPJ",'
      '    "ENDERECO",'
      '    "CODMUN",'
      '    "MUN",'
      '    "UF",'
      '    "NOME"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CNPJ,'
      '    :ENDERECO,'
      '    :CODMUN,'
      '    :MUN,'
      '    :UF,'
      '    :NOME'
      ')')
    Left = 184
    Top = 444
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        Name = 'ENDERECO'
        ParamType = ptInput
      end
      item
        Name = 'CODMUN'
        ParamType = ptInput
      end
      item
        Name = 'MUN'
        ParamType = ptInput
      end
      item
        Name = 'UF'
        ParamType = ptInput
      end
      item
        Name = 'NOME'
        ParamType = ptInput
      end>
  end
  object DsQryCTeImpostos: TDataSource
    DataSet = MemCTeImpostos
    Left = 24
    Top = 498
  end
  object MemCTeImpostos: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 104
    Top = 499
    object MemCTeImpostosID: TStringField
      FieldName = 'ID'
    end
    object MemCTeImpostosIDCTE: TStringField
      FieldName = 'IDCTE'
    end
    object MemCTeImpostosCST: TStringField
      FieldName = 'CST'
      Size = 4
    end
    object MemCTeImpostosVL_BC: TFloatField
      FieldName = 'VL_BC'
    end
    object MemCTeImpostosVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object MemCTeImpostosP_ICMS: TFloatField
      FieldName = 'P_ICMS'
    end
    object MemCTeImpostosNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
  end
  object QryArrayCTeImpostos: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "CTE_IMPOSTOS"'
      '('
      '    "ID",'
      '    "IDCTE",'
      '    "CST",'
      '    "VL_BC",'
      '    "VL_ICMS",'
      '    "P_ICMS"'
      ')'
      'VALUES'
      '('
      '    :ID,'
      '    :IDCTE,'
      '    :CST,'
      '    :VL_BC,'
      '    :VL_ICMS,'
      '    :P_ICMS'
      ')')
    Left = 184
    Top = 500
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'IDCTE'
        ParamType = ptInput
      end
      item
        Name = 'CST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS'
        ParamType = ptInput
      end>
  end
  object MemNF_1: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 176
    Top = 17
    object MemNF_1IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Size = 50
    end
    object MemNF_1COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 50
    end
    object MemNF_1COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 5
    end
    object MemNF_1SER: TStringField
      FieldName = 'SER'
      Size = 5
    end
    object MemNF_1NUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemNF_1CHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 44
    end
    object MemNF_1DT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object MemNF_1DT_E_ES: TDateTimeField
      FieldName = 'DT_E_ES'
    end
    object MemNF_1VL_DOC: TFloatField
      FieldName = 'VL_DOC'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_MERC: TFloatField
      FieldName = 'VL_MERC'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_FRT: TFloatField
      FieldName = 'VL_FRT'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_SEG: TFloatField
      FieldName = 'VL_SEG'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_OUT_DA: TFloatField
      FieldName = 'VL_OUT_DA'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_BC_IPI: TFloatField
      FieldName = 'VL_BC_IPI'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_IPI: TFloatField
      FieldName = 'VL_IPI'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_PIS: TFloatField
      FieldName = 'VL_PIS'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNF_1VL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNF_1PARTICIPANTE: TStringField
      FieldName = 'PARTICIPANTE'
      Size = 100
    end
    object MemNF_1COD_EMP: TStringField
      FieldName = 'COD_EMP'
    end
    object MemNF_1EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object MemNF_1MES: TIntegerField
      FieldName = 'MES'
    end
    object MemNF_1ANO: TIntegerField
      FieldName = 'ANO'
    end
    object MemNF_1UF_PART: TStringField
      FieldName = 'UF_PART'
      Size = 2
    end
    object MemNF_1UF_EMP: TStringField
      FieldName = 'UF_EMP'
      Size = 2
    end
    object MemNF_1CRT: TStringField
      FieldName = 'CRT'
      Size = 100
    end
    object MemNF_1INDFINAL: TStringField
      FieldName = 'INDFINAL'
      Size = 100
    end
    object MemNF_1FINNFE: TStringField
      FieldName = 'FINNFE'
      Size = 100
    end
    object MemNF_1VL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemNF_1VL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemNF_1VL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemNF_1VL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemNF_1VL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemNF_1VL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemNF_1VL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemNF_1VL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemNF_1IEST_PART: TStringField
      FieldName = 'IEST_PART'
    end
    object MemNF_1INFCPL: TStringField
      FieldName = 'INFCPL'
      Size = 500
    end
    object MemNF_1SELECIONADO: TStringField
      DisplayLabel = 'x'
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemNF_1ID: TStringField
      FieldName = 'ID'
    end
    object MemNF_1DT_IMPORTACAO_XML: TDateTimeField
      FieldName = 'DT_IMPORTACAO_XML'
    end
  end
  object MemNF_2: TFDMemTable
    FieldDefs = <>
    CachedUpdates = True
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 256
    Top = 17
    object MemNF_2IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Size = 50
    end
    object MemNF_2COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 50
    end
    object MemNF_2COD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 5
    end
    object MemNF_2SER: TStringField
      FieldName = 'SER'
      Size = 5
    end
    object MemNF_2NUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object MemNF_2CHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 44
    end
    object MemNF_2DT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object MemNF_2DT_E_ES: TDateTimeField
      FieldName = 'DT_E_ES'
    end
    object MemNF_2VL_DOC: TFloatField
      FieldName = 'VL_DOC'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_MERC: TFloatField
      FieldName = 'VL_MERC'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_FRT: TFloatField
      FieldName = 'VL_FRT'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_SEG: TFloatField
      FieldName = 'VL_SEG'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_OUT_DA: TFloatField
      FieldName = 'VL_OUT_DA'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_BC_IPI: TFloatField
      FieldName = 'VL_BC_IPI'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_IPI: TFloatField
      FieldName = 'VL_IPI'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_PIS: TFloatField
      FieldName = 'VL_PIS'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNF_2VL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
      DisplayFormat = '0.00'
    end
    object MemNF_2PARTICIPANTE: TStringField
      FieldName = 'PARTICIPANTE'
      Size = 100
    end
    object MemNF_2COD_EMP: TStringField
      FieldName = 'COD_EMP'
    end
    object MemNF_2EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 100
    end
    object MemNF_2MES: TIntegerField
      FieldName = 'MES'
    end
    object MemNF_2ANO: TIntegerField
      FieldName = 'ANO'
    end
    object MemNF_2UF_PART: TStringField
      FieldName = 'UF_PART'
      Size = 2
    end
    object MemNF_2UF_EMP: TStringField
      FieldName = 'UF_EMP'
      Size = 2
    end
    object MemNF_2CRT: TStringField
      FieldName = 'CRT'
      Size = 100
    end
    object MemNF_2INDFINAL: TStringField
      FieldName = 'INDFINAL'
      Size = 100
    end
    object MemNF_2FINNFE: TStringField
      FieldName = 'FINNFE'
      Size = 100
    end
    object MemNF_2VL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemNF_2VL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemNF_2VL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemNF_2VL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemNF_2VL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemNF_2VL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemNF_2VL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemNF_2VL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemNF_2IEST_PART: TStringField
      FieldName = 'IEST_PART'
    end
    object MemNF_2INFCPL: TStringField
      FieldName = 'INFCPL'
      Size = 500
    end
    object MemNF_2SELECIONADO: TStringField
      DisplayLabel = 'x'
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemNF_2ID: TStringField
      FieldName = 'ID'
    end
    object MemNF_2DT_IMPORTACAO_XML: TDateTimeField
      FieldName = 'DT_IMPORTACAO_XML'
    end
  end
  object MemItensNF_1: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 176
    Top = 72
    object MemItensNF_1COD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 14
    end
    object MemItensNF_1QTDE: TFloatField
      FieldName = 'QTDE'
    end
    object MemItensNF_1UNID: TStringField
      FieldName = 'UNID'
      Size = 5
    end
    object MemItensNF_1VL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1VL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1CFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object MemItensNF_1VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object MemItensNF_1VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1VL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1ALIQ_ST: TFloatField
      FieldName = 'ALIQ_ST'
    end
    object MemItensNF_1VL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNF_1DESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 50
    end
    object MemItensNF_1COD_EAN: TStringField
      FieldName = 'COD_EAN'
      Size = 13
    end
    object MemItensNF_1NCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object MemItensNF_1CEST: TStringField
      FieldName = 'CEST'
      Size = 30
    end
    object MemItensNF_1VL_SEGURO: TFloatField
      FieldName = 'VL_SEGURO'
    end
    object MemItensNF_1VL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object MemItensNF_1VL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object MemItensNF_1VL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object MemItensNF_1VL_OUTRAS_DESP: TFloatField
      FieldName = 'VL_OUTRAS_DESP'
    end
    object MemItensNF_1VL_ICMSST_RET: TFloatField
      FieldName = 'VL_ICMSST_RET'
    end
    object MemItensNF_1VL_ICMSST_DEST: TFloatField
      FieldName = 'VL_ICMSST_DEST'
    end
    object MemItensNF_1VL_ICMSST_DESON: TFloatField
      FieldName = 'VL_ICMSST_DESON'
    end
    object MemItensNF_1VL_FRETE: TFloatField
      FieldName = 'VL_FRETE'
    end
    object MemItensNF_1VL_TOTAL_ITEM: TFloatField
      FieldName = 'VL_TOTAL_ITEM'
    end
    object MemItensNF_1CST: TStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 4
    end
    object MemItensNF_1CSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object MemItensNF_1VL_BC_ST_RET: TFloatField
      FieldName = 'VL_BC_ST_RET'
    end
    object MemItensNF_1VL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemItensNF_1VL_BC_FCP_ST: TFloatField
      FieldName = 'VL_BC_FCP_ST'
    end
    object MemItensNF_1VL_BC_FCP_ST_RET: TFloatField
      FieldName = 'VL_BC_FCP_ST_RET'
    end
    object MemItensNF_1VL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemItensNF_1VL_BC_ST_DEST: TFloatField
      FieldName = 'VL_BC_ST_DEST'
    end
    object MemItensNF_1VL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemItensNF_1VL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemItensNF_1VL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemItensNF_1VL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemItensNF_1VL_BC_UF_DEST: TFloatField
      FieldName = 'VL_BC_UF_DEST'
    end
    object MemItensNF_1VL_BC_FCP_UF_DEST: TFloatField
      FieldName = 'VL_BC_FCP_UF_DEST'
    end
    object MemItensNF_1VL_BC_II: TFloatField
      FieldName = 'VL_BC_II'
    end
    object MemItensNF_1VL_DESP_ADU_II: TFloatField
      FieldName = 'VL_DESP_ADU_II'
    end
    object MemItensNF_1VL_IOF_II: TFloatField
      FieldName = 'VL_IOF_II'
    end
    object MemItensNF_1P_RED_BC: TFloatField
      FieldName = 'P_RED_BC'
    end
    object MemItensNF_1P_RED_BC_ST: TFloatField
      FieldName = 'P_RED_BC_ST'
    end
    object MemItensNF_1P_ICMS_EFET: TFloatField
      FieldName = 'P_ICMS_EFET'
    end
    object MemItensNF_1P_MVA_ST: TFloatField
      FieldName = 'P_MVA_ST'
    end
    object MemItensNF_1UF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object MemItensNF_1VL_ICMS_OP: TFloatField
      FieldName = 'VL_ICMS_OP'
    end
    object MemItensNF_1P_DIF: TFloatField
      FieldName = 'P_DIF'
    end
    object MemItensNF_1P_ICMS_DIF: TFloatField
      FieldName = 'P_ICMS_DIF'
    end
    object MemItensNF_1VL_BC_FCP: TFloatField
      FieldName = 'VL_BC_FCP'
    end
    object MemItensNF_1P_FCP_ST: TFloatField
      FieldName = 'P_FCP_ST'
    end
    object MemItensNF_1P_FCP_ST_RET: TFloatField
      FieldName = 'P_FCP_ST_RET'
    end
    object MemItensNF_1P_RED_BC_EFET: TFloatField
      FieldName = 'P_RED_BC_EFET'
    end
    object MemItensNF_1VL_BC_EFET: TFloatField
      FieldName = 'VL_BC_EFET'
    end
    object MemItensNF_1VL_ICMS_EFET: TFloatField
      FieldName = 'VL_ICMS_EFET'
    end
    object MemItensNF_1VL_ICMS_SUBSTITUTO: TFloatField
      FieldName = 'VL_ICMS_SUBSTITUTO'
    end
    object MemItensNF_1P_FCP_UF_DEST: TFloatField
      FieldName = 'P_FCP_UF_DEST'
    end
    object MemItensNF_1P_ICMS_UF_DEST: TFloatField
      FieldName = 'P_ICMS_UF_DEST'
    end
    object MemItensNF_1P_ICMS_INTER: TFloatField
      FieldName = 'P_ICMS_INTER'
    end
    object MemItensNF_1P_ICMS_INTER_PART: TFloatField
      FieldName = 'P_ICMS_INTER_PART'
    end
    object MemItensNF_1VL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemItensNF_1VL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemItensNF_1P_BC_OP: TFloatField
      FieldName = 'P_BC_OP'
    end
    object MemItensNF_1ORIG_CST: TStringField
      FieldName = 'ORIG_CST'
      Size = 1
    end
    object MemItensNF_1ORIG_CSOSN: TStringField
      FieldName = 'ORIG_CSOSN'
      Size = 1
    end
    object MemItensNF_1NUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object MemItensNF_1SELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemItensNF_1VL_CRED_ICMSSN: TFloatField
      FieldName = 'VL_CRED_ICMSSN'
    end
    object MemItensNF_1P_VL_CRED_ICMSSN: TFloatField
      FieldName = 'P_VL_CRED_ICMSSN'
    end
    object MemItensNF_1ID: TStringField
      FieldName = 'ID'
    end
    object MemItensNF_1IDNF: TStringField
      FieldName = 'IDNF'
    end
    object MemItensNF_1CAPA_IND_OPER: TStringField
      FieldName = 'CAPA_IND_OPER'
      Size = 50
    end
    object MemItensNF_1CAPA_COD_PART: TStringField
      FieldName = 'CAPA_COD_PART'
      Size = 50
    end
    object MemItensNF_1CAPA_COD_MOD: TStringField
      FieldName = 'CAPA_COD_MOD'
      Size = 5
    end
    object MemItensNF_1CAPA_SER: TStringField
      FieldName = 'CAPA_SER'
      Size = 5
    end
    object MemItensNF_1NUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      ProviderFlags = []
      Size = 10
    end
    object MemItensNF_1CAPA_CHV_NFE: TStringField
      FieldName = 'CAPA_CHV_NFE'
      Size = 44
    end
    object MemItensNF_1CAPA_DT_DOC: TDateTimeField
      FieldName = 'CAPA_DT_DOC'
    end
    object MemItensNF_1CAPA_DT_E_ES: TDateTimeField
      FieldName = 'CAPA_DT_E_ES'
    end
    object MemItensNF_1CAPA_VL_DOC: TFloatField
      FieldName = 'CAPA_VL_DOC'
    end
    object MemItensNF_1CAPA_VL_MERC: TFloatField
      FieldName = 'CAPA_VL_MERC'
    end
    object MemItensNF_1CAPA_VL_DESC: TFloatField
      FieldName = 'CAPA_VL_DESC'
    end
    object MemItensNF_1CAPA_VL_FRT: TFloatField
      FieldName = 'CAPA_VL_FRT'
    end
    object MemItensNF_1CAPA_VL_SEG: TFloatField
      FieldName = 'CAPA_VL_SEG'
    end
    object MemItensNF_1CAPA_VL_OUT_DA: TFloatField
      FieldName = 'CAPA_VL_OUT_DA'
    end
    object MemItensNF_1CAPA_VL_BC_ICMS: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS'
    end
    object MemItensNF_1CAPA_VL_ICMS: TFloatField
      FieldName = 'CAPA_VL_ICMS'
    end
    object MemItensNF_1CAPA_VL_BC_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS_ST'
    end
    object MemItensNF_1CAPA_VL_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_ICMS_ST'
    end
    object MemItensNF_1CAPA_VL_IPI: TFloatField
      FieldName = 'CAPA_VL_IPI'
    end
    object MemItensNF_1CAPA_VL_PIS: TFloatField
      FieldName = 'CAPA_VL_PIS'
    end
    object MemItensNF_1CAPA_VL_COFINS: TFloatField
      FieldName = 'CAPA_VL_COFINS'
    end
    object MemItensNF_1CAPA_PARTICIPANTE: TStringField
      FieldName = 'CAPA_PARTICIPANTE'
      Size = 100
    end
    object MemItensNF_1CAPA_UF_PART: TStringField
      FieldName = 'CAPA_UF_PART'
      Size = 2
    end
    object MemItensNF_1CAPA_UF_EMP: TStringField
      FieldName = 'CAPA_UF_EMP'
      Size = 2
    end
    object MemItensNF_1CAPA_CRT: TStringField
      FieldName = 'CAPA_CRT'
      Size = 100
    end
    object MemItensNF_1CAPA_INDFINAL: TStringField
      FieldName = 'CAPA_INDFINAL'
      Size = 100
    end
    object MemItensNF_1CAPA_FINNFE: TStringField
      FieldName = 'CAPA_FINNFE'
      Size = 100
    end
    object MemItensNF_1CAPA_VL_II: TFloatField
      FieldName = 'CAPA_VL_II'
    end
    object MemItensNF_1CAPA_VL_ICMS_DESON: TFloatField
      FieldName = 'CAPA_VL_ICMS_DESON'
    end
    object MemItensNF_1CAPA_VL_FCP_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_FCP_UF_DEST'
    end
    object MemItensNF_1CAPA_VL_ICMS_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_DEST'
    end
    object MemItensNF_1CAPA_VL_ICMS_UF_REMET: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_REMET'
    end
    object MemItensNF_1CAPA_VL_FCP: TFloatField
      FieldName = 'CAPA_VL_FCP'
    end
    object MemItensNF_1CAPA_VL_FCP_ST: TFloatField
      FieldName = 'CAPA_VL_FCP_ST'
    end
    object MemItensNF_1CAPA_VL_FCP_ST_RET: TFloatField
      FieldName = 'CAPA_VL_FCP_ST_RET'
    end
    object MemItensNF_1CAPA_IEST_PART: TStringField
      FieldName = 'CAPA_IEST_PART'
    end
    object MemItensNF_1CAPA_INFCPL: TStringField
      FieldName = 'CAPA_INFCPL'
      Size = 500
    end
    object MemItensNF_1CAPA_VL_BC_IPI: TFloatField
      FieldName = 'CAPA_VL_BC_IPI'
    end
    object MemItensNF_1CAPA_VL_BC_PIS: TFloatField
      FieldName = 'CAPA_VL_BC_PIS'
    end
    object MemItensNF_1CAPA_VL_BC_COFINS: TFloatField
      FieldName = 'CAPA_VL_BC_COFINS'
    end
  end
  object MemItensNF_2: TFDMemTable
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
    Top = 72
    object MemItensNF_2COD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 14
    end
    object MemItensNF_2QTDE: TFloatField
      FieldName = 'QTDE'
    end
    object MemItensNF_2UNID: TStringField
      FieldName = 'UNID'
      Size = 5
    end
    object MemItensNF_2VL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2VL_DESC: TFloatField
      FieldName = 'VL_DESC'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2CFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object MemItensNF_2VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2ALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object MemItensNF_2VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2VL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2ALIQ_ST: TFloatField
      FieldName = 'ALIQ_ST'
    end
    object MemItensNF_2VL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '0.00'
    end
    object MemItensNF_2DESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 50
    end
    object MemItensNF_2COD_EAN: TStringField
      FieldName = 'COD_EAN'
      Size = 13
    end
    object MemItensNF_2NCM: TStringField
      FieldName = 'NCM'
      Size = 30
    end
    object MemItensNF_2CEST: TStringField
      FieldName = 'CEST'
      Size = 30
    end
    object MemItensNF_2VL_SEGURO: TFloatField
      FieldName = 'VL_SEGURO'
    end
    object MemItensNF_2VL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object MemItensNF_2VL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object MemItensNF_2VL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object MemItensNF_2VL_OUTRAS_DESP: TFloatField
      FieldName = 'VL_OUTRAS_DESP'
    end
    object MemItensNF_2VL_ICMSST_RET: TFloatField
      FieldName = 'VL_ICMSST_RET'
    end
    object MemItensNF_2VL_ICMSST_DEST: TFloatField
      FieldName = 'VL_ICMSST_DEST'
    end
    object MemItensNF_2VL_ICMSST_DESON: TFloatField
      FieldName = 'VL_ICMSST_DESON'
    end
    object MemItensNF_2VL_FRETE: TFloatField
      FieldName = 'VL_FRETE'
    end
    object MemItensNF_2VL_TOTAL_ITEM: TFloatField
      FieldName = 'VL_TOTAL_ITEM'
    end
    object MemItensNF_2CST: TStringField
      DisplayWidth = 4
      FieldName = 'CST'
      Size = 4
    end
    object MemItensNF_2CSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object MemItensNF_2VL_BC_ST_RET: TFloatField
      FieldName = 'VL_BC_ST_RET'
    end
    object MemItensNF_2VL_FCP_ST: TFloatField
      FieldName = 'VL_FCP_ST'
    end
    object MemItensNF_2VL_BC_FCP_ST: TFloatField
      FieldName = 'VL_BC_FCP_ST'
    end
    object MemItensNF_2VL_BC_FCP_ST_RET: TFloatField
      FieldName = 'VL_BC_FCP_ST_RET'
    end
    object MemItensNF_2VL_FCP_ST_RET: TFloatField
      FieldName = 'VL_FCP_ST_RET'
    end
    object MemItensNF_2VL_BC_ST_DEST: TFloatField
      FieldName = 'VL_BC_ST_DEST'
    end
    object MemItensNF_2VL_II: TFloatField
      FieldName = 'VL_II'
    end
    object MemItensNF_2VL_ICMS_DESON: TFloatField
      FieldName = 'VL_ICMS_DESON'
    end
    object MemItensNF_2VL_FCP_UF_DEST: TFloatField
      FieldName = 'VL_FCP_UF_DEST'
    end
    object MemItensNF_2VL_FCP: TFloatField
      FieldName = 'VL_FCP'
    end
    object MemItensNF_2VL_BC_UF_DEST: TFloatField
      FieldName = 'VL_BC_UF_DEST'
    end
    object MemItensNF_2VL_BC_FCP_UF_DEST: TFloatField
      FieldName = 'VL_BC_FCP_UF_DEST'
    end
    object MemItensNF_2VL_BC_II: TFloatField
      FieldName = 'VL_BC_II'
    end
    object MemItensNF_2VL_DESP_ADU_II: TFloatField
      FieldName = 'VL_DESP_ADU_II'
    end
    object MemItensNF_2VL_IOF_II: TFloatField
      FieldName = 'VL_IOF_II'
    end
    object MemItensNF_2P_RED_BC: TFloatField
      FieldName = 'P_RED_BC'
    end
    object MemItensNF_2P_RED_BC_ST: TFloatField
      FieldName = 'P_RED_BC_ST'
    end
    object MemItensNF_2P_ICMS_EFET: TFloatField
      FieldName = 'P_ICMS_EFET'
    end
    object MemItensNF_2P_MVA_ST: TFloatField
      FieldName = 'P_MVA_ST'
    end
    object MemItensNF_2UF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object MemItensNF_2VL_ICMS_OP: TFloatField
      FieldName = 'VL_ICMS_OP'
    end
    object MemItensNF_2P_DIF: TFloatField
      FieldName = 'P_DIF'
    end
    object MemItensNF_2P_ICMS_DIF: TFloatField
      FieldName = 'P_ICMS_DIF'
    end
    object MemItensNF_2VL_BC_FCP: TFloatField
      FieldName = 'VL_BC_FCP'
    end
    object MemItensNF_2P_FCP_ST: TFloatField
      FieldName = 'P_FCP_ST'
    end
    object MemItensNF_2P_FCP_ST_RET: TFloatField
      FieldName = 'P_FCP_ST_RET'
    end
    object MemItensNF_2P_RED_BC_EFET: TFloatField
      FieldName = 'P_RED_BC_EFET'
    end
    object MemItensNF_2VL_BC_EFET: TFloatField
      FieldName = 'VL_BC_EFET'
    end
    object MemItensNF_2VL_ICMS_EFET: TFloatField
      FieldName = 'VL_ICMS_EFET'
    end
    object MemItensNF_2VL_ICMS_SUBSTITUTO: TFloatField
      FieldName = 'VL_ICMS_SUBSTITUTO'
    end
    object MemItensNF_2P_FCP_UF_DEST: TFloatField
      FieldName = 'P_FCP_UF_DEST'
    end
    object MemItensNF_2P_ICMS_UF_DEST: TFloatField
      FieldName = 'P_ICMS_UF_DEST'
    end
    object MemItensNF_2P_ICMS_INTER: TFloatField
      FieldName = 'P_ICMS_INTER'
    end
    object MemItensNF_2P_ICMS_INTER_PART: TFloatField
      FieldName = 'P_ICMS_INTER_PART'
    end
    object MemItensNF_2VL_ICMS_UF_DEST: TFloatField
      FieldName = 'VL_ICMS_UF_DEST'
    end
    object MemItensNF_2VL_ICMS_UF_REMET: TFloatField
      FieldName = 'VL_ICMS_UF_REMET'
    end
    object MemItensNF_2P_BC_OP: TFloatField
      FieldName = 'P_BC_OP'
    end
    object MemItensNF_2ORIG_CST: TStringField
      FieldName = 'ORIG_CST'
      Size = 1
    end
    object MemItensNF_2ORIG_CSOSN: TStringField
      FieldName = 'ORIG_CSOSN'
      Size = 1
    end
    object MemItensNF_2NUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
    end
    object MemItensNF_2SELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      ProviderFlags = []
      Size = 1
    end
    object MemItensNF_2VL_CRED_ICMSSN: TFloatField
      FieldName = 'VL_CRED_ICMSSN'
    end
    object MemItensNF_2P_VL_CRED_ICMSSN: TFloatField
      FieldName = 'P_VL_CRED_ICMSSN'
    end
    object MemItensNF_2ID: TStringField
      FieldName = 'ID'
    end
    object MemItensNF_2IDNF: TStringField
      FieldName = 'IDNF'
    end
    object MemItensNF_2CAPA_IND_OPER: TStringField
      FieldName = 'CAPA_IND_OPER'
      Size = 50
    end
    object MemItensNF_2CAPA_COD_PART: TStringField
      FieldName = 'CAPA_COD_PART'
      Size = 50
    end
    object MemItensNF_2CAPA_COD_MOD: TStringField
      FieldName = 'CAPA_COD_MOD'
      Size = 5
    end
    object MemItensNF_2CAPA_SER: TStringField
      FieldName = 'CAPA_SER'
      Size = 5
    end
    object MemItensNF_2NUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      ProviderFlags = []
      Size = 10
    end
    object MemItensNF_2CAPA_CHV_NFE: TStringField
      FieldName = 'CAPA_CHV_NFE'
      Size = 44
    end
    object MemItensNF_2CAPA_DT_DOC: TDateTimeField
      FieldName = 'CAPA_DT_DOC'
    end
    object MemItensNF_2CAPA_DT_E_ES: TDateTimeField
      FieldName = 'CAPA_DT_E_ES'
    end
    object MemItensNF_2CAPA_VL_DOC: TFloatField
      FieldName = 'CAPA_VL_DOC'
    end
    object MemItensNF_2CAPA_VL_MERC: TFloatField
      FieldName = 'CAPA_VL_MERC'
    end
    object MemItensNF_2CAPA_VL_DESC: TFloatField
      FieldName = 'CAPA_VL_DESC'
    end
    object MemItensNF_2CAPA_VL_FRT: TFloatField
      FieldName = 'CAPA_VL_FRT'
    end
    object MemItensNF_2CAPA_VL_SEG: TFloatField
      FieldName = 'CAPA_VL_SEG'
    end
    object MemItensNF_2CAPA_VL_OUT_DA: TFloatField
      FieldName = 'CAPA_VL_OUT_DA'
    end
    object MemItensNF_2CAPA_VL_BC_ICMS: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS'
    end
    object MemItensNF_2CAPA_VL_ICMS: TFloatField
      FieldName = 'CAPA_VL_ICMS'
    end
    object MemItensNF_2CAPA_VL_BC_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_BC_ICMS_ST'
    end
    object MemItensNF_2CAPA_VL_ICMS_ST: TFloatField
      FieldName = 'CAPA_VL_ICMS_ST'
    end
    object MemItensNF_2CAPA_VL_IPI: TFloatField
      FieldName = 'CAPA_VL_IPI'
    end
    object MemItensNF_2CAPA_VL_PIS: TFloatField
      FieldName = 'CAPA_VL_PIS'
    end
    object MemItensNF_2CAPA_VL_COFINS: TFloatField
      FieldName = 'CAPA_VL_COFINS'
    end
    object MemItensNF_2CAPA_PARTICIPANTE: TStringField
      FieldName = 'CAPA_PARTICIPANTE'
      Size = 100
    end
    object MemItensNF_2CAPA_UF_PART: TStringField
      FieldName = 'CAPA_UF_PART'
      Size = 2
    end
    object MemItensNF_2CAPA_UF_EMP: TStringField
      FieldName = 'CAPA_UF_EMP'
      Size = 2
    end
    object MemItensNF_2CAPA_CRT: TStringField
      FieldName = 'CAPA_CRT'
      Size = 100
    end
    object MemItensNF_2CAPA_INDFINAL: TStringField
      FieldName = 'CAPA_INDFINAL'
      Size = 100
    end
    object MemItensNF_2CAPA_FINNFE: TStringField
      FieldName = 'CAPA_FINNFE'
      Size = 100
    end
    object MemItensNF_2CAPA_VL_II: TFloatField
      FieldName = 'CAPA_VL_II'
    end
    object MemItensNF_2CAPA_VL_ICMS_DESON: TFloatField
      FieldName = 'CAPA_VL_ICMS_DESON'
    end
    object MemItensNF_2CAPA_VL_FCP_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_FCP_UF_DEST'
    end
    object MemItensNF_2CAPA_VL_ICMS_UF_DEST: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_DEST'
    end
    object MemItensNF_2CAPA_VL_ICMS_UF_REMET: TFloatField
      FieldName = 'CAPA_VL_ICMS_UF_REMET'
    end
    object MemItensNF_2CAPA_VL_FCP: TFloatField
      FieldName = 'CAPA_VL_FCP'
    end
    object MemItensNF_2CAPA_VL_FCP_ST: TFloatField
      FieldName = 'CAPA_VL_FCP_ST'
    end
    object MemItensNF_2CAPA_VL_FCP_ST_RET: TFloatField
      FieldName = 'CAPA_VL_FCP_ST_RET'
    end
    object MemItensNF_2CAPA_IEST_PART: TStringField
      FieldName = 'CAPA_IEST_PART'
    end
    object MemItensNF_2CAPA_INFCPL: TStringField
      FieldName = 'CAPA_INFCPL'
      Size = 500
    end
    object MemItensNF_2CAPA_VL_BC_IPI: TFloatField
      FieldName = 'CAPA_VL_BC_IPI'
    end
    object MemItensNF_2CAPA_VL_BC_PIS: TFloatField
      FieldName = 'CAPA_VL_BC_PIS'
    end
    object MemItensNF_2CAPA_VL_BC_COFINS: TFloatField
      FieldName = 'CAPA_VL_BC_COFINS'
    end
  end
  object QryArrayNF_2: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "NF"('
      
        '            "ID", "IND_OPER", "COD_PART", "PARTICIPANTE", "COD_M' +
        'OD", "SER", '
      
        '            "NUM_DOC", "CHV_NFE", "DT_DOC", "DT_E_ES", "VL_DOC",' +
        ' "VL_MERC", '
      
        '            "VL_DESC", "VL_FRT", "VL_SEG", "VL_OUT_DA", "VL_BC_I' +
        'CMS", "VL_ICMS", '
      
        '            "VL_BC_ICMS_ST", "VL_ICMS_ST", "VL_BC_IPI", "VL_IPI"' +
        ', "VL_BC_PIS", '
      
        '            "VL_PIS", "VL_BC_COFINS", "VL_COFINS", "COD_EMP", "E' +
        'MPRESA", '
      
        '            "MES", "ANO", "UF_PART", "UF_EMP", "CRT", "INDFINAL"' +
        ', "FINNFE", '
      
        '            "VL_II", "VL_ICMS_DESON", "VL_FCP_UF_DEST", "VL_ICMS' +
        '_UF_DEST", '
      
        '            "VL_ICMS_UF_REMET", "VL_FCP", "VL_FCP_ST", "VL_FCP_S' +
        'T_RET","iest_part",'
      '            "INFCPL","DT_IMPORTACAO_XML")'
      
        '    VALUES (:ID,:IND_OPER,:COD_PART,:PARTICIPANTE,:COD_MOD,:SER,' +
        ' '
      
        '            :NUM_DOC,:CHV_NFE,:DT_DOC,:DT_E_ES,:VL_DOC,:VL_MERC,' +
        ' '
      
        '            :VL_DESC,:VL_FRT,:VL_SEG,:VL_OUT_DA,:VL_BC_ICMS,:VL_' +
        'ICMS, '
      
        '            :VL_BC_ICMS_ST,:VL_ICMS_ST,:VL_BC_IPI,:VL_IPI,:VL_BC' +
        '_PIS,'
      '            :VL_PIS,:VL_BC_COFINS,:VL_COFINS,:COD_EMP,:EMPRESA, '
      '            :MES,:ANO,:UF_PART,:UF_EMP,:CRT,:INDFINAL,:FINNFE, '
      
        '            :VL_II,:VL_ICMS_DESON,:VL_FCP_UF_DEST,:VL_ICMS_UF_DE' +
        'ST, '
      
        '            :VL_ICMS_UF_REMET,:VL_FCP,:VL_FCP_ST,:VL_FCP_ST_RET,' +
        ':iest_part, '
      '            :INFCPL,:DT_IMPORTACAO_XML'
      '           );')
    Left = 460
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IND_OPER'
        ParamType = ptInput
      end
      item
        Name = 'COD_PART'
        ParamType = ptInput
      end
      item
        Name = 'PARTICIPANTE'
        ParamType = ptInput
      end
      item
        Name = 'COD_MOD'
        ParamType = ptInput
      end
      item
        Name = 'SER'
        ParamType = ptInput
      end
      item
        Name = 'NUM_DOC'
        ParamType = ptInput
      end
      item
        Name = 'CHV_NFE'
        ParamType = ptInput
      end
      item
        Name = 'DT_DOC'
        ParamType = ptInput
      end
      item
        Name = 'DT_E_ES'
        ParamType = ptInput
      end
      item
        Name = 'VL_DOC'
        ParamType = ptInput
      end
      item
        Name = 'VL_MERC'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESC'
        ParamType = ptInput
      end
      item
        Name = 'VL_FRT'
        ParamType = ptInput
      end
      item
        Name = 'VL_SEG'
        ParamType = ptInput
      end
      item
        Name = 'VL_OUT_DA'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'VL_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'COD_EMP'
        ParamType = ptInput
      end
      item
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        Name = 'MES'
        ParamType = ptInput
      end
      item
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        Name = 'UF_PART'
        ParamType = ptInput
      end
      item
        Name = 'UF_EMP'
        ParamType = ptInput
      end
      item
        Name = 'CRT'
        ParamType = ptInput
      end
      item
        Name = 'INDFINAL'
        ParamType = ptInput
      end
      item
        Name = 'FINNFE'
        ParamType = ptInput
      end
      item
        Name = 'VL_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_REMET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'IEST_PART'
        ParamType = ptInput
      end
      item
        Name = 'INFCPL'
        ParamType = ptInput
      end
      item
        Name = 'DT_IMPORTACAO_XML'
        ParamType = ptInput
      end>
  end
  object QryArrayItensNF_2: TFDQuery
    Connection = DMBase.DB
    SQL.Strings = (
      'INSERT INTO "NF_ITENS"('
      '            "ID", "IDNF","NUM_ITEM","COD_ITEM", "DESCR_ITEM", '
      
        '            "QTDE", "UNID", "VL_ITEM", "VL_DESC", "CFOP", "VL_BC' +
        '_ICMS", "ALIQ_ICMS", '
      
        '            "VL_ICMS", "VL_BC_ICMS_ST", "ALIQ_ST", "VL_ICMS_ST",' +
        ' "COD_EAN", '
      
        '            "CEST", "NCM", "VL_TOTAL_ITEM", "VL_IPI", "VL_OUTRAS' +
        '_DESP", "VL_PIS", '
      
        '            "VL_COFINS", "VL_ICMSST_RET", "VL_ICMSST_DEST", "VL_' +
        'ICMSST_DESON", '
      
        '            "VL_FRETE", "VL_SEGURO", "CSOSN", "CST", "VL_BC_ST_R' +
        'ET", "VL_FCP_ST", '
      
        '            "VL_BC_FCP_ST", "VL_BC_FCP_ST_RET", "VL_FCP_ST_RET",' +
        ' "VL_BC_ST_DEST", '
      
        '            "VL_ICMS_DESON", "VL_II", "VL_FCP_UF_DEST", "VL_FCP"' +
        ', "VL_BC_UF_DEST", '
      
        '            "VL_BC_FCP_UF_DEST", "VL_ICMS_UF_DEST", "VL_ICMS_UF_' +
        'REMET", "VL_BC_II", '
      
        '            "VL_DESP_ADU_II", "VL_IOF_II", "P_RED_BC", "P_RED_BC' +
        '_ST", "P_ICMS_EFET", '
      
        '            "P_MVA_ST", "UF_ST", "VL_ICMS_OP", "P_DIF", "P_ICMS_' +
        'DIF", "VL_BC_FCP", '
      
        '            "P_FCP_ST", "P_FCP_ST_RET", "P_RED_BC_EFET", "VL_BC_' +
        'EFET", "VL_ICMS_EFET", '
      
        '            "VL_ICMS_SUBSTITUTO", "P_FCP_UF_DEST", "P_ICMS_UF_DE' +
        'ST", "P_ICMS_INTER", '
      
        '            "P_ICMS_INTER_PART", "P_BC_OP", "ORIG_CST", "ORIG_CS' +
        'OSN", '
      '            "VL_CRED_ICMSSN", "P_VL_CRED_ICMSSN")'
      '    VALUES (:ID,:IDNF,:NUM_ITEM,:COD_ITEM,:DESCR_ITEM, '
      
        '            :QTDE,:UNID,:VL_ITEM,:VL_DESC,:CFOP,:VL_BC_ICMS,:ALI' +
        'Q_ICMS, '
      
        '            :VL_ICMS,:VL_BC_ICMS_ST,:ALIQ_ST,:VL_ICMS_ST,:COD_EA' +
        'N, '
      
        '            :CEST,:NCM,:VL_TOTAL_ITEM,:VL_IPI,:VL_OUTRAS_DESP,:V' +
        'L_PIS, '
      
        '            :VL_COFINS,:VL_ICMSST_RET,:VL_ICMSST_DEST,:VL_ICMSST' +
        '_DESON, '
      
        '            :VL_FRETE,:VL_SEGURO,:CSOSN,:CST,:VL_BC_ST_RET,:VL_F' +
        'CP_ST, '
      
        '            :VL_BC_FCP_ST,:VL_BC_FCP_ST_RET,:VL_FCP_ST_RET,:VL_B' +
        'C_ST_DEST, '
      
        '            :VL_ICMS_DESON,:VL_II,:VL_FCP_UF_DEST,:VL_FCP,:VL_BC' +
        '_UF_DEST, '
      
        '            :VL_BC_FCP_UF_DEST,:VL_ICMS_UF_DEST,:VL_ICMS_UF_REME' +
        'T,:VL_BC_II, '
      
        '            :VL_DESP_ADU_II,:VL_IOF_II,:P_RED_BC,:P_RED_BC_ST,:P' +
        '_ICMS_EFET, '
      
        '            :P_MVA_ST,:UF_ST,:VL_ICMS_OP,:P_DIF,:P_ICMS_DIF,:VL_' +
        'BC_FCP,'
      
        '            :P_FCP_ST,:P_FCP_ST_RET,:P_RED_BC_EFET,:VL_BC_EFET,:' +
        'VL_ICMS_EFET, '
      
        '            :VL_ICMS_SUBSTITUTO,:P_FCP_UF_DEST,:P_ICMS_UF_DEST,:' +
        'P_ICMS_INTER, '
      '            :P_ICMS_INTER_PART,:P_BC_OP,:ORIG_CST,:ORIG_CSOSN, '
      '            :VL_CRED_ICMSSN,:P_VL_CRED_ICMSSN'
      '           );')
    Left = 460
    Top = 72
    ParamData = <
      item
        Name = 'ID'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'IDNF'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'NUM_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'COD_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'DESCR_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        Name = 'UNID'
        ParamType = ptInput
      end
      item
        Name = 'VL_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESC'
        ParamType = ptInput
      end
      item
        Name = 'CFOP'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'ALIQ_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'ALIQ_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_ST'
        ParamType = ptInput
      end
      item
        Name = 'COD_EAN'
        ParamType = ptInput
      end
      item
        Name = 'CEST'
        ParamType = ptInput
      end
      item
        Name = 'NCM'
        ParamType = ptInput
      end
      item
        Name = 'VL_TOTAL_ITEM'
        ParamType = ptInput
      end
      item
        Name = 'VL_IPI'
        ParamType = ptInput
      end
      item
        Name = 'VL_OUTRAS_DESP'
        ParamType = ptInput
      end
      item
        Name = 'VL_PIS'
        ParamType = ptInput
      end
      item
        Name = 'VL_COFINS'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMSST_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_FRETE'
        ParamType = ptInput
      end
      item
        Name = 'VL_SEGURO'
        ParamType = ptInput
      end
      item
        Name = 'CSOSN'
        ParamType = ptInput
      end
      item
        Name = 'CST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_ST_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_DESON'
        ParamType = ptInput
      end
      item
        Name = 'VL_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_FCP'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_UF_REMET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_DESP_ADU_II'
        ParamType = ptInput
      end
      item
        Name = 'VL_IOF_II'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC_ST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_EFET'
        ParamType = ptInput
      end
      item
        Name = 'P_MVA_ST'
        ParamType = ptInput
      end
      item
        Name = 'UF_ST'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_OP'
        ParamType = ptInput
      end
      item
        Name = 'P_DIF'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_DIF'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_FCP'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_ST'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_ST_RET'
        ParamType = ptInput
      end
      item
        Name = 'P_RED_BC_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_BC_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_EFET'
        ParamType = ptInput
      end
      item
        Name = 'VL_ICMS_SUBSTITUTO'
        ParamType = ptInput
      end
      item
        Name = 'P_FCP_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_UF_DEST'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_INTER'
        ParamType = ptInput
      end
      item
        Name = 'P_ICMS_INTER_PART'
        ParamType = ptInput
      end
      item
        Name = 'P_BC_OP'
        ParamType = ptInput
      end
      item
        Name = 'ORIG_CST'
        ParamType = ptInput
      end
      item
        Name = 'ORIG_CSOSN'
        ParamType = ptInput
      end
      item
        Name = 'VL_CRED_ICMSSN'
        ParamType = ptInput
      end
      item
        Name = 'P_VL_CRED_ICMSSN'
        ParamType = ptInput
      end>
  end
  object QryXMLImportado_1: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "ID" FROM "NF" WHERE "CHV_NFE" =:CHAVE'
      ''
      'UNION'
      ''
      'SELECT "ID" FROM "CTE" WHERE "CHV_CTE" =:CHAVE')
    Left = 576
    Top = 24
    ParamData = <
      item
        Name = 'CHAVE'
        ParamType = ptInput
      end>
  end
  object QryXMLImportado_2: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "ID" FROM "NF" WHERE "CHV_NFE" =:CHAVE'
      ''
      'UNION'
      ''
      'SELECT "ID" FROM "CTE" WHERE "CHV_CTE" =:CHAVE')
    Left = 696
    Top = 24
    ParamData = <
      item
        Name = 'CHAVE'
        ParamType = ptInput
      end>
  end
  object QryEmpresaImportada_1: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA" FROM "EMPRESA"'
      'WHERE "COD_EMP" =:CODIGO')
    Left = 576
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QryEmpresaImportada_2: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA" FROM "EMPRESA"'
      'WHERE "COD_EMP" =:CODIGO')
    Left = 696
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object QryCadEmpresa_1: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA","DT_CADASTRO" FROM "EMPRESA"'
      'WHERE "COD_EMP" = '#39'-1'#39)
    Left = 816
    Top = 24
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
    object QryCadEmpresa_1DT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
  end
  object QryCadEmpresa_2: TFDQuery
    CachedUpdates = True
    Connection = DMBase.DB
    SQL.Strings = (
      'SELECT "COD_EMP","EMPRESA","DT_CADASTRO" FROM "EMPRESA"'
      'WHERE "COD_EMP" = '#39'-1'#39)
    Left = 920
    Top = 24
    object StringField3: TStringField
      DisplayWidth = 20
      FieldName = 'COD_EMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField4: TStringField
      DisplayWidth = 100
      FieldName = 'EMPRESA'
      Size = 100
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
  end
end
