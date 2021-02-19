unit uDMImportacaoXML;

interface

uses
  System.SysUtils, System.Classes, ACBrBase, ACBrDFe, ACBrNFe,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass,
  ACBrNFeDANFEFR,W7ProgressBars,Vcl.Forms,pcnNFe,pcnConversaoNFe,
  pcnConversao,System.Generics.Collections,ACBrCTe,pcteCTe,pcteConversaoCTe,
  BiblKhronos,Vcl.StdCtrls;

type
  TDMImportacaoXML = class(TDataModule)
    DsQryNF: TDataSource;
    DsQryItensNF: TDataSource;
    MemNF: TFDMemTable;
    MemItensNF: TFDMemTable;
    MemNFIND_OPER: TStringField;
    MemNFCOD_PART: TStringField;
    MemNFCOD_MOD: TStringField;
    MemNFSER: TStringField;
    MemNFNUM_DOC: TStringField;
    MemNFCHV_NFE: TStringField;
    MemNFDT_DOC: TDateTimeField;
    MemNFDT_E_ES: TDateTimeField;
    MemNFVL_DOC: TFloatField;
    MemNFVL_MERC: TFloatField;
    MemNFVL_DESC: TFloatField;
    MemNFVL_FRT: TFloatField;
    MemNFVL_SEG: TFloatField;
    MemNFVL_OUT_DA: TFloatField;
    MemNFVL_BC_ICMS: TFloatField;
    MemNFVL_ICMS: TFloatField;
    MemNFVL_BC_ICMS_ST: TFloatField;
    MemNFVL_ICMS_ST: TFloatField;
    MemNFVL_BC_IPI: TFloatField;
    MemNFVL_IPI: TFloatField;
    MemNFVL_BC_PIS: TFloatField;
    MemNFVL_PIS: TFloatField;
    MemNFVL_BC_COFINS: TFloatField;
    MemNFVL_COFINS: TFloatField;
    MemNFPARTICIPANTE: TStringField;
    MemNFCOD_EMP: TStringField;
    MemNFEMPRESA: TStringField;
    MemNFMES: TIntegerField;
    MemNFANO: TIntegerField;
    MemNFUF_PART: TStringField;
    MemNFUF_EMP: TStringField;
    MemNFCRT: TStringField;
    MemNFINDFINAL: TStringField;
    MemNFFINNFE: TStringField;
    MemNFVL_II: TFloatField;
    MemNFVL_ICMS_DESON: TFloatField;
    MemNFVL_FCP_UF_DEST: TFloatField;
    MemNFVL_ICMS_UF_DEST: TFloatField;
    MemNFVL_ICMS_UF_REMET: TFloatField;
    MemNFVL_FCP: TFloatField;
    MemNFVL_FCP_ST: TFloatField;
    MemNFVL_FCP_ST_RET: TFloatField;
    MemNFIEST_PART: TStringField;
    MemNFINFCPL: TStringField;
    MemNFSELECIONADO: TStringField;
    MemItensNFCOD_ITEM: TStringField;
    MemItensNFQTDE: TFloatField;
    MemItensNFUNID: TStringField;
    MemItensNFVL_ITEM: TFloatField;
    MemItensNFVL_DESC: TFloatField;
    MemItensNFCFOP: TStringField;
    MemItensNFVL_BC_ICMS: TFloatField;
    MemItensNFALIQ_ICMS: TFloatField;
    MemItensNFVL_ICMS: TFloatField;
    MemItensNFVL_BC_ICMS_ST: TFloatField;
    MemItensNFALIQ_ST: TFloatField;
    MemItensNFVL_ICMS_ST: TFloatField;
    MemItensNFDESCR_ITEM: TStringField;
    MemItensNFCOD_EAN: TStringField;
    MemItensNFNCM: TStringField;
    MemItensNFCEST: TStringField;
    MemItensNFVL_SEGURO: TFloatField;
    MemItensNFVL_IPI: TFloatField;
    MemItensNFVL_PIS: TFloatField;
    MemItensNFVL_COFINS: TFloatField;
    MemItensNFVL_OUTRAS_DESP: TFloatField;
    MemItensNFVL_ICMSST_RET: TFloatField;
    MemItensNFVL_ICMSST_DEST: TFloatField;
    MemItensNFVL_ICMSST_DESON: TFloatField;
    MemItensNFVL_FRETE: TFloatField;
    MemItensNFVL_TOTAL_ITEM: TFloatField;
    MemItensNFCST: TStringField;
    MemItensNFCSOSN: TStringField;
    MemItensNFVL_BC_ST_RET: TFloatField;
    MemItensNFVL_FCP_ST: TFloatField;
    MemItensNFVL_BC_FCP_ST: TFloatField;
    MemItensNFVL_BC_FCP_ST_RET: TFloatField;
    MemItensNFVL_FCP_ST_RET: TFloatField;
    MemItensNFVL_BC_ST_DEST: TFloatField;
    MemItensNFVL_II: TFloatField;
    MemItensNFVL_ICMS_DESON: TFloatField;
    MemItensNFVL_FCP_UF_DEST: TFloatField;
    MemItensNFVL_FCP: TFloatField;
    MemItensNFVL_BC_UF_DEST: TFloatField;
    MemItensNFVL_BC_FCP_UF_DEST: TFloatField;
    MemItensNFVL_BC_II: TFloatField;
    MemItensNFVL_DESP_ADU_II: TFloatField;
    MemItensNFVL_IOF_II: TFloatField;
    MemItensNFP_RED_BC: TFloatField;
    MemItensNFP_RED_BC_ST: TFloatField;
    MemItensNFP_ICMS_EFET: TFloatField;
    MemItensNFP_MVA_ST: TFloatField;
    MemItensNFUF_ST: TStringField;
    MemItensNFVL_ICMS_OP: TFloatField;
    MemItensNFP_DIF: TFloatField;
    MemItensNFP_ICMS_DIF: TFloatField;
    MemItensNFVL_BC_FCP: TFloatField;
    MemItensNFP_FCP_ST: TFloatField;
    MemItensNFP_FCP_ST_RET: TFloatField;
    MemItensNFP_RED_BC_EFET: TFloatField;
    MemItensNFVL_BC_EFET: TFloatField;
    MemItensNFVL_ICMS_EFET: TFloatField;
    MemItensNFVL_ICMS_SUBSTITUTO: TFloatField;
    MemItensNFP_FCP_UF_DEST: TFloatField;
    MemItensNFP_ICMS_UF_DEST: TFloatField;
    MemItensNFP_ICMS_INTER: TFloatField;
    MemItensNFP_ICMS_INTER_PART: TFloatField;
    MemItensNFVL_ICMS_UF_DEST: TFloatField;
    MemItensNFVL_ICMS_UF_REMET: TFloatField;
    MemItensNFP_BC_OP: TFloatField;
    MemItensNFORIG_CST: TStringField;
    MemItensNFORIG_CSOSN: TStringField;
    MemItensNFNUM_ITEM: TIntegerField;
    MemItensNFSELECIONADO: TStringField;
    MemItensNFVL_CRED_ICMSSN: TFloatField;
    MemItensNFP_VL_CRED_ICMSSN: TFloatField;
    MemItensNFNUM_DOC: TStringField;
    QryArrayNF_1: TFDQuery;
    QryArrayItensNF_1: TFDQuery;
    MemNFID: TStringField;
    MemItensNFID: TStringField;
    MemItensNFIDNF: TStringField;
    DsQryCTe: TDataSource;
    MemCTe: TFDMemTable;
    QryArrayCTe: TFDQuery;
    DsQryCTeDoc: TDataSource;
    MemCTeDoc: TFDMemTable;
    QryArrayCTeDoc: TFDQuery;
    MemCTeID: TStringField;
    MemCTeDT_EMIS: TDateTimeField;
    MemCTeCFOP: TStringField;
    MemCTeCOD_PART: TStringField;
    MemCTePARTICIPANTE: TStringField;
    MemCTeCOD_MOD: TStringField;
    MemCTeSER: TStringField;
    MemCTeNUM_DOC: TStringField;
    MemCTeCHV_CTE: TStringField;
    MemCTeOBS: TStringField;
    MemCTeCOD_EMP: TStringField;
    MemCTeEMPRESA: TStringField;
    MemCTeDocID: TStringField;
    MemCTeDocIDCTE: TStringField;
    MemCTeDocCHV_NFE: TStringField;
    MemCTeSELECIONADO: TStringField;
    MemCTeDocSELECIONADO: TStringField;
    MemCTeMES: TIntegerField;
    MemCTeANO: TIntegerField;
    DsQryCTeEmit: TDataSource;
    MemCTeEmit: TFDMemTable;
    MemCTeEmitID: TStringField;
    MemCTeEmitIDCTE: TStringField;
    QryArrayCTeEmit: TFDQuery;
    MemCTeEmitCNPJ: TStringField;
    MemCTeEmitENDERECO: TStringField;
    MemCTeEmitCODMUN: TIntegerField;
    MemCTeEmitMUN: TStringField;
    MemCTeEmitUF: TStringField;
    DsQryCTeRem: TDataSource;
    MemCTeRem: TFDMemTable;
    MemCTeRemID: TStringField;
    MemCTeRemIDCTE: TStringField;
    MemCTeRemCNPJ: TStringField;
    MemCTeRemENDERECO: TStringField;
    MemCTeRemCODMUN: TIntegerField;
    MemCTeRemMUN: TStringField;
    MemCTeRemUF: TStringField;
    QryArrayCTeRem: TFDQuery;
    MemCTeTP_TOMADOR: TStringField;
    DsQryCTeExt: TDataSource;
    MemCTeExt: TFDMemTable;
    MemCTeExtID: TStringField;
    MemCTeExtIDCTE: TStringField;
    MemCTeExtCNPJ: TStringField;
    MemCTeExtENDERECO: TStringField;
    MemCTeExtCODMUN: TIntegerField;
    MemCTeExtMUN: TStringField;
    MemCTeExtUF: TStringField;
    QryArrayCTeExt: TFDQuery;
    DsQryCTeReceb: TDataSource;
    MemCTeReceb: TFDMemTable;
    MemCTeRecebID: TStringField;
    MemCTeRecebIDCTE: TStringField;
    MemCTeRecebCNPJ: TStringField;
    MemCTeRecebENDERECO: TStringField;
    MemCTeRecebCODMUN: TIntegerField;
    MemCTeRecebMUN: TStringField;
    MemCTeRecebUF: TStringField;
    QryArrayCTeReceb: TFDQuery;
    DsQryCTeDest: TDataSource;
    MemCTeDest: TFDMemTable;
    MemCTeDestID: TStringField;
    MemCTeDestIDCTE: TStringField;
    MemCTeDestCNPJ: TStringField;
    MemCTeDestENDERECO: TStringField;
    MemCTeDestCODMUN: TIntegerField;
    MemCTeDestMUN: TStringField;
    MemCTeDestUF: TStringField;
    QryArrayCTeDest: TFDQuery;
    MemCTeVL_PREST: TFloatField;
    DsQryCTeImpostos: TDataSource;
    MemCTeImpostos: TFDMemTable;
    QryArrayCTeImpostos: TFDQuery;
    MemCTeImpostosID: TStringField;
    MemCTeImpostosIDCTE: TStringField;
    MemCTeImpostosCST: TStringField;
    MemCTeImpostosVL_BC: TFloatField;
    MemCTeImpostosVL_ICMS: TFloatField;
    MemCTeImpostosP_ICMS: TFloatField;
    MemCTeEmitNUM_DOC: TStringField;
    MemCTeRemNUM_DOC: TStringField;
    MemCTeExtNUM_DOC: TStringField;
    MemCTeRecebNUM_DOC: TStringField;
    MemCTeDestNUM_DOC: TStringField;
    MemCTeImpostosNUM_DOC: TStringField;
    MemCTeDocNUM_DOC: TStringField;
    MemCTeEmitNOME: TStringField;
    MemCTeRemNOME: TStringField;
    MemCTeExtNOME: TStringField;
    MemCTeRecebNOME: TStringField;
    MemCTeDestNOME: TStringField;
    MemCTeCOD_MUN_INI: TIntegerField;
    MemCTeDESC_MUN_INI: TStringField;
    MemCTeUF_INI: TStringField;
    MemCTeCOD_MUN_FIM: TIntegerField;
    MemCTeDESC_MUN_FIM: TStringField;
    MemCTeUF_FIM: TStringField;
    MemCTeDT_IMPORTACAO_XML: TDateTimeField;
    MemNFDT_IMPORTACAO_XML: TDateTimeField;
    MemItensNFCAPA_IND_OPER: TStringField;
    MemItensNFCAPA_COD_PART: TStringField;
    MemItensNFCAPA_COD_MOD: TStringField;
    MemItensNFCAPA_SER: TStringField;
    MemItensNFCAPA_CHV_NFE: TStringField;
    MemItensNFCAPA_DT_DOC: TDateTimeField;
    MemItensNFCAPA_DT_E_ES: TDateTimeField;
    MemItensNFCAPA_VL_DOC: TFloatField;
    MemItensNFCAPA_VL_MERC: TFloatField;
    MemItensNFCAPA_VL_DESC: TFloatField;
    MemItensNFCAPA_VL_FRT: TFloatField;
    MemItensNFCAPA_VL_SEG: TFloatField;
    MemItensNFCAPA_VL_OUT_DA: TFloatField;
    MemItensNFCAPA_VL_BC_ICMS: TFloatField;
    MemItensNFCAPA_VL_ICMS: TFloatField;
    MemItensNFCAPA_VL_BC_ICMS_ST: TFloatField;
    MemItensNFCAPA_VL_ICMS_ST: TFloatField;
    MemItensNFCAPA_VL_IPI: TFloatField;
    MemItensNFCAPA_VL_PIS: TFloatField;
    MemItensNFCAPA_VL_COFINS: TFloatField;
    MemItensNFCAPA_PARTICIPANTE: TStringField;
    MemItensNFCAPA_UF_PART: TStringField;
    MemItensNFCAPA_UF_EMP: TStringField;
    MemItensNFCAPA_CRT: TStringField;
    MemItensNFCAPA_INDFINAL: TStringField;
    MemItensNFCAPA_FINNFE: TStringField;
    MemItensNFCAPA_VL_II: TFloatField;
    MemItensNFCAPA_VL_ICMS_DESON: TFloatField;
    MemItensNFCAPA_VL_FCP_UF_DEST: TFloatField;
    MemItensNFCAPA_VL_ICMS_UF_DEST: TFloatField;
    MemItensNFCAPA_VL_ICMS_UF_REMET: TFloatField;
    MemItensNFCAPA_VL_FCP: TFloatField;
    MemItensNFCAPA_VL_FCP_ST: TFloatField;
    MemItensNFCAPA_VL_FCP_ST_RET: TFloatField;
    MemItensNFCAPA_IEST_PART: TStringField;
    MemItensNFCAPA_INFCPL: TStringField;
    MemItensNFCAPA_VL_BC_IPI: TFloatField;
    MemItensNFCAPA_VL_BC_PIS: TFloatField;
    MemItensNFCAPA_VL_BC_COFINS: TFloatField;
    MemNF_1: TFDMemTable;
    MemNF_1IND_OPER: TStringField;
    MemNF_1COD_PART: TStringField;
    MemNF_1COD_MOD: TStringField;
    MemNF_1SER: TStringField;
    MemNF_1NUM_DOC: TStringField;
    MemNF_1CHV_NFE: TStringField;
    MemNF_1DT_DOC: TDateTimeField;
    MemNF_1DT_E_ES: TDateTimeField;
    MemNF_1VL_DOC: TFloatField;
    MemNF_1VL_MERC: TFloatField;
    MemNF_1VL_DESC: TFloatField;
    MemNF_1VL_FRT: TFloatField;
    MemNF_1VL_SEG: TFloatField;
    MemNF_1VL_OUT_DA: TFloatField;
    MemNF_1VL_BC_ICMS: TFloatField;
    MemNF_1VL_ICMS: TFloatField;
    MemNF_1VL_BC_ICMS_ST: TFloatField;
    MemNF_1VL_ICMS_ST: TFloatField;
    MemNF_1VL_BC_IPI: TFloatField;
    MemNF_1VL_IPI: TFloatField;
    MemNF_1VL_BC_PIS: TFloatField;
    MemNF_1VL_PIS: TFloatField;
    MemNF_1VL_BC_COFINS: TFloatField;
    MemNF_1VL_COFINS: TFloatField;
    MemNF_1PARTICIPANTE: TStringField;
    MemNF_1COD_EMP: TStringField;
    MemNF_1EMPRESA: TStringField;
    MemNF_1MES: TIntegerField;
    MemNF_1ANO: TIntegerField;
    MemNF_1UF_PART: TStringField;
    MemNF_1UF_EMP: TStringField;
    MemNF_1CRT: TStringField;
    MemNF_1INDFINAL: TStringField;
    MemNF_1FINNFE: TStringField;
    MemNF_1VL_II: TFloatField;
    MemNF_1VL_ICMS_DESON: TFloatField;
    MemNF_1VL_FCP_UF_DEST: TFloatField;
    MemNF_1VL_ICMS_UF_DEST: TFloatField;
    MemNF_1VL_ICMS_UF_REMET: TFloatField;
    MemNF_1VL_FCP: TFloatField;
    MemNF_1VL_FCP_ST: TFloatField;
    MemNF_1VL_FCP_ST_RET: TFloatField;
    MemNF_1IEST_PART: TStringField;
    MemNF_1INFCPL: TStringField;
    MemNF_1SELECIONADO: TStringField;
    MemNF_1ID: TStringField;
    MemNF_1DT_IMPORTACAO_XML: TDateTimeField;
    MemNF_2: TFDMemTable;
    MemNF_2IND_OPER: TStringField;
    MemNF_2COD_PART: TStringField;
    MemNF_2COD_MOD: TStringField;
    MemNF_2SER: TStringField;
    MemNF_2NUM_DOC: TStringField;
    MemNF_2CHV_NFE: TStringField;
    MemNF_2DT_DOC: TDateTimeField;
    MemNF_2DT_E_ES: TDateTimeField;
    MemNF_2VL_DOC: TFloatField;
    MemNF_2VL_MERC: TFloatField;
    MemNF_2VL_DESC: TFloatField;
    MemNF_2VL_FRT: TFloatField;
    MemNF_2VL_SEG: TFloatField;
    MemNF_2VL_OUT_DA: TFloatField;
    MemNF_2VL_BC_ICMS: TFloatField;
    MemNF_2VL_ICMS: TFloatField;
    MemNF_2VL_BC_ICMS_ST: TFloatField;
    MemNF_2VL_ICMS_ST: TFloatField;
    MemNF_2VL_BC_IPI: TFloatField;
    MemNF_2VL_IPI: TFloatField;
    MemNF_2VL_BC_PIS: TFloatField;
    MemNF_2VL_PIS: TFloatField;
    MemNF_2VL_BC_COFINS: TFloatField;
    MemNF_2VL_COFINS: TFloatField;
    MemNF_2PARTICIPANTE: TStringField;
    MemNF_2COD_EMP: TStringField;
    MemNF_2EMPRESA: TStringField;
    MemNF_2MES: TIntegerField;
    MemNF_2ANO: TIntegerField;
    MemNF_2UF_PART: TStringField;
    MemNF_2UF_EMP: TStringField;
    MemNF_2CRT: TStringField;
    MemNF_2INDFINAL: TStringField;
    MemNF_2FINNFE: TStringField;
    MemNF_2VL_II: TFloatField;
    MemNF_2VL_ICMS_DESON: TFloatField;
    MemNF_2VL_FCP_UF_DEST: TFloatField;
    MemNF_2VL_ICMS_UF_DEST: TFloatField;
    MemNF_2VL_ICMS_UF_REMET: TFloatField;
    MemNF_2VL_FCP: TFloatField;
    MemNF_2VL_FCP_ST: TFloatField;
    MemNF_2VL_FCP_ST_RET: TFloatField;
    MemNF_2IEST_PART: TStringField;
    MemNF_2INFCPL: TStringField;
    MemNF_2SELECIONADO: TStringField;
    MemNF_2ID: TStringField;
    MemNF_2DT_IMPORTACAO_XML: TDateTimeField;
    MemItensNF_1: TFDMemTable;
    MemItensNF_2: TFDMemTable;
    MemItensNF_1COD_ITEM: TStringField;
    MemItensNF_1QTDE: TFloatField;
    MemItensNF_1UNID: TStringField;
    MemItensNF_1VL_ITEM: TFloatField;
    MemItensNF_1VL_DESC: TFloatField;
    MemItensNF_1CFOP: TStringField;
    MemItensNF_1VL_BC_ICMS: TFloatField;
    MemItensNF_1ALIQ_ICMS: TFloatField;
    MemItensNF_1VL_ICMS: TFloatField;
    MemItensNF_1VL_BC_ICMS_ST: TFloatField;
    MemItensNF_1ALIQ_ST: TFloatField;
    MemItensNF_1VL_ICMS_ST: TFloatField;
    MemItensNF_1DESCR_ITEM: TStringField;
    MemItensNF_1COD_EAN: TStringField;
    MemItensNF_1NCM: TStringField;
    MemItensNF_1CEST: TStringField;
    MemItensNF_1VL_SEGURO: TFloatField;
    MemItensNF_1VL_IPI: TFloatField;
    MemItensNF_1VL_PIS: TFloatField;
    MemItensNF_1VL_COFINS: TFloatField;
    MemItensNF_1VL_OUTRAS_DESP: TFloatField;
    MemItensNF_1VL_ICMSST_RET: TFloatField;
    MemItensNF_1VL_ICMSST_DEST: TFloatField;
    MemItensNF_1VL_ICMSST_DESON: TFloatField;
    MemItensNF_1VL_FRETE: TFloatField;
    MemItensNF_1VL_TOTAL_ITEM: TFloatField;
    MemItensNF_1CST: TStringField;
    MemItensNF_1CSOSN: TStringField;
    MemItensNF_1VL_BC_ST_RET: TFloatField;
    MemItensNF_1VL_FCP_ST: TFloatField;
    MemItensNF_1VL_BC_FCP_ST: TFloatField;
    MemItensNF_1VL_BC_FCP_ST_RET: TFloatField;
    MemItensNF_1VL_FCP_ST_RET: TFloatField;
    MemItensNF_1VL_BC_ST_DEST: TFloatField;
    MemItensNF_1VL_II: TFloatField;
    MemItensNF_1VL_ICMS_DESON: TFloatField;
    MemItensNF_1VL_FCP_UF_DEST: TFloatField;
    MemItensNF_1VL_FCP: TFloatField;
    MemItensNF_1VL_BC_UF_DEST: TFloatField;
    MemItensNF_1VL_BC_FCP_UF_DEST: TFloatField;
    MemItensNF_1VL_BC_II: TFloatField;
    MemItensNF_1VL_DESP_ADU_II: TFloatField;
    MemItensNF_1VL_IOF_II: TFloatField;
    MemItensNF_1P_RED_BC: TFloatField;
    MemItensNF_1P_RED_BC_ST: TFloatField;
    MemItensNF_1P_ICMS_EFET: TFloatField;
    MemItensNF_1P_MVA_ST: TFloatField;
    MemItensNF_1UF_ST: TStringField;
    MemItensNF_1VL_ICMS_OP: TFloatField;
    MemItensNF_1P_DIF: TFloatField;
    MemItensNF_1P_ICMS_DIF: TFloatField;
    MemItensNF_1VL_BC_FCP: TFloatField;
    MemItensNF_1P_FCP_ST: TFloatField;
    MemItensNF_1P_FCP_ST_RET: TFloatField;
    MemItensNF_1P_RED_BC_EFET: TFloatField;
    MemItensNF_1VL_BC_EFET: TFloatField;
    MemItensNF_1VL_ICMS_EFET: TFloatField;
    MemItensNF_1VL_ICMS_SUBSTITUTO: TFloatField;
    MemItensNF_1P_FCP_UF_DEST: TFloatField;
    MemItensNF_1P_ICMS_UF_DEST: TFloatField;
    MemItensNF_1P_ICMS_INTER: TFloatField;
    MemItensNF_1P_ICMS_INTER_PART: TFloatField;
    MemItensNF_1VL_ICMS_UF_DEST: TFloatField;
    MemItensNF_1VL_ICMS_UF_REMET: TFloatField;
    MemItensNF_1P_BC_OP: TFloatField;
    MemItensNF_1ORIG_CST: TStringField;
    MemItensNF_1ORIG_CSOSN: TStringField;
    MemItensNF_1NUM_ITEM: TIntegerField;
    MemItensNF_1SELECIONADO: TStringField;
    MemItensNF_1VL_CRED_ICMSSN: TFloatField;
    MemItensNF_1P_VL_CRED_ICMSSN: TFloatField;
    MemItensNF_1ID: TStringField;
    MemItensNF_1IDNF: TStringField;
    MemItensNF_1CAPA_IND_OPER: TStringField;
    MemItensNF_1CAPA_COD_PART: TStringField;
    MemItensNF_1CAPA_COD_MOD: TStringField;
    MemItensNF_1CAPA_SER: TStringField;
    MemItensNF_1NUM_DOC: TStringField;
    MemItensNF_1CAPA_CHV_NFE: TStringField;
    MemItensNF_1CAPA_DT_DOC: TDateTimeField;
    MemItensNF_1CAPA_DT_E_ES: TDateTimeField;
    MemItensNF_1CAPA_VL_DOC: TFloatField;
    MemItensNF_1CAPA_VL_MERC: TFloatField;
    MemItensNF_1CAPA_VL_DESC: TFloatField;
    MemItensNF_1CAPA_VL_FRT: TFloatField;
    MemItensNF_1CAPA_VL_SEG: TFloatField;
    MemItensNF_1CAPA_VL_OUT_DA: TFloatField;
    MemItensNF_1CAPA_VL_BC_ICMS: TFloatField;
    MemItensNF_1CAPA_VL_ICMS: TFloatField;
    MemItensNF_1CAPA_VL_BC_ICMS_ST: TFloatField;
    MemItensNF_1CAPA_VL_ICMS_ST: TFloatField;
    MemItensNF_1CAPA_VL_IPI: TFloatField;
    MemItensNF_1CAPA_VL_PIS: TFloatField;
    MemItensNF_1CAPA_VL_COFINS: TFloatField;
    MemItensNF_1CAPA_PARTICIPANTE: TStringField;
    MemItensNF_1CAPA_UF_PART: TStringField;
    MemItensNF_1CAPA_UF_EMP: TStringField;
    MemItensNF_1CAPA_CRT: TStringField;
    MemItensNF_1CAPA_INDFINAL: TStringField;
    MemItensNF_1CAPA_FINNFE: TStringField;
    MemItensNF_1CAPA_VL_II: TFloatField;
    MemItensNF_1CAPA_VL_ICMS_DESON: TFloatField;
    MemItensNF_1CAPA_VL_FCP_UF_DEST: TFloatField;
    MemItensNF_1CAPA_VL_ICMS_UF_DEST: TFloatField;
    MemItensNF_1CAPA_VL_ICMS_UF_REMET: TFloatField;
    MemItensNF_1CAPA_VL_FCP: TFloatField;
    MemItensNF_1CAPA_VL_FCP_ST: TFloatField;
    MemItensNF_1CAPA_VL_FCP_ST_RET: TFloatField;
    MemItensNF_1CAPA_IEST_PART: TStringField;
    MemItensNF_1CAPA_INFCPL: TStringField;
    MemItensNF_1CAPA_VL_BC_IPI: TFloatField;
    MemItensNF_1CAPA_VL_BC_PIS: TFloatField;
    MemItensNF_1CAPA_VL_BC_COFINS: TFloatField;
    MemItensNF_2COD_ITEM: TStringField;
    MemItensNF_2QTDE: TFloatField;
    MemItensNF_2UNID: TStringField;
    MemItensNF_2VL_ITEM: TFloatField;
    MemItensNF_2VL_DESC: TFloatField;
    MemItensNF_2CFOP: TStringField;
    MemItensNF_2VL_BC_ICMS: TFloatField;
    MemItensNF_2ALIQ_ICMS: TFloatField;
    MemItensNF_2VL_ICMS: TFloatField;
    MemItensNF_2VL_BC_ICMS_ST: TFloatField;
    MemItensNF_2ALIQ_ST: TFloatField;
    MemItensNF_2VL_ICMS_ST: TFloatField;
    MemItensNF_2DESCR_ITEM: TStringField;
    MemItensNF_2COD_EAN: TStringField;
    MemItensNF_2NCM: TStringField;
    MemItensNF_2CEST: TStringField;
    MemItensNF_2VL_SEGURO: TFloatField;
    MemItensNF_2VL_IPI: TFloatField;
    MemItensNF_2VL_PIS: TFloatField;
    MemItensNF_2VL_COFINS: TFloatField;
    MemItensNF_2VL_OUTRAS_DESP: TFloatField;
    MemItensNF_2VL_ICMSST_RET: TFloatField;
    MemItensNF_2VL_ICMSST_DEST: TFloatField;
    MemItensNF_2VL_ICMSST_DESON: TFloatField;
    MemItensNF_2VL_FRETE: TFloatField;
    MemItensNF_2VL_TOTAL_ITEM: TFloatField;
    MemItensNF_2CST: TStringField;
    MemItensNF_2CSOSN: TStringField;
    MemItensNF_2VL_BC_ST_RET: TFloatField;
    MemItensNF_2VL_FCP_ST: TFloatField;
    MemItensNF_2VL_BC_FCP_ST: TFloatField;
    MemItensNF_2VL_BC_FCP_ST_RET: TFloatField;
    MemItensNF_2VL_FCP_ST_RET: TFloatField;
    MemItensNF_2VL_BC_ST_DEST: TFloatField;
    MemItensNF_2VL_II: TFloatField;
    MemItensNF_2VL_ICMS_DESON: TFloatField;
    MemItensNF_2VL_FCP_UF_DEST: TFloatField;
    MemItensNF_2VL_FCP: TFloatField;
    MemItensNF_2VL_BC_UF_DEST: TFloatField;
    MemItensNF_2VL_BC_FCP_UF_DEST: TFloatField;
    MemItensNF_2VL_BC_II: TFloatField;
    MemItensNF_2VL_DESP_ADU_II: TFloatField;
    MemItensNF_2VL_IOF_II: TFloatField;
    MemItensNF_2P_RED_BC: TFloatField;
    MemItensNF_2P_RED_BC_ST: TFloatField;
    MemItensNF_2P_ICMS_EFET: TFloatField;
    MemItensNF_2P_MVA_ST: TFloatField;
    MemItensNF_2UF_ST: TStringField;
    MemItensNF_2VL_ICMS_OP: TFloatField;
    MemItensNF_2P_DIF: TFloatField;
    MemItensNF_2P_ICMS_DIF: TFloatField;
    MemItensNF_2VL_BC_FCP: TFloatField;
    MemItensNF_2P_FCP_ST: TFloatField;
    MemItensNF_2P_FCP_ST_RET: TFloatField;
    MemItensNF_2P_RED_BC_EFET: TFloatField;
    MemItensNF_2VL_BC_EFET: TFloatField;
    MemItensNF_2VL_ICMS_EFET: TFloatField;
    MemItensNF_2VL_ICMS_SUBSTITUTO: TFloatField;
    MemItensNF_2P_FCP_UF_DEST: TFloatField;
    MemItensNF_2P_ICMS_UF_DEST: TFloatField;
    MemItensNF_2P_ICMS_INTER: TFloatField;
    MemItensNF_2P_ICMS_INTER_PART: TFloatField;
    MemItensNF_2VL_ICMS_UF_DEST: TFloatField;
    MemItensNF_2VL_ICMS_UF_REMET: TFloatField;
    MemItensNF_2P_BC_OP: TFloatField;
    MemItensNF_2ORIG_CST: TStringField;
    MemItensNF_2ORIG_CSOSN: TStringField;
    MemItensNF_2NUM_ITEM: TIntegerField;
    MemItensNF_2SELECIONADO: TStringField;
    MemItensNF_2VL_CRED_ICMSSN: TFloatField;
    MemItensNF_2P_VL_CRED_ICMSSN: TFloatField;
    MemItensNF_2ID: TStringField;
    MemItensNF_2IDNF: TStringField;
    MemItensNF_2CAPA_IND_OPER: TStringField;
    MemItensNF_2CAPA_COD_PART: TStringField;
    MemItensNF_2CAPA_COD_MOD: TStringField;
    MemItensNF_2CAPA_SER: TStringField;
    MemItensNF_2NUM_DOC: TStringField;
    MemItensNF_2CAPA_CHV_NFE: TStringField;
    MemItensNF_2CAPA_DT_DOC: TDateTimeField;
    MemItensNF_2CAPA_DT_E_ES: TDateTimeField;
    MemItensNF_2CAPA_VL_DOC: TFloatField;
    MemItensNF_2CAPA_VL_MERC: TFloatField;
    MemItensNF_2CAPA_VL_DESC: TFloatField;
    MemItensNF_2CAPA_VL_FRT: TFloatField;
    MemItensNF_2CAPA_VL_SEG: TFloatField;
    MemItensNF_2CAPA_VL_OUT_DA: TFloatField;
    MemItensNF_2CAPA_VL_BC_ICMS: TFloatField;
    MemItensNF_2CAPA_VL_ICMS: TFloatField;
    MemItensNF_2CAPA_VL_BC_ICMS_ST: TFloatField;
    MemItensNF_2CAPA_VL_ICMS_ST: TFloatField;
    MemItensNF_2CAPA_VL_IPI: TFloatField;
    MemItensNF_2CAPA_VL_PIS: TFloatField;
    MemItensNF_2CAPA_VL_COFINS: TFloatField;
    MemItensNF_2CAPA_PARTICIPANTE: TStringField;
    MemItensNF_2CAPA_UF_PART: TStringField;
    MemItensNF_2CAPA_UF_EMP: TStringField;
    MemItensNF_2CAPA_CRT: TStringField;
    MemItensNF_2CAPA_INDFINAL: TStringField;
    MemItensNF_2CAPA_FINNFE: TStringField;
    MemItensNF_2CAPA_VL_II: TFloatField;
    MemItensNF_2CAPA_VL_ICMS_DESON: TFloatField;
    MemItensNF_2CAPA_VL_FCP_UF_DEST: TFloatField;
    MemItensNF_2CAPA_VL_ICMS_UF_DEST: TFloatField;
    MemItensNF_2CAPA_VL_ICMS_UF_REMET: TFloatField;
    MemItensNF_2CAPA_VL_FCP: TFloatField;
    MemItensNF_2CAPA_VL_FCP_ST: TFloatField;
    MemItensNF_2CAPA_VL_FCP_ST_RET: TFloatField;
    MemItensNF_2CAPA_IEST_PART: TStringField;
    MemItensNF_2CAPA_INFCPL: TStringField;
    MemItensNF_2CAPA_VL_BC_IPI: TFloatField;
    MemItensNF_2CAPA_VL_BC_PIS: TFloatField;
    MemItensNF_2CAPA_VL_BC_COFINS: TFloatField;
    QryArrayNF_2: TFDQuery;
    QryArrayItensNF_2: TFDQuery;
    QryXMLImportado_1: TFDQuery;
    QryXMLImportado_2: TFDQuery;
    QryEmpresaImportada_1: TFDQuery;
    QryEmpresaImportada_2: TFDQuery;
    QryCadEmpresa_1: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    QryCadEmpresa_1DT_CADASTRO: TDateTimeField;
    QryCadEmpresa_2: TFDQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
  private
    { Private declarations }
    FNomeArqLog              : String;
    FSequence                : Double;
    FLstPessoas              : TDictionary <String,String>;
    FDataHoraImportacao      : TDateTime;
    FNomeUnicoEmpresa        : String;
    function  EsteXMLJaFoiImportado(const pChave : String; pQry : TFDQuery):Boolean;
    function  GetNF(pID : Integer):Boolean;
    procedure SetNomeArqLog(const Value: String);
    procedure SetExisteXMLImportar(const Value: Boolean);
    procedure GetDadosEmpresa(pComponenteCTe : TCTe; Out voxNome,vCNPJ : String);
    procedure GetDadosImpostos(pComponenteCTe : TICMS; Out voCST : String;
                               voVL_BC,voVL_ICMS,voP_ICMS : Double);
    function  GetStrCRT(pTpcnCRT : TpcnCRT) : String;
    function  GetStrFinNFe(pTpcnFinalidadeNFe : TpcnFinalidadeNFe) : String;
    function  GetSQLNF(const pIDNF : Integer) : String;Overload;
    function  GetSQLNF(const pCodPart, pMes, pAno: String) : String;Overload;
    function  GetSQLCTe(const pCodPart, pMes, pAno: String): String;
    function  GetSQLItensNF(const pCodPart,pMes,pAno : String):String;Overload;
    function  GetSQLEmitCTe(const pCodPart,pMes,pAno : String):String;
    function  GetSQLRemCTe(const pCodPart,pMes,pAno : String):String;
    function  GetSQLExpedCTe(const pCodPart,pMes,pAno : String):String;
    function  GetSQLRecebCTe(const pCodPart,pMes,pAno : String):String;
    function  GetSQLDestCTe(const pCodPart,pMes,pAno : String):String;
    function  GetSQLImpCte(const pCodPart,pMes,pAno : String):String;
    function  GetSQLInfDocCte(const pCodPart,pMes,pAno : String):String;

    function  GetModeloXML(const pArquivoNome : String) : Integer;
    function  GetStrTomador(const pTomador : TpcteTomador):String;
    function  GetTpcnCSTIcmsToStr(const pCST : TpcnCSTIcms):String;
    function  GetSQLChaveNFe(const pChaveAcesso : String): String;
    function  GetSQLChaveCTe(const pChaveAcesso : String): String;
    function  GetSQLDeleteNFItens(const pCodPart,pMes,pAno : String):String;Overload;
    function  GetSQLDeleteNF(const pCodPart,pMes,pAno : String):String;Overload;
    function  GetSQLDeleteNFImportacaoXML(const pDataHoraImportacaoXML : String):String;
    function  GetSQLDeleteCTe(const pCodPart,pMes,pAno : String):String;Overload;
    function  GetSQLDeleteCTe(const pIDCte : String):String;Overload;
    function  GetSQLDeleteCTeImportacaoXML(const pDataHoraImportacaoXML : String):String;
    function  GetSQLDeleteDetalhesCTe(const pIDCte : String):String;Overload;
    function  GetSQLDeleteDetalhesCTe(const pCodPart, pMes,pAno: String): String;Overload;

    function  GetSQLDeleteLoteImportacaoXML(const pModeloXML : TFinalidadeTela; pDataImportacaoLoteXML : TDateTime) : String;
  public
    { Public declarations }
    NFe   : TACBrNFe;
    CTe   : TACbrCTe;
    function  GravarImportacao : Boolean;
    function  GetTodasNF(pCodPart, pMes, pAno: String): Boolean;
    function  GetTodosCTe(pCodPart, pMes, pAno: String): Boolean;
    function  ExcluirLoteXMLNFe(const pCodPartLote,pMesLote,pAnoLote : String):Boolean;
    function  ExcluirLoteXMLCTe(const pCodPartLote,pMesLote,pAnoLote : String):Boolean;
    function  ExcluirXMLNFe : Boolean;
    function  ExcluirXMLCTe : Boolean;
    function  ExcluiLoteImportacaoXML(const pModeloXML : TFinalidadeTela; pDataImportacaoLoteXML : TDateTime):Boolean;
    function  GetEmpresa(pQryEmpresa : TFDQuery ; ACodigo: String): Boolean;
    function  ExecImportacaoNF(const pContInicial , pContFinal , pLoteImp : Integer; var pDtsNF , pDtsNFItens : TFDMemTable ; pArrayNF , pArrayNFItens , pQryImportadoXML , pQryBscEmpresa , pQryCadEmpresa : TFDQuery ; pLabelInformativa : TLabel ; pProgressBar : TW7ProgressBar): Boolean;
    function  ExecImportacaoCTe : Boolean;
    procedure AddCadastroEmpresa(pQryCadEmpresa : TFDQuery; pCodEmpresa, pEmpresa: String; pDataCadastro : TDateTime);
    procedure DeleteNF;
    procedure DeleteCTe;
    procedure DeletaTodasNF(pCodPart , pMes, pAno : String);
    procedure DeletaTodosCte(pCodPart , pMes, pAno : String);
    procedure Cancelar;
    procedure CarregaXMLsParaAcbr(const pListaXML: TStringList; pDir: String; var pLabelInformativa : TLabel ; pProgressBar : TW7ProgressBar; pFinalidade : TFinalidadeTela);
    procedure CriarObjetos;
    procedure DestruirObjetos;
    procedure PreparaDataSets;
    procedure ZerarArrayDML;
    property  NomeArqLog : String read FNomeArqLog write SetNomeArqLog;
  end;

var
  DMImportacaoXML: TDMImportacaoXML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Uses
  uDMBase,uImportacaoXML,uMensagem,uBarraProgresso,uLog;

procedure TDMImportacaoXML.Cancelar;
var
  i : Integer;
begin
  for I := 0 to Pred(ComponentCount) do
  begin
    if Components[i] Is TFDMemTable then
    begin
      if TFDMemTable(Components[i]).Active then
      TFDMemTable(Components[i]).Close;
    end;
  end;
end;

procedure TDMImportacaoXML.CarregaXMLsParaAcbr(const pListaXML: TStringList; pDir: String; var pLabelInformativa : TLabel ; pProgressBar : TW7ProgressBar; pFinalidade : TFinalidadeTela);
var
  i               : Integer;
  vCaminhoArquivo : String;
begin

  NFe.NotasFiscais.Clear;
  CTe.Conhecimentos.Clear;

  pLabelInformativa.Caption := 'Procurando XML(s) no diretório ...';
  pProgressBar.Min              := 0;
  pProgressBar.Max              := pListaXML.Count;
  FrmImportacaoXML.Repaint;

  for I := 0 to Pred(pListaXML.Count) do
  begin
    vCaminhoArquivo := pDir + '\' + pListaXML[i];
    pLabelInformativa.Caption := 'Carregando XML ' + IntToStr(i + 1) + ' de ' + pListaXML.Count.ToString + ' itens da pasta.';
    FrmImportacaoXML.Repaint;

    if pFinalidade = ftImportarCTe then
      CTe.Conhecimentos.LoadFromFile(vCaminhoArquivo)
    else
      NFe.NotasFiscais.LoadFromFile(vCaminhoArquivo);

    pProgressBar.Position := pProgressBar.Position + 1;
    FrmImportacaoXML.Repaint;
  end;

end;

procedure TDMImportacaoXML.CriarObjetos;
begin
  NFe         := TACBrNFe.Create(nil);
  CTe         := TACBrCTe.Create(nil);
  FLstPessoas := TDictionary <String,String>.Create;
end;

procedure TDMImportacaoXML.DeletaTodasNF(pCodPart, pMes , pAno : String);
begin
  with dmPrincipal.DB do
  begin
    try
      StartTransaction;
      ExecSQL(GetSQLDeleteNFItens(pCodPart,pMes,pAno));
      ExecSQL(GetSQLDeleteNF(pCodPart,pMes,pAno));

      FNomeArqLog := dmPrincipal.GetNomeArqLog;

      TLog.Gravar(dmPrincipal.DirImportacaoXML,FNomeArqLog,'Lote de XML EMP: ' +
                  MemNFEMPRESA.AsString +
                  ' mes : ' + MemNFMES.AsString + '| ano : ' + MemNFANO.AsString +
                  ' deletado');
      Commit;
    except
      on e: exception do
      raise Exception.Create('Erro : ' + e.message + ' ao tentar excluir lote '+
                             ' XML da empresa');
    end;
  end;
end;

procedure TDMImportacaoXML.DeletaTodosCte(pCodPart, pMes, pAno: String);
begin
  with dmPrincipal.DB do
  begin
    try
      StartTransaction;
      ExecSQL(GetSQLDeleteDetalhesCTe(pCodPart,pMes,pAno));
      ExecSQL(GetSQLDeleteCTe(pCodPart,pMes,pAno));
      Commit;
    except
      on e: exception do
      raise Exception.Create('Erro : ' + e.message + ' ao tentar excluir lote '+
                             ' XML da empresa');
    end;
  end;
end;

procedure TDMImportacaoXML.DeleteCTe;
var
  vIDCte : String;
begin
  if not MemCTe.Active then
  exit;

  vIDCte := MemCTe.FieldByName('ID').AsString;

  try
    with dmPrincipal.BancoExec do
    begin
      ExecSQL(GetSQLDeleteCTe(vIDCte));
      ExecSQL(GetSQLDeleteDetalhesCTe(vIDCte));
      Commit;
    end;
  except
    on e: exception do
    begin
      dmPrincipal.BancoExec.Rollback;
      raise;
    end;
  end;

  try
    MemCTeEmit.First;
    MemCTeEmit.DisableControls;
    MemCTeEmit.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeEmit.Filtered := true;

    while not MemCTeEmit.Eof do
    begin
      MemCTeEmit.Delete;
      MemCTeEmit.First;
    end;

    MemCTeRem.First;
    MemCTeRem.DisableControls;
    MemCTeRem.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeRem.Filtered := true;

    while not MemCTeRem.Eof do
    begin
      MemCTeRem.Delete;
      MemCTeRem.First;
    end;

    MemCTeExt.First;
    MemCTeExt.DisableControls;
    MemCTeExt.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeExt.Filtered := true;

    while not MemCTeExt.Eof do
    begin
      MemCTeExt.Delete;
      MemCTeExt.First;
    end;

    MemCTeReceb.First;
    MemCTeReceb.DisableControls;
    MemCTeReceb.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeReceb.Filtered := true;

    while not MemCTeReceb.Eof do
    begin
      MemCTeReceb.Delete;
      MemCTeReceb.First;
    end;

    MemCTeDest.First;
    MemCTeDest.DisableControls;
    MemCTeDest.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeDest.Filtered := true;

    while not MemCTeDest.Eof do
    begin
      MemCTeDest.Delete;
      MemCTeDest.First;
    end;

    MemCTeImpostos.First;
    MemCTeImpostos.DisableControls;
    MemCTeImpostos.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeImpostos.Filtered := true;

    while not MemCTeImpostos.Eof do
    begin
      MemCTeImpostos.Delete;
      MemCTeImpostos.First;
    end;

    MemCTeDoc.First;
    MemCTeDoc.DisableControls;
    MemCTeDoc.Filter   := 'IDCTE = ' + vIdCTE.QuotedString;
    MemCTeDoc.Filtered := true;

    while not MemCTeDoc.Eof do
    begin
      MemCTeDoc.Delete;
      MemCTeDoc.First;
    end;

  finally
    MemCTeEmit.Filtered := false;
    MemCTeEmit.EnableControls;

    MemCTeRem.Filtered := false;
    MemCTeRem.EnableControls;

    MemCTeExt.Filtered := false;
    MemCTeExt.EnableControls;

    MemCTeReceb.Filtered := false;
    MemCTeReceb.EnableControls;

    MemCTeDest.Filtered := false;
    MemCTeDest.EnableControls;

    MemCTeImpostos.Filtered := false;
    MemCTeImpostos.EnableControls;

    MemCTeDoc.Filtered := false;
    MemCTeDoc.EnableControls;

    MemCTe.Delete;
  end;
end;

procedure TDMImportacaoXML.DeleteNF;
var
  vIdNF : String;

  function GetSQLDeleteNFItens(const pIdNF : String) : String;
  begin
    result := 'DELETE FROM "NF_ITENS" WHERE "IDNF" = ' + pIdNF.QuotedString;
  end;
  function GetSQLDeleteNF(const pId : String) : String;
  begin
    result := 'DELETE FROM "NF" WHERE "ID" = ' + pId.QuotedString;
  end;

begin
  if not MemNF.Active then
  exit;

  vIdNF := MemNF.FieldByName('ID').AsString;

  try
    with dmPrincipal.BancoExec do
    begin
      ExecSQL(GetSQLDeleteNFItens(vIdNF));
      ExecSQL(GetSQLDeleteNF(vIdNF));
      Commit;
    end;
  except
    on e: exception do
    begin
      dmPrincipal.BancoExec.Rollback;
      raise;
    end;
  end;

  try
    MemItensNF.First;
    MemItensNF.DisableControls;
    MemItensNF.Filter   := 'IDNF = ' + vIdNF;
    MemItensNF.Filtered := true;

    while not MemItensNF.Eof do
    begin
      MemItensNF.Delete;
      MemItensNF.First;
    end;

  finally
    MemItensNF.Filtered := false;
    MemItensNF.EnableControls;
    MemNF.Delete;
  end;
end;

procedure TDMImportacaoXML.DestruirObjetos;
begin
  FreeAndNil(NFe);
  FreeAndNil(CTe);
  FreeAndNil(FLstPessoas);
end;

function TDMImportacaoXML.EsteXMLJaFoiImportado(const pChave : String; pQry : TFDQuery):Boolean;
begin
  pQry.Close;
  pQry.Params[0].AsString := pChave;
  pQry.Open;
  result := not (pQry.IsEmpty);
end;

function TDMImportacaoXML.ExecImportacaoCTe : Boolean;
const
  cModeloCTe  = 57;
var
  i                 : Integer;
  j                 : Integer;

  vIdxArrayCte      : Integer;
  vIdxArrayCteEmit  : Integer;
  vIdxArrayCteRem   : Integer;
  vIdxArrayCteExt   : Integer;
  vIdxArrayCteReceb : Integer;
  vIdxArrayCteDest  : Integer;
  vIdxArrayCteImp   : Integer;
  vIdxArrayCteDoc   : Integer;

  vIdCTe            : String;
  vxNome            : String;
  vXCNPJ            : String;
  vCST              : String;
  vNumDoc           : String;
  vChaveAcesso      : String;
  vRet              : String;
  vVL_BC            : Double;
  vVL_ICMS          : Double;
  vP_ICMS           : Double;

begin
  result := false;

  try
    AtivaPerformanceMemTable(MemCTe,1000);
    AtivaPerformanceMemTable(MemCTeEmit,1000);
    AtivaPerformanceMemTable(MemCTeRem,1000);
    AtivaPerformanceMemTable(MemCTeExt,1000);
    AtivaPerformanceMemTable(MemCTeReceb,1000);
    AtivaPerformanceMemTable(MemCTeDest,1000);
    AtivaPerformanceMemTable(MemCTeImpostos,1000);
    AtivaPerformanceMemTable(MemCTeDoc,1000);

    MemCTe.BeginBatch;
    MemCTeEmit.BeginBatch;
    MemCTeRem.BeginBatch;
    MemCTeExt.BeginBatch;
    MemCTeReceb.BeginBatch;
    MemCTeDest.BeginBatch;
    MemCTeImpostos.BeginBatch;
    MemCTeDoc.BeginBatch;

    vIdCTe             := '';
    vIdxArrayCte       := 0;
    vIdxArrayCteEmit   := 0;
    vIdxArrayCteRem    := 0;
    vIdxArrayCteExt    := 0;
    vIdxArrayCteReceb  := 0;
    vIdxArrayCteDest   := 0;
    vIdxArrayCteImp    := 0;
    vIdxArrayCteDoc    := 0;

    with CTe.Conhecimentos do
    begin
      for i := 0 to Pred(Count) do
      begin

        with Items[i].CTe do
        begin
          vChaveAcesso := Copy(infCTe.ID,4,44);

          if EsteXMLJaFoiImportado(vChaveAcesso,DMImportacaoXML.QryXMLImportado_1) then
          continue;
        end;

        FrmImportacaoXML.lblInfoImportacaoXML.Caption := 'Importando XML : ' +
                                                         IntToStr(i + 1) +
                                                         ' de ' + Count.ToString;

        FrmImportacaoXML.Repaint;

        if FrmImportacaoXML.Cancelado then
        begin
          Cancelar;
          Abort;
        end;

        GetDadosEmpresa(Items[i].Cte,vxNome,vXCNPJ);

        with Items[i].Cte do
        begin
          MemCTe.Insert;
          vIdCTe                      := IncKhronos(FSequence);
          MemCTeID.AsString           := vIdCTe;
          MemCTeDT_EMIS.AsDateTime    := ide.dhEmi;
          MemCTeCFOP.AsString         := ide.CFOP.ToString;
          MemCTeCOD_PART.AsString     := emit.CNPJ;
          MemCTePARTICIPANTE.AsString := emit.xNome;
          MemCTeCOD_MOD.AsString      := '57';
          MemCTeSER.AsString          := ide.serie.ToString;
          vNumDoc                     := ide.nCT.ToString;
          MemCTeNUM_DOC.AsString      := vNumDoc;
          MemCTeCHV_CTE.AsString      := vChaveAcesso;
          MemCTeOBS.AsString          := compl.xObs;

          {Destinatario = cliente contador = empresa}
          if not FLstPessoas.ContainsKey(vXCNPJ) then
          begin
            {Verifica se empresa esta cadastrada}
            if not dmPrincipal.GetEmpresa(vXCNPJ) then
            begin
              dmPrincipal.AddCadastroEmpresa(vXCNPJ,vXNome,FDataHoraImportacao);
              FNomeUnicoEmpresa := vXNome;
            end
            else
            begin
              FNomeUnicoEmpresa := dmPrincipal.QryEmpresaEMPRESA.AsString;
            end;

            MemCTeCOD_EMP.AsString  := vXCNPJ;
            MemCTeEMPRESA.AsString  := FNomeUnicoEmpresa;
            FLstPessoas.Add(MemCTeCOD_EMP.AsString,MemCTeEMPRESA.AsString);
          end
          else
          begin
            FLstPessoas.TryGetValue(vXCNPJ,vRet);
            MemCTeCOD_EMP.AsString  := vXCNPJ;
            MemCTeEMPRESA.AsString  := vRet;
          end;

          MemCTeMES.AsInteger         := FormatDateTime('mm',ide.dhEmi).ToInteger;
          MemCTeANO.AsInteger         := FormatDateTime('yyyy',ide.dhEmi).ToInteger;
          MemCTeTP_TOMADOR.AsString   := GetStrTomador(ide.toma03.Toma);
          MemCTeVL_PREST.AsFloat      := vPrest.vTPrest;
          MemCTeCOD_MUN_INI.AsInteger := ide.cMunIni;
          MemCTeDESC_MUN_INI.AsString := ide.xMunIni;
          MemCTeUF_INI.AsString       := ide.UFIni;
          MemCTeCOD_MUN_FIM.AsInteger := ide.cMunFim;
          MemCTeDESC_MUN_FIM.AsString := ide.xMunFim;
          MemCTeUF_FIM.AsString       := ide.UFFim;
          MemCTeDT_IMPORTACAO_XML.AsDateTime := FDataHoraImportacao;

          SetDataTypeStr([0,2,3,4,5,6,7,8,9,10,11,14,17,18,21],QryArrayCTe);
          SetSizeParams([0,2,3,4,5,6,7,8,9,10,11,14,17,18,21],
                        [MemCTeID.Size,
                        MemCTeCFOP.Size,
                        MemCTeCOD_PART.Size,
                        MemCTePARTICIPANTE.Size,
                        MemCTeCOD_MOD.Size,
                        MemCTeSER.Size,
                        MemCTeNUM_DOC.Size,
                        MemCTeCHV_CTE.Size,
                        MemCTeOBS.Size,
                        MemCTeCOD_EMP.Size,
                        MemCTeEMPRESA.Size,
                        MemCTeTP_TOMADOR.Size,
                        MemCTeDESC_MUN_INI.Size,
                        MemCTeUF_INI.Size,
                        MemCTeDESC_MUN_FIM.Size,
                        MemCTeUF_FIM.Size
                        ],QryArrayCTe
                       );

          QryArrayCTe.Params.ArraySize := vIdxArrayCte + 1;

          with QryArrayCTe do
          begin
            Params[0].AsStrings[vIdxArrayCte]    := MemCTeID.AsString;
            Params[1].AsDateTimes[vIdxArrayCte]  := MemCTeDT_EMIS.AsDateTime;
            Params[2].AsStrings[vIdxArrayCte]    := MemCTeCFOP.AsString;
            Params[3].AsStrings[vIdxArrayCte]    := MemCTeCOD_PART.AsString;
            Params[4].AsStrings[vIdxArrayCte]    := MemCTePARTICIPANTE.AsString;
            Params[5].AsStrings[vIdxArrayCte]    := MemCTeCOD_MOD.AsString;
            Params[6].AsStrings[vIdxArrayCte]    := MemCTeSER.AsString;
            Params[7].AsStrings[vIdxArrayCte]    := MemCTeNUM_DOC.AsString;
            Params[8].AsStrings[vIdxArrayCte]    := MemCTeCHV_CTE.AsString;
            Params[9].AsStrings[vIdxArrayCte]    := MemCTeOBS.AsString;
            Params[10].AsStrings[vIdxArrayCte]   := MemCTeCOD_EMP.AsString;
            Params[11].AsStrings[vIdxArrayCte]   := MemCTeEMPRESA.AsString;
            Params[12].AsIntegers[vIdxArrayCte]  := MemCTeMES.AsInteger;
            Params[13].AsIntegers[vIdxArrayCte]  := MemCTeANO.AsInteger;
            Params[14].AsStrings[vIdxArrayCte]   := MemCTeTP_TOMADOR.AsString;
            Params[15].AsFloats[vIdxArrayCte]    := MemCTeVL_PREST.AsFloat;
            Params[16].AsIntegers[vIdxArrayCte]  := MemCTeCOD_MUN_INI.AsInteger;
            Params[17].AsStrings[vIdxArrayCte]   := MemCTeDESC_MUN_INI.AsString;
            Params[18].AsStrings[vIdxArrayCte]   := MemCTeUF_INI.AsString;
            Params[19].AsIntegers[vIdxArrayCte]  := MemCTeCOD_MUN_FIM.AsInteger;
            Params[20].AsStrings[vIdxArrayCte]   := MemCTeDESC_MUN_FIM.AsString;
            Params[21].AsStrings[vIdxArrayCte]   := MemCTeUF_FIM.AsString;
            Params[22].AsDateTimes[vIdxArrayCte] := MemCTeDT_IMPORTACAO_XML.AsDateTime;
          end;

          MemCTe.Post;
          Inc(vIdxArrayCte);

          {Emitente}
          MemCTeEmit.Insert;
          MemCTeEmitID.AsString           := IncKhronos(FSequence);
          MemCTeEmitIDCTE.AsString        := vIdCTe;
          MemCTeEmitCNPJ.AsString         := emit.CNPJ;
          MemCTeEmitENDERECO.AsString     := emit.enderEmit.xLgr;
          MemCTeEmitCODMUN.AsInteger      := emit.enderEmit.cMun;
          MemCTeEmitMUN.AsString          := emit.enderEmit.xMun;
          MemCTeEmitUF.AsString           := emit.enderEmit.UF;
          MemCTeEmitNUM_DOC.AsString      := vNumDoc;
          MemCTeEmitNOME.AsString         := emit.xNome;

          SetDataTypeStr([0,1,2,3,5,6,7],QryArrayCTeEmit);
          SetSizeParams([0,1,2,3,5,6,7],
                        [MemCTeEmitID.Size,
                        MemCTeEmitIDCTE.Size,
                        MemCTeEmitCNPJ.Size,
                        MemCTeEmitENDERECO.Size,
                        MemCTeEmitMUN.Size,
                        MemCTeEmitUF.Size,
                        MemCTeEmitNOME.Size
                        ],QryArrayCTeEmit
                       );

          QryArrayCTeEmit.Params.ArraySize := vIdxArrayCteEmit + 1;

          with QryArrayCTeEmit do
          begin
            Params[0].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitID.AsString;
            Params[1].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitIDCTE.AsString;
            Params[2].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitCNPJ.AsString;
            Params[3].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitENDERECO.AsString;
            Params[4].AsIntegers[vIdxArrayCteEmit]   := MemCTeEmitCODMUN.AsInteger;
            Params[5].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitMUN.AsString;
            Params[6].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitUF.AsString;
            Params[7].AsStrings[vIdxArrayCteEmit]    := MemCTeEmitNOME.AsString;
          end;

          MemCTeEmit.Post;
          Inc(vIdxArrayCteEmit);

          if rem.CNPJCPF <> '' then
          begin
            {Remetente}
            MemCTeRem.Insert;
            MemCTeRemID.AsString           := IncKhronos(FSequence);
            MemCTeRemIDCTE.AsString        := vIdCTe;
            MemCTeRemCNPJ.AsString         := rem.CNPJCPF;
            MemCTeRemENDERECO.AsString     := rem.enderReme.xLgr;
            MemCTeRemCODMUN.AsInteger      := rem.enderReme.cMun;
            MemCTeRemMUN.AsString          := rem.enderReme.xMun;
            MemCTeRemUF.AsString           := rem.enderReme.UF;
            MemCTeRemNUM_DOC.AsString      := vNumDoc;
            MemCTeRemNOME.AsString         := rem.xNome;

            SetDataTypeStr([0,1,2,3,5,6,7],QryArrayCTeRem);
            SetSizeParams([0,1,2,3,5,6,7],
                          [MemCTeRemID.Size,
                          MemCTeRemIDCTE.Size,
                          MemCTeRemCNPJ.Size,
                          MemCTeRemENDERECO.Size,
                          MemCTeRemMUN.Size,
                          MemCTeRemUF.Size,
                          MemCTeRemNOME.Size
                          ],QryArrayCTeRem
                         );

            QryArrayCTeRem.Params.ArraySize := vIdxArrayCteRem + 1;

            with QryArrayCTeRem do
            begin
              Params[0].AsStrings[vIdxArrayCteRem]    := MemCTeRemID.AsString;
              Params[1].AsStrings[vIdxArrayCteRem]    := MemCTeRemIDCTE.AsString;
              Params[2].AsStrings[vIdxArrayCteRem]    := MemCTeRemCNPJ.AsString;
              Params[3].AsStrings[vIdxArrayCteRem]    := MemCTeRemENDERECO.AsString;
              Params[4].AsIntegers[vIdxArrayCteRem]   := MemCTeRemCODMUN.AsInteger;
              Params[5].AsStrings[vIdxArrayCteRem]    := MemCTeRemMUN.AsString;
              Params[6].AsStrings[vIdxArrayCteRem]    := MemCTeRemUF.AsString;
              Params[7].AsStrings[vIdxArrayCteRem]    := MemCTeRemNOME.AsString;
            end;
            MemCTeRem.Post;
            Inc(vIdxArrayCteRem);
          end;

          if exped.CNPJCPF <> '' then
          begin
            {EXPEDIDOR}
            MemCTeExt.Insert;
            MemCTeExtID.AsString           := IncKhronos(FSequence);
            MemCTeExtIDCTE.AsString        := vidCTe;
            MemCTeExtCNPJ.AsString         := exped.CNPJCPF;
            MemCTeExtENDERECO.AsString     := exped.enderExped.xLgr;
            MemCTeExtCODMUN.AsInteger      := exped.enderExped.cMun;
            MemCTeExtMUN.AsString          := exped.enderExped.xMun;
            MemCTeExtUF.AsString           := exped.enderExped.UF;
            MemCTeExtNUM_DOC.AsString      := vNumDoc;
            MemCTeExtNOME.AsString         := exped.xNome;

            SetDataTypeStr([0,1,2,3,5,6,7],QryArrayCTeExt);
            SetSizeParams([0,1,2,3,5,6,7],
                          [MemCTeExtID.Size,
                          MemCTeExtIDCTE.Size,
                          MemCTeExtCNPJ.Size,
                          MemCTeExtENDERECO.Size,
                          MemCTeExtMUN.Size,
                          MemCTeExtUF.Size,
                          MemCTeExtNOME.Size
                          ],QryArrayCTeExt
                         );

            QryArrayCTeExt.Params.ArraySize := vIdxArrayCteExt + 1;

            with QryArrayCTeExt do
            begin
              Params[0].AsStrings[vIdxArrayCteExt]    := MemCTeExtID.AsString;
              Params[1].AsStrings[vIdxArrayCteExt]    := MemCTeExtIDCTE.AsString;
              Params[2].AsStrings[vIdxArrayCteExt]    := MemCTeExtCNPJ.AsString;
              Params[3].AsStrings[vIdxArrayCteExt]    := MemCTeExtENDERECO.AsString;
              Params[4].AsIntegers[vIdxArrayCteExt]   := MemCTeExtCODMUN.AsInteger;
              Params[5].AsStrings[vIdxArrayCteExt]    := MemCTeExtMUN.AsString;
              Params[6].AsStrings[vIdxArrayCteExt]    := MemCTeExtUF.AsString;
              Params[7].AsStrings[vIdxArrayCteExt]    := MemCTeExtNOME.AsString;
            end;

            MemCTeExt.Post;
            Inc(vIdxArrayCteExt);
          end;

          if receb.CNPJCPF <> '' then
          begin
            {RECEBEDOR}
            MemCTeReceb.Insert;
            MemCTeRecebID.AsString           := IncKhronos(FSequence);
            MemCTeRecebIDCTE.AsString        := vIdCte;
            MemCTeRecebCNPJ.AsString         := receb.CNPJCPF;
            MemCTeRecebENDERECO.AsString     := receb.enderReceb.xLgr;
            MemCTeRecebCODMUN.AsInteger      := receb.enderReceb.cMun;
            MemCTeRecebMUN.AsString          := receb.enderReceb.xMun;
            MemCTeRecebUF.AsString           := receb.enderReceb.UF;
            MemCTeRecebNUM_DOC.AsString      := vNumDoc;
            MemCTeRecebNOME.AsString         := receb.xNome;

            SetDataTypeStr([0,1,2,3,5,6,7],QryArrayCTeReceb);
            SetSizeParams([0,1,2,3,5,6,7],
                          [MemCTeRecebID.Size,
                          MemCTeRecebIDCTE.Size,
                          MemCTeRecebCNPJ.Size,
                          MemCTeRecebENDERECO.Size,
                          MemCTeRecebMUN.Size,
                          MemCTeRecebUF.Size,
                          MemCTeRecebNOME.Size
                          ],QryArrayCTeReceb
                         );

            QryArrayCTeReceb.Params.ArraySize := vIdxArrayCteReceb + 1;

            with QryArrayCTeReceb do
            begin
              Params[0].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebID.AsString;
              Params[1].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebIDCTE.AsString;
              Params[2].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebCNPJ.AsString;
              Params[3].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebENDERECO.AsString;
              Params[4].AsIntegers[vIdxArrayCteReceb]   := MemCTeRecebCODMUN.AsInteger;
              Params[5].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebMUN.AsString;
              Params[6].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebUF.AsString;
              Params[7].AsStrings[vIdxArrayCteReceb]    := MemCTeRecebNOME.AsString;
            end;
            MemCTeReceb.Post;
            Inc(vIdxArrayCteReceb);
          end;

          if dest.CNPJCPF <> '' then
          begin
            {DESTINATARIO}
            MemCTeDest.Insert;
            MemCTeDestID.AsString           := IncKhronos(FSequence);
            MemCTeDestIDCTE.AsString        := vIdCte;
            MemCTeDestCNPJ.AsString         := dest.CNPJCPF;
            MemCTeDestENDERECO.AsString     := dest.enderDest.xLgr;
            MemCTeDestCODMUN.AsInteger      := dest.enderDest.cMun;
            MemCTeDestMUN.AsString          := dest.enderDest.xMun;
            MemCTeDestUF.AsString           := dest.enderDest.UF;
            MemCTeDestNUM_DOC.AsString      := vNumDoc;
            MemCTeDestNOME.AsString         := dest.xNome;

            SetDataTypeStr([0,1,2,3,5,6,7],QryArrayCTeDest);
            SetSizeParams([0,1,2,3,5,6,7],
                          [MemCTeDestID.Size,
                          MemCTeDestIDCTE.Size,
                          MemCTeDestCNPJ.Size,
                          MemCTeDestENDERECO.Size,
                          MemCTeDestMUN.Size,
                          MemCTeDestUF.Size,
                          MemCTeDestNOME.Size
                          ],QryArrayCTeDest
                         );

            QryArrayCTeDest.Params.ArraySize := vIdxArrayCteDest + 1;

            with QryArrayCTeDest do
            begin
              Params[0].AsStrings[vIdxArrayCteDest]    := MemCTeDestID.AsString;
              Params[1].AsStrings[vIdxArrayCteDest]    := MemCTeDestIDCTE.AsString;
              Params[2].AsStrings[vIdxArrayCteDest]    := MemCTeDestCNPJ.AsString;
              Params[3].AsStrings[vIdxArrayCteDest]    := MemCTeDestENDERECO.AsString;
              Params[4].AsIntegers[vIdxArrayCteDest]   := MemCTeDestCODMUN.AsInteger;
              Params[5].AsStrings[vIdxArrayCteDest]    := MemCTeDestMUN.AsString;
              Params[6].AsStrings[vIdxArrayCteDest]    := MemCTeDestUF.AsString;
              Params[7].AsStrings[vIdxArrayCteDest]    := MemCTeDestNOME.AsString;
            end;
            MemCTeDest.Post;
            Inc(vIdxArrayCteDest);
          end;

          {IMPOSTOS}
          GetDadosImpostos(imp.ICMS,vCST,vVL_BC,vVL_ICMS,vP_ICMS);
          MemCTeImpostos.Insert;
          MemCTeImpostosID.AsString           := IncKhronos(FSequence);
          MemCTeImpostosIDCTE.AsString        := vIdCte;
          MemCTeImpostosCST.AsString          := vCST;
          MemCTeImpostosVL_BC.AsFloat         := vVL_BC;
          MemCTeImpostosVL_ICMS.AsFloat       := vVL_ICMS;
          MemCTeImpostosP_ICMS.AsFloat        := vP_ICMS;
          MemCTeImpostosNUM_DOC.AsString      := vNumDoc;

          SetDataTypeStr([0,1,2],QryArrayCTeImpostos);
          SetSizeParams([0,1,2],
                        [MemCTeRecebID.Size,
                        MemCTeRecebIDCTE.Size,
                        MemCTeImpostosCST.Size
                        ],QryArrayCTeImpostos
                       );

          QryArrayCTeImpostos.Params.ArraySize := vIdxArrayCteImp + 1;

          with QryArrayCTeImpostos do
          begin
            Params[0].AsStrings[vIdxArrayCteImp]    := MemCTeImpostosID.AsString;
            Params[1].AsStrings[vIdxArrayCteImp]    := MemCTeImpostosIDCTE.AsString;
            Params[2].AsStrings[vIdxArrayCteImp]    := MemCTeImpostosCST.AsString;
            Params[3].AsFloats[vIdxArrayCteImp]     := MemCTeImpostosVL_BC.AsFloat;
            Params[4].AsFloats[vIdxArrayCteImp]     := MemCTeImpostosVL_ICMS.AsFloat;
            Params[5].AsFloats[vIdxArrayCteImp]     := MemCTeImpostosP_ICMS.AsFloat;
          end;

          MemCTeImpostos.Post;

          {Documentos}
          if infCTeNorm.infDoc.infNFe.Count > 0 then
          begin
            for J := 0 to Pred(infCTeNorm.infDoc.infNFe.Count) do
            begin
              QryArrayCTeDoc.Params.ArraySize := vIdxArrayCteDoc + 1;

              MemCTeDoc.Insert;
              MemCTeDocID.AsString           := IncKhronos(FSequence);
              MemCTeDocIDCTE.AsString        := vIdCte;
              MemCTeDocCHV_NFE.AsString      := infCTeNorm.infDoc.infNFe.Items[j].chave;
              MemCTeDocSELECIONADO.AsString  := 'N';
              MemCTeDocNUM_DOC.AsString      := vNumDoc;

              SetDataTypeStr([0,1,2],QryArrayCTeDoc);
              SetSizeParams([0,1,2],[MemCTeDocID.Size,MemCTeDocIDCTE.Size,MemCTeDocCHV_NFE.Size],QryArrayCTeDoc);

              with QryArrayCTeDoc do
              begin
                Params[0].AsStrings[vIdxArrayCteDoc]    := MemCTeDocID.AsString;
                Params[1].AsStrings[vIdxArrayCteDoc]    := MemCTeDocIDCTE.AsString;
                Params[2].AsStrings[vIdxArrayCteDoc]    := MemCTeDocCHV_NFE.AsString;
              end;

              MemCTeDoc.Post;
              Inc(vIdxArrayCteDoc);
            end;
          end;

        end;

        FrmImportacaoXML.ProgressBar.Position := FrmImportacaoXML.ProgressBar.Position + 1;
        FrmImportacaoXML.Repaint;

      end;

    end;

    result := (vIdxArrayCte > 0);

  finally
    MemCTe.EndBatch;
    MemCTeEmit.EndBatch;
    MemCTeRem.EndBatch;
    MemCTeExt.EndBatch;
    MemCTeReceb.EndBatch;
    MemCTeDest.EndBatch;
    MemCTeImpostos.EndBatch;
    MemCTeDoc.EndBatch;
  end;
end;

function TDMImportacaoXML.ExecImportacaoNF(const pContInicial , pContFinal , pLoteImp : Integer; var pDtsNF , pDtsNFItens : TFDMemTable ; pArrayNF , pArrayNFItens , pQryImportadoXML , pQryBscEmpresa , pQryCadEmpresa : TFDQuery ; pLabelInformativa : TLabel ; pProgressBar : TW7ProgressBar): Boolean;
const
  cModeloNFe = 55;
var
  i                 : Integer;
  j                 : Integer;
  vRet              : String;
  vChaveAcesso      : String;
  vCodPart          : String;
  vParceiro         : String;
  vIDNfe            : String;

  vIdxArrayNfe      : Integer;
  vIdxArrayItensNF  : Integer;
begin
  result := false;
  try
    vIdxArrayNfe                   := 0;
    vIdxArrayItensNF               := 0;

    AtivaPerformanceMemTable(pDtsNF,pContFinal);
    pDtsNF.BeginBatch;


    with NFe.NotasFiscais do
    begin

      for i := 0 to Pred(Count) do
      begin

        vChaveAcesso := Copy(Items[i].NFe.infNFe.ID,4,44);

        if not EsteXMLJaFoiImportado(vChaveAcesso,pQryImportadoXML) then
        begin

          pLabelInformativa.Caption := 'Importando XML : ' + IntToStr(i + 1) + ' de ' + Count.ToString;

          FrmImportacaoXML.Repaint;

          if FrmImportacaoXML.Cancelado then
          begin
            Cancelar;
            Abort;
          end;


          with Items[i].NFe do
          begin
            pDtsNF.Insert;
            vIDNfe                     := IncKhronos(FSequence);
            pDtsNF.FieldByName('ID').AsString           := vIDNfe;
            pDtsNF.FieldByName('DT_DOC').AsDateTime     := Ide.dEmi;

            if Ide.dSaiEnt > 0 then
              pDtsNF.FieldByName('DT_E_ES').AsDateTime  := Ide.dSaiEnt;

            pDtsNF.FieldByName('COD_MOD').AsString      := Ide.modelo.ToString;
            pDtsNF.FieldByName('SER').AsString          := Ide.serie.ToString;
            pDtsNF.FieldByName('NUM_DOC').AsString      := Ide.nNF.ToString;
            pDtsNF.FieldByName('IND_OPER').AsString     := iif(Ide.tpNF = tnEntrada,'E','S');
            pDtsNF.FieldByName('CHV_NFE').AsString      := Copy(infNFe.ID,4,length(infNFe.ID));
            pDtsNF.FieldByName('VL_DOC').AsFloat        := Total.ICMSTot.vNF;
            pDtsNF.FieldByName('VL_MERC').AsFloat       := Total.ICMSTot.vProd;
            pDtsNF.FieldByName('VL_DESC').AsFloat       := Total.ICMSTot.vDesc;
            pDtsNF.FieldByName('VL_FRT').AsFloat        := Total.ICMSTot.vFrete;
            pDtsNF.FieldByName('VL_SEG').AsFloat        := Total.ICMSTot.vSeg;
            pDtsNF.FieldByName('VL_OUT_DA').AsFloat     := Total.ICMSTot.vOutro;
            pDtsNF.FieldByName('VL_BC_ICMS').AsFloat    := Total.ICMSTot.vBC;
            pDtsNF.FieldByName('VL_ICMS').AsFloat       := Total.ICMSTot.vICMS;
            pDtsNF.FieldByName('VL_BC_ICMS_ST').AsFloat := Total.ICMSTot.vBCST;
            pDtsNF.FieldByName('VL_ICMS_ST').AsFloat    := Total.ICMSTot.vST;
            pDtsNF.FieldByName('VL_IPI').AsFloat        := Total.ICMSTot.vIPI;
            pDtsNF.FieldByName('VL_PIS').AsFloat        := Total.ICMSTot.vPIS;
            pDtsNF.FieldByName('VL_COFINS').AsFloat     := Total.ICMSTot.vCOFINS;
            pDtsNF.FieldByName('UF_PART').AsString      := Emit.EnderEmit.UF;
            pDtsNF.FieldByName('UF_EMP').AsString       := Dest.EnderDest.UF;
            pDtsNF.FieldByName('CRT').AsString          := GetStrCRT(Emit.CRT);
            pDtsNF.FieldByName('INDFINAL').AsString     := iif(Ide.indFinal = cfNao,'0 - Normal','1 - Consumidor final');
            pDtsNF.FieldByName('FINNFE').AsString       := GetStrFinNFe(Ide.finNFe);
            pDtsNF.FieldByName('VL_II').AsFloat         := Total.ICMSTot.vII;
            pDtsNF.FieldByName('VL_ICMS_DESON').AsFloat := Total.ICMSTot.vICMSDeson;
            pDtsNF.FieldByName('VL_FCP_UF_DEST').AsFloat   := Total.ICMSTot.vFCPUFDest;
            pDtsNF.FieldByName('VL_ICMS_UF_DEST').AsFloat  := Total.ICMSTot.vICMSUFDest;
            pDtsNF.FieldByName('VL_ICMS_UF_REMET').AsFloat := Total.ICMSTot.vICMSUFRemet;
            pDtsNF.FieldByName('VL_FCP').AsFloat           := Total.ICMSTot.vFCP;
            pDtsNF.FieldByName('VL_FCP_ST').AsFloat        := Total.ICMSTot.vFCPST;
            pDtsNF.FieldByName('VL_FCP_ST_RET').AsFloat    := Total.ICMSTot.vFCPSTRet;
            pDtsNF.FieldByName('IEST_PART').AsString       := Emit.IEST;
            pDtsNF.FieldByName('INFCPL').AsString          := InfAdic.infCpl;

            {Emitente = fornecedor}
            if not FLstPessoas.ContainsKey(Emit.CNPJCPF) then
            begin
              FLstPessoas.Add(Emit.CNPJCPF,Emit.xNome);
              pDtsNF.FieldByName('COD_PART').AsString     := Emit.CNPJCPF;
              pDtsNF.FieldByName('PARTICIPANTE').AsString := Emit.xNome;
            end
            else
            begin
              FLstPessoas.TryGetValue(Emit.CNPJCPF,vRet);
              pDtsNF.FieldByName('COD_PART').AsString     := Emit.CNPJCPF;
              pDtsNF.FieldByName('PARTICIPANTE').AsString := vRet;
            end;

            vCodPart  := pDtsNF.FieldByName('COD_PART').AsString;
            vParceiro := pDtsNF.FieldByName('PARTICIPANTE').AsString;

            {Destinatario = cliente contador = empresa}
            if not FLstPessoas.ContainsKey(Dest.CNPJCPF) then
            begin
              {Verifica se empresa esta cadastrada}
              if not GetEmpresa( pQryBscEmpresa , Dest.CNPJCPF) then
              begin
                AddCadastroEmpresa(pQryCadEmpresa,Dest.CNPJCPF,Dest.xNome,FDataHoraImportacao);
                FNomeUnicoEmpresa := Dest.xNome;
              end
              else
              begin
                FNomeUnicoEmpresa := pQryBscEmpresa.FieldByName('EMPRESA').AsString;
              end;

              pDtsNF.FieldByName('COD_EMP').AsString := Dest.CNPJCPF;
              pDtsNF.FieldByName('EMPRESA').AsString := FNomeUnicoEmpresa;
              FLstPessoas.Add(pDtsNF.FieldByName('COD_EMP').AsString,pDtsNF.FieldByName('EMPRESA').AsString);
            end
            else
            begin
              FLstPessoas.TryGetValue(Dest.CNPJCPF,vRet);
              pDtsNF.FieldByName('COD_EMP').AsString  := Dest.CNPJCPF;
              pDtsNF.FieldByName('EMPRESA').AsString  := vRet;
            end;

            pDtsNF.FieldByName('MES').AsInteger                := FormatDateTime('mm',pDtsNF.FieldByName('DT_DOC').AsDateTime).ToInteger;
            pDtsNF.FieldByName('ANO').AsInteger                := FormatDateTime('yyyy',pDtsNF.FieldByName('DT_DOC').AsDateTime).ToInteger;
            pDtsNF.FieldByName('SELECIONADO').AsString         := 'N';
            pDtsNF.FieldByName('DT_IMPORTACAO_XML').AsDateTime := FDataHoraImportacao;


            SetDataTypeStr([0,1,2,3,4,5,6,7,26,27,30,31,32,33,34,43,44],pArrayNF);

            SetSizeParams([0,1,2,3,4,5,6,7,26,27,30,31,32,33,34,43,44],
                          [pDtsNF.FieldByName('ID').Size,
                           pDtsNF.FieldByName('IND_OPER').Size,
                           pDtsNF.FieldByName('COD_PART').Size,
                           pDtsNF.FieldByName('PARTICIPANTE').Size,
                           pDtsNF.FieldByName('COD_MOD').Size,
                           pDtsNF.FieldByName('SER').Size,
                           pDtsNF.FieldByName('NUM_DOC').Size,
                           pDtsNF.FieldByName('CHV_NFE').Size,
                           pDtsNF.FieldByName('COD_EMP').Size,
                           pDtsNF.FieldByName('EMPRESA').Size,
                           pDtsNF.FieldByName('UF_PART').Size,
                           pDtsNF.FieldByName('UF_EMP').Size,
                           pDtsNF.FieldByName('CRT').Size,
                           pDtsNF.FieldByName('INDFINAL').Size,
                           pDtsNF.FieldByName('FINNFE').Size,
                           pDtsNF.FieldByName('IEST_PART').Size,
                           pDtsNF.FieldByName('INFCPL').Size
                           ],pArrayNF);

            pArrayNF.Params.ArraySize := vIdxArrayNfe + 1;

            with pArrayNF do
            begin
              Params[0].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('ID').AsString;
              Params[1].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('IND_OPER').AsString;
              Params[2].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('COD_PART').AsString;
              Params[3].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('PARTICIPANTE').AsString;
              Params[4].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('COD_MOD').AsString;
              Params[5].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('SER').AsString;
              Params[6].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('NUM_DOC').AsString;
              Params[7].AsStrings[vIdxArrayNfe]   := pDtsNF.FieldByName('CHV_NFE').AsString;
              Params[8].AsDateTimes[vIdxArrayNfe] := pDtsNF.FieldByName('DT_DOC').AsDateTime;
              Params[9].AsDateTimes[vIdxArrayNfe] := pDtsNF.FieldByName('DT_E_ES').AsDateTime;
              Params[10].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_DOC').AsFloat;
              Params[11].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_MERC').AsFloat;
              Params[12].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_DESC').AsFloat;
              Params[13].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_FRT').AsFloat;
              Params[14].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_SEG').AsFloat;
              Params[15].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_OUT_DA').AsFloat;
              Params[16].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_BC_ICMS').AsFloat;
              Params[17].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_ICMS').AsFloat;
              Params[18].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_BC_ICMS_ST').AsFloat;
              Params[19].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_ICMS_ST').AsFloat;
              Params[20].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_BC_IPI').AsFloat;
              Params[21].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_IPI').AsFloat;
              Params[22].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_BC_PIS').AsFloat;
              Params[23].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_PIS').AsFloat;
              Params[24].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_BC_COFINS').AsFloat;
              Params[25].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_COFINS').AsFloat;
              Params[26].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('COD_EMP').AsString;
              Params[27].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('EMPRESA').AsString;
              Params[28].AsIntegers[vIdxArrayNfe] := pDtsNF.FieldByName('MES').AsInteger;
              Params[29].AsIntegers[vIdxArrayNfe] := pDtsNF.FieldByName('ANO').AsInteger;
              Params[30].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('UF_PART').AsString;
              Params[31].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('UF_EMP').AsString;
              Params[32].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('CRT').AsString;
              Params[33].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('INDFINAL').AsString;
              Params[34].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('FINNFE').AsString;
              Params[35].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_II').AsFloat;
              Params[36].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_ICMS_DESON').AsFloat;
              Params[37].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_FCP_UF_DEST').AsFloat;
              Params[38].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_ICMS_UF_DEST').AsFloat;
              Params[39].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_ICMS_UF_REMET').AsFloat;
              Params[40].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_FCP').AsFloat;
              Params[41].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_FCP_ST').AsFloat;
              Params[42].AsFloats[vIdxArrayNfe]   := pDtsNF.FieldByName('VL_FCP_ST_RET').AsFloat;
              Params[43].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('IEST_PART').AsString;
              Params[44].AsStrings[vIdxArrayNfe]  := pDtsNF.FieldByName('INFCPL').AsString;
              Params[45].AsDateTimes[vIdxArrayNfe]:= pDtsNF.FieldByName('DT_IMPORTACAO_XML').AsDateTime;
            end;

            pDtsNF.Post;
            Inc(vIdxArrayNfe);

            AtivaPerformanceMemTable(pDtsNFItens,1000);
            pDtsNFItens.BeginBatch;

             for j := 0 to Pred(Det.Count) do
             begin
               with Det.Items[j] do
               begin
                 pDtsNFItens.Insert;
                 pDtsNFItens.FieldByName('ID').AsString             := IncKhronos(FSequence);
                 pDtsNFItens.FieldByName('IDNF').AsString           := vIdNFe;
                 pDtsNFItens.FieldByName('NUM_ITEM').AsInteger      := Prod.nItem;
                 pDtsNFItens.FieldByName('COD_ITEM').AsString       := Prod.cProd;
                 pDtsNFItens.FieldByName('COD_EAN').AsString        := Prod.cEAN;
                 pDtsNFItens.FieldByName('DESCR_ITEM').AsString     := Prod.xProd;
                 pDtsNFItens.FieldByName('QTDE').AsFloat            := Prod.qCom;
                 pDtsNFItens.FieldByName('UNID').AsString           := Prod.uCom;

                 if CSOSNIcmsToStr(imposto.ICMS.CSOSN) <> '0' then
                 begin
                   pDtsNFItens.FieldByName('CSOSN').AsString        := CSOSNIcmsToStr(imposto.ICMS.CSOSN);
                   pDtsNFItens.FieldByName('ORIG_CSOSN').AsString   := OrigToStr(imposto.ICMS.orig);
                 end
                 else
                 begin
                   if CSTICMSToStr(imposto.ICMS.CST) <> '0' then
                   begin
                     pDtsNFItens.FieldByName('CST').AsString          := CSTICMSToStr(imposto.ICMS.CST);
                     pDtsNFItens.FieldByName('ORIG_CST').AsString     := OrigToStr(imposto.ICMS.orig);
                   end;
                 end;

                 pDtsNFItens.FieldByName('CFOP').AsString           := Prod.CFOP;
                 pDtsNFItens.FieldByName('NCM').AsString            := Prod.NCM;
                 pDtsNFItens.FieldByName('CEST').AsString           := Prod.CEST;
                 pDtsNFItens.FieldByName('VL_ITEM').AsFloat         := Prod.vUnCom;
                 pDtsNFItens.FieldByName('VL_TOTAL_ITEM').AsFloat   := Prod.vProd;

                 pDtsNFItens.FieldByName('VL_IPI').AsFloat          := Imposto.IPI.vIPI;
                 pDtsNFItens.FieldByName('VL_PIS').AsFloat          := Imposto.PIS.vPIS;
                 pDtsNFItens.FieldByName('VL_COFINS').AsFloat       := Imposto.COFINS.vCOFINS;
                 pDtsNFItens.FieldByName('VL_FRETE').AsFloat        := Prod.vFrete;
                 pDtsNFItens.FieldByName('VL_OUTRAS_DESP').AsFloat  := Prod.vOutro;
                 pDtsNFItens.FieldByName('VL_SEGURO').AsFloat       := Prod.vSeg;
                 pDtsNFItens.FieldByName('VL_ICMSST_RET').AsFloat   := Imposto.ICMS.vICMSSTRet;
                 pDtsNFItens.FieldByName('VL_ICMSST_DEST').AsFloat  := Imposto.ICMS.vICMSSTDest;
                 pDtsNFItens.FieldByName('VL_ICMSST_DESON').AsFloat := Imposto.ICMS.vICMSDeson;
                 pDtsNFItens.FieldByName('VL_DESC').AsFloat         := Prod.vDesc;
                 pDtsNFItens.FieldByName('VL_BC_ICMS').AsFloat      := Imposto.ICMS.vBC;
                 pDtsNFItens.FieldByName('ALIQ_ICMS').AsFloat       := Imposto.ICMS.pICMS;
                 pDtsNFItens.FieldByName('VL_ICMS').AsFloat         := Imposto.ICMS.vICMS;
                 pDtsNFItens.FieldByName('VL_BC_ICMS_ST').AsFloat   := Imposto.ICMS.vBCST;
                 pDtsNFItens.FieldByName('ALIQ_ST').AsFloat         := Imposto.ICMS.pICMSST;
                 pDtsNFItens.FieldByName('VL_ICMS_ST').AsFloat      := Imposto.ICMS.vICMSST;
                 pDtsNFItens.FieldByName('VL_BC_ST_RET').AsFloat    := Imposto.ICMS.vBCSTRet;
                 pDtsNFItens.FieldByName('VL_FCP_ST').AsFloat       := Imposto.ICMS.vFCPST;
                 pDtsNFItens.FieldByName('VL_BC_FCP_ST').AsFloat    := Imposto.ICMS.vBCFCPST;
                 pDtsNFItens.FieldByName('VL_FCP_ST_RET').AsFloat   := Imposto.ICMS.vFCPSTRet;
                 pDtsNFItens.FieldByName('VL_BC_FCP_ST_RET').AsFloat:= Imposto.ICMS.vBCFCPSTRet;
                 pDtsNFItens.FieldByName('VL_BC_ST_DEST').AsFloat   := Imposto.ICMS.vBCSTDest;

                 pDtsNFItens.FieldByName('VL_II').AsFloat           := Imposto.II.vII;
                 pDtsNFItens.FieldByName('VL_ICMS_DESON').AsFloat   := Imposto.ICMS.vICMSDeson;
                 pDtsNFItens.FieldByName('VL_FCP_UF_DEST').AsFloat  := Imposto.ICMSUFDest.vFCPUFDest;
                 pDtsNFItens.FieldByName('VL_FCP').AsFloat          := Imposto.ICMS.vFCP;
                 pDtsNFItens.FieldByName('VL_BC_UF_DEST').AsFloat   := Imposto.ICMSUFDest.vBCUFDest;
                 pDtsNFItens.FieldByName('VL_BC_FCP_UF_DEST').AsFloat := Imposto.ICMSUFDest.vBCFCPUFDest;
                 pDtsNFItens.FieldByName('P_ICMS_INTER').AsFloat      := Imposto.ICMSUFDest.pICMSInter;
                 pDtsNFItens.FieldByName('P_ICMS_INTER_PART').AsFloat := Imposto.ICMSUFDest.pICMSInterPart;
                 pDtsNFItens.FieldByName('VL_ICMS_UF_DEST').AsFloat   := Imposto.ICMSUFDest.vICMSUFDest;
                 pDtsNFItens.FieldByName('VL_ICMS_UF_REMET').AsFloat  := Imposto.ICMSUFDest.vICMSUFRemet;

                 pDtsNFItens.FieldByName('VL_BC_II').AsFloat          := Imposto.II.vBc;
                 pDtsNFItens.FieldByName('VL_DESP_ADU_II').AsFloat    := Imposto.II.vDespAdu;
                 pDtsNFItens.FieldByName('VL_IOF_II').AsFloat         := Imposto.II.vIOF;
                 pDtsNFItens.FieldByName('P_RED_BC').AsFloat          := Imposto.ICMS.pRedBC;
                 pDtsNFItens.FieldByName('P_RED_BC_ST').AsFloat       := Imposto.ICMS.pRedBCST;
                 pDtsNFItens.FieldByName('P_RED_BC_EFET').AsFloat     := Imposto.ICMS.pRedBCEfet;
                 pDtsNFItens.FieldByName('P_ICMS_EFET').AsFloat       := Imposto.ICMS.pICMSEfet;
                 pDtsNFItens.FieldByName('P_MVA_ST').AsFloat          := Imposto.ICMS.pMVAST;
                 pDtsNFItens.FieldByName('UF_ST').AsString            := Imposto.ICMS.UFST;
                 pDtsNFItens.FieldByName('P_BC_OP').AsFloat           := Imposto.ICMS.pBCOp;
                 pDtsNFItens.FieldByName('VL_ICMS_OP').AsFloat        := Imposto.ICMS.vICMSOp;
                 pDtsNFItens.FieldByName('P_DIF').AsFloat             := Imposto.ICMS.pDif;
                 pDtsNFItens.FieldByName('P_ICMS_DIF').AsFloat        := Imposto.ICMS.vICMSDif;
                 pDtsNFItens.FieldByName('VL_BC_FCP').AsFloat         := Imposto.ICMS.vBCFCP;
                 pDtsNFItens.FieldByName('P_FCP_ST').AsFloat          := Imposto.ICMS.pFCPST;
                 pDtsNFItens.FieldByName('P_FCP_ST_RET').AsFloat      := Imposto.ICMS.pFCPSTRet;
                 pDtsNFItens.FieldByName('VL_BC_EFET').AsFloat        := Imposto.ICMS.vBCEfet;
                 pDtsNFItens.FieldByName('VL_ICMS_EFET').AsFloat      := Imposto.ICMS.vICMSEfet;
                 pDtsNFItens.FieldByName('VL_ICMS_SUBSTITUTO').AsFloat:= Imposto.ICMS.vICMSSubstituto;
                 pDtsNFItens.FieldByName('P_FCP_UF_DEST').AsFloat     := Imposto.ICMSUFDest.pFCPUFDest;
                 pDtsNFItens.FieldByName('P_ICMS_UF_DEST').AsFloat    := Imposto.ICMSUFDest.pICMSUFDest;
                 pDtsNFItens.FieldByName('P_ICMS_INTER').AsFloat      := Imposto.ICMSUFDest.pICMSInter;
                 pDtsNFItens.FieldByName('P_ICMS_INTER_PART').AsFloat := Imposto.ICMSUFDest.pICMSInterPart;
                 pDtsNFItens.FieldByName('VL_CRED_ICMSSN').AsFloat    := Imposto.ICMS.vCredICMSSN;
                 pDtsNFItens.FieldByName('P_VL_CRED_ICMSSN').AsFloat  := Imposto.ICMS.pCredSN;
                 pDtsNFItens.FieldByName('NUM_DOC').AsString          := Ide.nNF.ToString;
                 pDtsNFItens.FieldByName('SELECIONADO').AsString      := 'N';

                 {Replica os dados da capa para que os mesmos sejam expotados via cxgrid}
                 pDtsNFItens.FieldByName('CAPA_IND_OPER').AsString        := iif(Ide.tpNF = tnEntrada,'E','S');
                 pDtsNFItens.FieldByName('CAPA_COD_PART').AsString        := vCodPart;
                 pDtsNFItens.FieldByName('CAPA_COD_MOD').AsString         := Ide.modelo.ToString;
                 pDtsNFItens.FieldByName('CAPA_SER').AsString             := Ide.serie.ToString;
                 pDtsNFItens.FieldByName('CAPA_CHV_NFE').AsString         := Copy(infNFe.ID,4,length(infNFe.ID));
                 pDtsNFItens.FieldByName('CAPA_DT_DOC').AsDateTime        := Ide.dEmi;
                 pDtsNFItens.FieldByName('CAPA_DT_E_ES').AsDateTime       := Ide.dSaiEnt;
                 pDtsNFItens.FieldByName('CAPA_VL_DOC').AsFloat           := Total.ICMSTot.vNF;
                 pDtsNFItens.FieldByName('CAPA_VL_MERC').AsFloat          := Total.ICMSTot.vProd;
                 pDtsNFItens.FieldByName('CAPA_VL_DESC').AsFloat          := Total.ICMSTot.vDesc;
                 pDtsNFItens.FieldByName('CAPA_VL_FRT').AsFloat           := Total.ICMSTot.vFrete;
                 pDtsNFItens.FieldByName('CAPA_VL_SEG').AsFloat           := Total.ICMSTot.vSeg;
                 pDtsNFItens.FieldByName('CAPA_VL_OUT_DA').AsFloat        := Total.ICMSTot.vOutro;
                 pDtsNFItens.FieldByName('CAPA_VL_BC_ICMS').AsFloat       := Total.ICMSTot.vBC;
                 pDtsNFItens.FieldByName('CAPA_VL_ICMS').AsFloat          := Total.ICMSTot.vICMS;
                 pDtsNFItens.FieldByName('CAPA_VL_BC_ICMS_ST').AsFloat    := Total.ICMSTot.vBCST;
                 pDtsNFItens.FieldByName('CAPA_VL_ICMS_ST').AsFloat       := Total.ICMSTot.vST;
                 pDtsNFItens.FieldByName('CAPA_VL_IPI').AsFloat           := Total.ICMSTot.vIPI;
                 pDtsNFItens.FieldByName('CAPA_VL_PIS').AsFloat           := Total.ICMSTot.vPIS;
                 pDtsNFItens.FieldByName('CAPA_VL_COFINS').AsFloat        := Total.ICMSTot.vCOFINS;
                 pDtsNFItens.FieldByName('CAPA_PARTICIPANTE').AsString    := vParceiro;
                 pDtsNFItens.FieldByName('CAPA_UF_PART').AsString         := Emit.EnderEmit.UF;
                 pDtsNFItens.FieldByName('CAPA_UF_EMP').AsString          := Dest.EnderDest.UF;
                 pDtsNFItens.FieldByName('CAPA_CRT').AsString             := GetStrCRT(Emit.CRT);
                 pDtsNFItens.FieldByName('CAPA_INDFINAL').AsString        := iif(Ide.indFinal = cfNao,'0 - Normal','1 - Consumidor final');
                 pDtsNFItens.FieldByName('CAPA_FINNFE').AsString          := GetStrFinNFe(Ide.finNFe);
                 pDtsNFItens.FieldByName('CAPA_VL_II').AsFloat            := Total.ICMSTot.vII;
                 pDtsNFItens.FieldByName('CAPA_VL_ICMS_DESON').AsFloat    := Total.ICMSTot.vICMSDeson;
                 pDtsNFItens.FieldByName('CAPA_VL_FCP_UF_DEST').AsFloat   := Total.ICMSTot.vFCPUFDest;
                 pDtsNFItens.FieldByName('CAPA_VL_ICMS_UF_DEST').AsFloat  := Total.ICMSTot.vICMSUFDest;
                 pDtsNFItens.FieldByName('CAPA_VL_ICMS_UF_REMET').AsFloat := Total.ICMSTot.vICMSUFRemet;
                 pDtsNFItens.FieldByName('CAPA_VL_FCP').AsFloat           := Total.ICMSTot.vFCP;
                 pDtsNFItens.FieldByName('CAPA_VL_FCP_ST').AsFloat        := Total.ICMSTot.vFCPST;
                 pDtsNFItens.FieldByName('CAPA_VL_FCP_ST_RET').AsFloat    := Total.ICMSTot.vFCPSTRet;
                 pDtsNFItens.FieldByName('CAPA_IEST_PART').AsString       := Emit.IEST;
                 pDtsNFItens.FieldByName('CAPA_INFCPL').AsString          := InfAdic.infCpl;

                 SetDataTypeStr([0,1,3,4,6,9,16,17,18,29,30,52,68,69],pArrayNFItens);

                 SetSizeParams([0,1,3,4,6,9,16,17,18,29,30,52,68,69],
                               [pDtsNFItens.FieldByName('ID').Size,
                                pDtsNFItens.FieldByName('IDNF').Size,
                                pDtsNFItens.FieldByName('COD_ITEM').Size,
                                pDtsNFItens.FieldByName('DESCR_ITEM').Size,
                                pDtsNFItens.FieldByName('UNID').Size,
                                pDtsNFItens.FieldByName('CFOP').Size,
                                pDtsNFItens.FieldByName('COD_EAN').Size,
                                pDtsNFItens.FieldByName('CEST').Size,
                                pDtsNFItens.FieldByName('NCM').Size,
                                pDtsNFItens.FieldByName('CSOSN').Size,
                                pDtsNFItens.FieldByName('CST').Size,
                                pDtsNFItens.FieldByName('UF_ST').Size,
                                pDtsNFItens.FieldByName('ORIG_CST').Size,
                                pDtsNFItens.FieldByName('ORIG_CSOSN').Size
                               ],pArrayNFItens);

                 pArrayNFItens.Params.ArraySize := vIdxArrayItensNF + 1;

                 with pArrayNFItens do
                 begin
                   Params[0].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('ID').AsString;
                   Params[1].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('IDNF').AsString;
                   Params[2].AsIntegers[vIdxArrayItensNF] := pDtsNFItens.FieldByName('NUM_ITEM').AsInteger;
                   Params[3].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('COD_ITEM').AsString;
                   Params[4].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('DESCR_ITEM').AsString;
                   Params[5].AsFloats[vIdxArrayItensNF]   := pDtsNFItens.FieldByName('QTDE').AsFloat;
                   Params[6].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('UNID').AsString;
                   Params[7].AsFloats[vIdxArrayItensNF]   := pDtsNFItens.FieldByName('VL_ITEM').AsFloat;
                   Params[8].AsFloats[vIdxArrayItensNF]   := pDtsNFItens.FieldByName('VL_DESC').AsFloat;
                   Params[9].AsStrings[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('CFOP').AsString;

                   Params[10].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_ICMS').AsFloat;
                   Params[11].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('ALIQ_ICMS').AsFloat;
                   Params[12].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS').AsFloat;
                   Params[13].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_ICMS_ST').AsFloat;
                   Params[14].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('ALIQ_ST').AsFloat;
                   Params[15].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_ST').AsFloat;
                   Params[16].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('COD_EAN').AsString;
                   Params[17].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('CEST').AsString;
                   Params[18].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('NCM').AsString;
                   Params[19].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_TOTAL_ITEM').AsFloat;

                   Params[20].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_IPI').AsFloat;
                   Params[21].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_OUTRAS_DESP').AsFloat;
                   Params[22].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_PIS').AsFloat;
                   Params[23].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_COFINS').AsFloat;
                   Params[24].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMSST_RET').AsFloat;
                   Params[25].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMSST_DEST').AsFloat;
                   Params[26].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMSST_DESON').AsFloat;
                   Params[27].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_FRETE').AsFloat;
                   Params[28].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_SEGURO').AsFloat;
                   Params[29].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('CSOSN').AsString;

                   Params[30].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('CST').AsString;
                   Params[31].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_ST_RET').AsFloat;
                   Params[32].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_FCP_ST').AsFloat;
                   Params[33].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_FCP_ST').AsFloat;
                   Params[34].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_FCP_ST_RET').AsFloat;
                   Params[35].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_FCP_ST_RET').AsFloat;
                   Params[36].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_ST_DEST').AsFloat;
                   Params[37].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_DESON').AsFloat;
                   Params[38].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_II').AsFloat;
                   Params[39].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_FCP_UF_DEST').AsFloat;

                   Params[40].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_FCP').AsFloat;
                   Params[41].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_UF_DEST').AsFloat;
                   Params[42].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_FCP_UF_DEST').AsFloat;
                   Params[43].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_UF_DEST').AsFloat;
                   Params[44].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_UF_REMET').AsFloat;
                   Params[45].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_II').AsFloat;
                   Params[46].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_DESP_ADU_II').AsFloat;
                   Params[47].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_IOF_II').AsFloat;
                   Params[48].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_RED_BC').AsFloat;
                   Params[49].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_RED_BC_ST').AsFloat;

                   Params[50].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_ICMS_EFET').AsFloat;
                   Params[51].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_MVA_ST').AsFloat;
                   Params[52].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('UF_ST').AsString;
                   Params[53].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_OP').AsFloat;
                   Params[54].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_DIF').AsFloat;
                   Params[55].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_ICMS_DIF').AsFloat;
                   Params[56].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_FCP').AsFloat;
                   Params[57].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_FCP_ST').AsFloat;
                   Params[58].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_FCP_ST_RET').AsFloat;
                   Params[59].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_RED_BC_EFET').AsFloat;
                   Params[60].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_BC_EFET').AsFloat;

                   Params[61].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_EFET').AsFloat;
                   Params[62].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_ICMS_SUBSTITUTO').AsFloat;
                   Params[63].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_FCP_UF_DEST').AsFloat;
                   Params[64].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_ICMS_UF_DEST').AsFloat;
                   Params[65].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_ICMS_INTER').AsFloat;
                   Params[66].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_ICMS_INTER_PART').AsFloat;
                   Params[67].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_BC_OP').AsFloat;
                   Params[68].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('ORIG_CST').AsString;
                   Params[69].AsStrings[vIdxArrayItensNF] := pDtsNFItens.FieldByName('ORIG_CSOSN').AsString;

                   Params[70].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('VL_CRED_ICMSSN').AsFloat;
                   Params[71].AsFloats[vIdxArrayItensNF]  := pDtsNFItens.FieldByName('P_VL_CRED_ICMSSN').AsFloat;
                 end;

                 pDtsNFItens.Post;
                 Inc(vIdxArrayItensNF);
               end;
             end;

            pProgressBar.Position := pProgressBar.Position + 1;
            FrmImportacaoXML.Repaint;

            if FrmImportacaoXML.Cancelado then
            begin
              Cancelar;
              Abort;
            end;

          end;


        end;

      end;

    end;

    result := (vIdxArrayNfe > 0);
  finally
    pDtsNF.EndBatch;
    pDtsNFItens.EndBatch;
  end;
end;

procedure TDMImportacaoXML.GetDadosEmpresa(pComponenteCTe: TCTe; out voxNome,
  vCNPJ: String);
begin
  case pComponenteCTe.ide.toma03.Toma of
    tmRemetente:
    begin
      voxNome :=  pComponenteCTe.rem.xNome;
      vCNPJ   :=  pComponenteCTe.rem.CNPJCPF;
    end;
    tmExpedidor:
    begin
      voxNome :=  pComponenteCTe.exped.xNome;
      vCNPJ   :=  pComponenteCTe.exped.CNPJCPF;
    end;
    tmRecebedor:
    begin
      voxNome :=  pComponenteCTe.receb.xNome;
      vCNPJ   :=  pComponenteCTe.receb.CNPJCPF;
    end;
    tmDestinatario:
    begin
      voxNome :=  pComponenteCTe.dest.xNome;
      vCNPJ   :=  pComponenteCTe.dest.CNPJCPF;
    end;
    tmOutros:
    begin
      voxNome :=  pComponenteCTe.toma.xNome;
      vCNPJ   :=  pComponenteCTe.toma.CNPJCPF;
    end;
  end;

end;

procedure TDMImportacaoXML.GetDadosImpostos(pComponenteCTe: TICMS;
  out voCST: String; voVL_BC, voVL_ICMS, voP_ICMS: Double);
begin
  with pComponenteCTe do
  begin
    if ICMS00.CST = cst00 then
    begin
      with ICMS00 do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := vBC;
        voVL_ICMS := vICMS;
        voP_ICMS  := pICMS;
      end;
    end;

    if ICMS20.CST <> cst00 then
    begin
      with ICMS20 do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := vBC;
        voVL_ICMS := vICMS;
        voP_ICMS  := pICMS;
      end;
    end;

    if ICMS45.CST <> cst00 then
    begin
      with ICMS45 do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := 0.00;
        voVL_ICMS := 0.00;
        voP_ICMS  := 0.00;
      end;
    end;

    if ICMS60.CST <> cst00 then
    begin
      with ICMS60 do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := vBCSTRet;
        voVL_ICMS := vICMSSTRet;
        voP_ICMS  := pICMSSTRet;
      end;
    end;

    if ICMS90.CST <> cst00 then
    begin
      with ICMS90 do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := ICMS90.vBC;
        voVL_ICMS := ICMS90.vICMS;
        voP_ICMS  := ICMS90.pICMS;
      end;
    end;

    if ICMSOutraUF.CST <> cst00 then
    begin
      with ICMSOutraUF do
      begin
        voCST     := GetTpcnCSTIcmsToStr(CST);
        voVL_BC   := vBCOutraUF;
        voVL_ICMS := vICMSOutraUF;
        voP_ICMS  := pICMSOutraUF;
      end;
    end;

    if ICMSSN.indSN <> 0 then
    begin
      with ICMSSN do
      begin
        voCST     := '90';
        voVL_BC   := 0.00;
        voVL_ICMS := 0.00;
        voP_ICMS  := 0.00;
      end;
    end;

  end;
end;

function TDMImportacaoXML.GetModeloXML(const pArquivoNome: String): Integer;
begin
  result := Copy(pArquivoNome,21,2).ToInteger;
end;

function TDMImportacaoXML.GetNF(pID: Integer): Boolean;
begin
  result := false;
  try
    dmPrincipal.DB.ExecSQL(GetSQLNF(pID),TDataSet(MemNF));
    DMImportacaoXML.MemNF.CachedUpdates      := true;
    result := not (MemNF.IsEmpty);
  except
    on e: exception do
    begin
      FrmMensagem.Informacao('Erro : ' + e.Message + ' ao tentar abrir consulta NF.');
      abort;
    end;
  end;
end;

function TDMImportacaoXML.GetTodasNF(pCodPart, pMes, pAno: String): Boolean;
var
  vQry : TFDQuery;
begin
  result := false;
  try
    vQry := ConsultaSQL(GetSQLNF(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
    try
      PreparaDataSets;
      MemNF.CopyDataSet(vQry);
      with MemNF do
      begin
        if not IsEmpty then
        begin
          result := true;
          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLItensNF(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemItensNF.CopyDataSet(vQry);
        end;
      end;
    finally
      vQry.free;
    end;
  except
    on e: exception do
    raise Exception.Create('Erro : ' + e.message + ' ao tentar abriur consulta NF(s) da empresa');
  end;
end;

function TDMImportacaoXML.GetTodosCTe(pCodPart, pMes, pAno: String): Boolean;
var
  vQry : TFDQuery;
begin
  result := false;
  try
    vQry := ConsultaSQL(GetSQLCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
    try
      PreparaDataSets;
      MemCTe.CopyDataSet(vQry);
      with MemCTe do
      begin
        if not IsEmpty then
        begin
          result := true;

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLEmitCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeEmit.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLRemCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeRem.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLExpedCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeExt.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLRecebCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeReceb.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLDestCTe(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeDest.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLImpCte(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeImpostos.CopyDataSet(vQry);

          vQry   := nil;
          vQry   := ConsultaSQL(GetSQLInfDocCte(pCodPart,pMes,pAno),dmPrincipal.BancoExec);
          MemCTeDoc.CopyDataSet(vQry);
        end;
      end;
    finally
      vQry.free;
    end;
  except
    on e: exception do
    raise Exception.Create('Erro : ' + e.message + ' ao tentar abriur consulta NF(s) da empresa');
  end;
end;

function TDMImportacaoXML.GetTpcnCSTIcmsToStr(const pCST: TpcnCSTIcms): String;
begin
  case pCST of
    cst00          : result := '00';
    cst10          : result := '10';
    cst20          : result := '20';
    cst30          : result := '30';
    cst40          : result := '40';
    cst41          : result := '41';
    cst45          : result := '45';
    cst50          : result := '50';
    cst51          : result := '51';
    cst60          : result := '60';
    cst70          : result := '70';
    cst80          : result := '80';
    cst81          : result := '81';
    cst90          : result := '90';
    cstPart10      : result := 'Pa10';
    cstPart90      : result := 'Pa90';
    cstRep41       : result := 'Re41';
    cstVazio       : result := 'Vz';
    cstICMSOutraUF : result := 'IOU';
    cstICMSSN      : result := 'ICSN';
    cstRep60       : result := 'Re60';
  end;
end;

function TDMImportacaoXML.GravarImportacao: Boolean;
begin
  result := false;
  try
    dmPrincipal.BancoExec.StartTransaction;

    if QryArrayNF_1.Params.ArraySize > 0 then
    begin
      FrmMensagem.MostraMensagem('Gravando dados Nota fiscal (1) ...');
      ExecutaArrayDMLEmBatch(QryArrayNF_1,500);
      FrmMensagem.MostraMensagem('Gravando dados dos itens (1) da Nota fiscal ...');
      ExecutaArrayDMLEmBatch(QryArrayItensNF_1,500);
    end;

    if QryArrayNF_2.Params.ArraySize > 0 then
    begin
      FrmMensagem.MostraMensagem('Gravando dados Nota fiscal (2) ...');
      ExecutaArrayDMLEmBatch(QryArrayNF_2,500);
      FrmMensagem.MostraMensagem('Gravando dados dos itens (2) da Nota fiscal ...');
      ExecutaArrayDMLEmBatch(QryArrayItensNF_2,500);
    end;

    if QryArrayCTe.Params.ArraySize > 0 then
    begin
      FrmMensagem.MostraMensagem('Gravando dados do CTe ...');
      ExecutaArrayDMLEmBatch(QryArrayCTe,500);

      FrmMensagem.MostraMensagem('Gravando dados do emitente do CTe ...');
      ExecutaArrayDMLEmBatch(QryArrayCTeEmit,500);

      if QryArrayCTeRem.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do remetente do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeRem,500);
      end;

      if QryArrayCTeExt.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do expedidor do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeExt,500);
      end;

      if QryArrayCTeReceb.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do recebedor do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeReceb,500);
      end;

      if QryArrayCTeDest.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do destinatário do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeDest,500);
      end;

      if QryArrayCTeImpostos.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do imposto do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeImpostos,500);
      end;

      if QryArrayCTeDoc.Params.ArraySize > 0 then
      begin
        FrmMensagem.MostraMensagem('Gravando dados do inf.Doc do CTe ...');
        ExecutaArrayDMLEmBatch(QryArrayCTeDoc,500);
      end;
    end;

    dmPrincipal.GravaCadastroEmpresa;
    dmPrincipal.BancoExec.Commit;

  except
    on e: exception do
    begin
      dmPrincipal.BancoExec.Rollback;
      raise Exception.Create('Erro : ' + e.message + ' ao tentar gravar dados.');
    end;
  end;

  FNomeArqLog         := '';
  result              := true;
end;


procedure TDMImportacaoXML.PreparaDataSets;
var
  i : Integer;
begin
  for I := 0 to Pred(DMImportacaoXML.ComponentCount) do
  begin
    if DMImportacaoXML.Components[i] Is TFDMemTable then
    begin
      with TFDMemTable(DMImportacaoXML.Components[i]) do
      begin
        close;
        active        := true;
        cachedUpdates := true;
      end;
    end;
  end;
end;

procedure TDMImportacaoXML.SetExisteXMLImportar(const Value: Boolean);
begin

end;

procedure TDMImportacaoXML.SetNomeArqLog(const Value: String);
begin
  FNomeArqLog := Value;
end;

procedure TDMImportacaoXML.ZerarArrayDML;
begin
  QryArrayNF_1.Params.ArraySize         := 0;
  QryArrayItensNF_1.Params.ArraySize    := 0;

  QryArrayNF_2.Params.ArraySize         := 0;
  QryArrayItensNF_2.Params.ArraySize    := 0;

  QryArrayNF_2.Params.ArraySize         := 0;
  QryArrayItensNF_2.Params.ArraySize    := 0;

  QryArrayCTe.Params.ArraySize          := 0;
  QryArrayCTeEmit.Params.ArraySize      := 0;
  QryArrayCTeRem.Params.ArraySize       := 0;
  QryArrayCTeExt.Params.ArraySize       := 0;
  QryArrayCTeReceb.Params.ArraySize     := 0;
  QryArrayCTeDest.Params.ArraySize      := 0;
  QryArrayCTeImpostos.Params.ArraySize  := 0;
  QryArrayCTeDoc.Params.ArraySize       := 0;
end;

function TDMImportacaoXML.GetSQLChaveCTe(const pChaveAcesso : String): String;
begin
  result := 'SELECT "ID" FROM "CTE" WHERE "CHV_CTE" = ' + pChaveAcesso.QuotedString;
end;

function TDMImportacaoXML.GetSQLChaveNFe(const pChaveAcesso : String): String;
begin
  result := 'SELECT "ID" FROM "NF" WHERE "CHV_NFE" = ' + pChaveAcesso.QuotedString;
end;

function TDMImportacaoXML.GetSQLImpCte(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_IMPOSTOS" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLInfDocCte(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_DOC" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLItensNF(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT *,CAST(''N'' AS CHARACTER VARYING(1)) AS "SELECIONADO", '+
            'N."NUM_DOC", '+
            'N."IND_OPER" AS "CAPA_IND_OPER",  '+
            'N."COD_PART" AS "CAPA_COD_PART", '+
            'N."COD_MOD" AS "CAPA_COD_MOD", '+
            'N."SER" AS "CAPA_SER",      '+
            'N."CHV_NFE" AS "CAPA_CHV_NFE", '+
            'N."DT_DOC" AS "CAPA_DT_DOC",  '+
            'N."DT_E_ES" AS "CAPA_DT_E_ES",  '+
            'N."VL_DOC" AS "CAPA_VL_DOC",  '+
            'N."VL_MERC" AS "CAPA_VL_MERC", '+
            'N."VL_DESC" AS "CAPA_VL_DESC",  '+
            'N."VL_FRT" AS "CAPA_VL_FRT",  '+
            'N."VL_SEG" AS "CAPA_VL_SEG",  '+
            'N."VL_OUT_DA" AS "CAPA_VL_OUT_DA", '+
            'N."VL_BC_ICMS" AS "CAPA_VL_BC_ICMS", '+
            'N."VL_ICMS" AS "CAPA_VL_ICMS", '+
            'N."VL_BC_ICMS_ST" AS "CAPA_VL_BC_ICMS_ST", '+
            'N."VL_ICMS_ST" AS "CAPA_VL_ICMS_ST", '+
            'N."VL_IPI" AS "CAPA_VL_IPI", '+
            'N."VL_PIS" AS "CAPA_VL_PIS", '+
            'N."VL_COFINS" AS "CAPA_VL_COFINS",'+
            'N."PARTICIPANTE" AS "CAPA_PARTICIPANTE", '+
            'N."UF_PART" AS "CAPA_UF_PART", '+
            'N."UF_EMP" AS "CAPA_UF_EMP",  '+
            'N."CRT" AS "CAPA_CRT", '+
            'N."INDFINAL" AS "CAPA_INDFINAL", '+
            'N."FINNFE" AS "CAPA_FINNFE", '+
            'N."VL_II" AS "CAPA_VL_II",  '+
            'N."VL_ICMS_DESON" AS "CAPA_VL_ICMS_DESON",  '+
            'N."VL_FCP_UF_DEST" AS "CAPA_VL_FCP_UF_DEST", '+
            'N."VL_ICMS_UF_DEST" AS "CAPA_VL_ICMS_UF_DEST", '+
            'N."VL_ICMS_UF_REMET" AS "CAPA_VL_ICMS_UF_REMET",'+
            'N."VL_FCP" AS "CAPA_VL_FCP", '+
            'N."VL_FCP_ST" AS "CAPA_VL_FCP_ST",  '+
            'N."VL_FCP_ST_RET" AS "CAPA_VL_FCP_ST_RET",  '+
            'N.IEST_PART AS "CAPA_IEST_PART", '+
            'N."INFCPL" AS "CAPA_INFCPL"  '+
            'FROM "NF_ITENS" NP '+
            'LEFT JOIN "NF" N ON NP."IDNF" = N."ID" '+
            'WHERE EXISTS ( SELECT N."ID" '+
            '               FROM "NF" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND N."ID" = NP."IDNF" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLNF(const pCodPart, pMes, pAno: String): String;
begin
  result := 'SELECT *,CAST(''N'' AS CHARACTER VARYING(1)) AS "SELECIONADO" '+
            'FROM "NF" WHERE "COD_EMP" = ' + QuotedStr(pCodPart) +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno +
            'ORDER BY "DT_DOC"';
end;

function TDMImportacaoXML.GetSQLRecebCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_RECEB" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLRemCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_REM" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLCTe(const pCodPart, pMes, pAno: String): String;
begin
  result := 'SELECT *,CAST(''N'' AS CHARACTER VARYING(1)) AS "SELECIONADO" '+
            'FROM "CTE" WHERE "COD_EMP" = ' + QuotedStr(pCodPart) +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno +
            'ORDER BY "DT_EMIS"';
end;

function TDMImportacaoXML.GetStrCRT(pTpcnCRT : TpcnCRT) : String;
begin
  case pTpcnCRT of
    crtSimplesNacional        : result := '1 - Simples nacional';
    crtSimplesExcessoReceita  : result := '2 - Simples nacional com Excesso receita';
    crtRegimeNormal           : result := '3 - Regime normal';
  end;
end;

function TDMImportacaoXML.GetStrFinNFe(pTpcnFinalidadeNFe : TpcnFinalidadeNFe) : String;
begin
  case pTpcnFinalidadeNFe of
    fnNormal        : result := '1 - NFe Normal';
    fnComplementar  : result := '2 - NFe Complementar';
    fnAjuste        : result := '3 - NFe Ajuste';
    fnDevolucao     : result := '4 - Devolucao de mercadoria';
  end;
end;

function TDMImportacaoXML.GetStrTomador(const pTomador: TpcteTomador): String;
begin
  case pTomador of
    tmRemetente    : result := '0 - Remetente';
    tmExpedidor    : result := '1 - Expedido';
    tmRecebedor    : result := '2 - Recebedor';
    tmDestinatario : result := '3 - Destinatario';
    tmOutros       : result := '4 - Outros';
  end;
end;

function TDMImportacaoXML.GetSQLNF(const pIDNF : Integer) : String;
begin
  result := 'SELECT *,CAST(''N'' AS CHARACTER VARYING(1)) AS "SELECIONADO" '+
            'FROM "NF"  WHERE "ID" = ' + pIDNF.ToString;
end;

function TDMImportacaoXML.ExcluirLoteXMLNFe(const pCodPartLote,
pMesLote,pAnoLote : String):Boolean;
begin
  result := true;
  try
    DeletaTodasNF(pCodPartLote,pMesLote,pAnoLote);
  except
    result := false;
  end;
end;

function TDMImportacaoXML.ExcluiLoteImportacaoXML(
  const pModeloXML: TFinalidadeTela;
  pDataImportacaoLoteXML: TDateTime): Boolean;
begin
  result := false;

  with dmPrincipal.DB do
  begin
    try
      StartTransaction;
      ExecSQL(GetSQLDeleteLoteImportacaoXML(pModeloXML,pDataImportacaoLoteXML));
      Commit;
      result := true;
    except
      on e: exception do
      begin
        Rollback;
        raise;
      end;
    end;
  end;

end;

function TDMImportacaoXML.ExcluirLoteXMLCTe(const pCodPartLote,
pMesLote,pAnoLote : String):Boolean;
begin
  result := true;
  try
    DeletaTodosCte(pCodPartLote,pMesLote,pAnoLote);
  except
    result := false;
  end;
end;

function TDMImportacaoXML.ExcluirXMLNFe : Boolean;
begin
  result := true;
  try
    DeleteNF;
  except
    result := false;
  end;
end;

function TDMImportacaoXML.ExcluirXMLCTe : Boolean;
begin
  result := true;
  try
    DeleteCTe;
  except
    result := false;
  end;
end;

function TDMImportacaoXML.GetSQLDeleteNFItens(const pCodPart,pMes,pAno : String):String;
begin
  result := 'DELETE FROM "NF_ITENS" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "NF" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno +
            ' AND N."ID" = NP."IDNF")';
end;

function TDMImportacaoXML.GetSQLDestCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_DEST" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND "MES" = ' + pMes + 'AND "ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLEmitCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_EMIT" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND C."MES" = ' + pMes + 'AND C."ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';
end;

function TDMImportacaoXML.GetSQLExpedCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'SELECT E.*, ' +
            'C."NUM_DOC" FROM "CTE_EXT" E '+
            'LEFT JOIN "CTE" C ON C."ID" = E."IDCTE" '+
            'WHERE EXISTS ( SELECT C."ID" '+
            '               FROM "CTE" C WHERE C."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            '               AND C."MES" = ' + pMes + 'AND C."ANO" = ' + pAno +
            '               AND C."ID" = E."IDCTE" '+
            '             )';

end;

function TDMImportacaoXML.GetSQLDeleteCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'DELETE FROM "CTE" WHERE "COD_EMP" = ' + QuotedStr(pCodPart) +
            ' AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno;
end;

function TDMImportacaoXML.GetSQLDeleteCTe(const pIDCte: String): String;
begin
  result := 'DELETE FROM "CTE" WHERE "ID" = ' + QuotedStr(pIDCte);
end;

function TDMImportacaoXML.GetSQLDeleteCTeImportacaoXML(
  const pDataHoraImportacaoXML: String): String;
begin
  result := 'DELETE FROM "CTE_EMIT" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_REM" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_EXT" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_RECEB" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_DEST" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_IMPOSTOS" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_DOC" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE TO_CHAR(N."DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE" WHERE TO_CHAR("DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ; ';
end;

function TDMImportacaoXML.GetSQLDeleteDetalhesCTe(const pCodPart, pMes,
  pAno: String): String;
begin
  result := 'DELETE FROM "CTE_EMIT" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_REM" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_EXT" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_RECEB" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_DEST" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_IMPOSTOS" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");' + slineBreak +

            'DELETE FROM "CTE_DOC" NP WHERE EXISTS (SELECT N."ID" '+
            'FROM "CTE" N WHERE N."COD_EMP" = ' + QuotedStr(pCodPart) + ' ' +
            'AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno + ' ' +
            'AND N."ID" = NP."IDCTE");';
end;

function TDMImportacaoXML.GetSQLDeleteLoteImportacaoXML(
  const pModeloXML: TFinalidadeTela; pDataImportacaoLoteXML: TDateTime): String;
var
  vDataHoraImportacao : String;
begin
  vDataHoraImportacao := FormatDateTime('YYYY-MM-DD HH:MM:SS',pDataImportacaoLoteXML);
  vDataHoraImportacao := vDataHoraImportacao.QuotedString;

  if pModeloXML =  ftImportarNFe then
    result := GetSQLDeleteNFImportacaoXML(vDataHoraImportacao)
  else
    result := GetSQLDeleteCTeImportacaoXML(vDataHoraImportacao);

  CopyQuery(result);

end;

function TDMImportacaoXML.GetSQLDeleteNF(const pCodPart,pMes,pAno : String):String;
begin
  result := 'DELETE FROM "NF" WHERE "COD_EMP" = ' + QuotedStr(pCodPart) +
            ' AND "MES" = ' + pMes + ' AND "ANO" = ' + pAno;
end;

function TDMImportacaoXML.GetSQLDeleteDetalhesCTe(const pIDCte: String): String;
begin
  result := 'DELETE FROM "CTE_EMIT" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_REM" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_EXT" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_RECEB" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_DEST" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_IMPOSTOS" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';' + slineBreak +

             'DELETE FROM "CTE_DOC" WHERE "IDCTE" = ' +
             QuotedStr(pIDCte) + ';';
end;

function TDMImportacaoXML.GetSQLDeleteNFImportacaoXML(
  const pDataHoraImportacaoXML: String): String;
begin
  result := 'DELETE FROM "NF_ITENS" WHERE "IDNF" IN '+
            ' ( ' +
            '   SELECT "ID" FROM "NF" ' +
            '   WHERE TO_CHAR("DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML +
            ' ); ' + slineBreak +
            'DELETE FROM "NF" WHERE TO_CHAR("DT_IMPORTACAO_XML",''YYYY-MM-DD HH24:MI:SS'') = ' + pDataHoraImportacaoXML + ' ; ';
end;

function TDMImportacaoXML.GetEmpresa(pQryEmpresa : TFDQuery ; ACodigo: String): Boolean;
begin
  pQryEmpresa.Close;
  pQryEmpresa.Params[0].AsString := ACodigo;
  pQryEmpresa.Open;
  Result  := not (pQryEmpresa.IsEmpty);
end;

procedure TDMImportacaoXML.AddCadastroEmpresa(pQryCadEmpresa : TFDQuery; pCodEmpresa, pEmpresa: String; pDataCadastro : TDateTime);
begin
  if not pQryCadEmpresa.Active then
  pQryCadEmpresa.Open;

  with pQryCadEmpresa do
  begin
    Insert;
    FieldByName('COD_EMP').AsString       := pCodEmpresa;
    FieldByName('EMPRESA').AsString       := pEmpresa;
    FieldByName('DT_CADASTRO').AsDateTime := pDataCadastro;
    Post;
  end;

end;

end.
