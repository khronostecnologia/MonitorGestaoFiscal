unit uDMBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client,Vcl.Forms, FireDAC.Comp.UI, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Moni.Base, FireDAC.Moni.FlatFile,
  Vcl.Dialogs;

type
  TDMBase = class(TDataModule)
    DB: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QryEmpresa: TFDQuery;
    QryEmpresaCOD_EMP: TStringField;
    QryEmpresaEMPRESA: TStringField;
    QryCadEmpresa: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    QryCadEmpresaDT_CADASTRO: TDateTimeField;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConectaBanco(const pDirArqConfigIni : String);
    function GetEmpresa(ACodigo : String):Boolean;
    function GetNomeArqLog : String;
    procedure AddCadastroEmpresa(pCodEmpresa, pEmpresa: String; pDataCadastro : TDateTime);
    procedure CancelarCadastroEmpresa;
    procedure GravaCadastroEmpresa;
    class var BancoExec : TFDConnection;
  end;

var
  dmPrincipal: TDMBase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Uses uMensagem,BiblKhronos;

procedure TDMBase.AddCadastroEmpresa(pCodEmpresa, pEmpresa: String; pDataCadastro : TDateTime);
begin
  if not QryCadEmpresa.Active then
  QryCadEmpresa.Open;

  with QryCadEmpresa do
  begin
    Insert;
    FieldByName('COD_EMP').AsString       := pCodEmpresa;
    FieldByName('EMPRESA').AsString       := pEmpresa;
    FieldByName('DT_CADASTRO').AsDateTime := pDataCadastro;
    Post;
  end;

end;

procedure TDMBase.CancelarCadastroEmpresa;
begin
  with QryCadEmpresa do
  begin
    if not active then
    exit;

    EmptyDataSet;
    Close;
  end;
end;

procedure TDMBase.ConectaBanco(const pDirArqConfigIni : String);
const
  cIdxDirImportacao = 8;
  cIdxDirImportadas = 9;
  cDirImportacao    = 'DirImportacao=';
  cDirImportadas    = 'DirImportadas=';
  cEmpty            = '';
begin
  try
    try
      with DB do
      begin

        with FormatOptions.MapRules.Add do
        begin
          SourceDataType  := dtWideString;
          TargetDataType  := dtAnsiString;
        end;

        with FormatOptions.MapRules.Add do
        begin
          SourceDataType := dtFmtBCD;
          TargetDataType := dtDouble;
        end;

        with FormatOptions.MapRules.Add do
        begin
          SourceDataType := dtBCD;
          TargetDataType := dtDouble;
        end;

        with FormatOptions.MapRules.Add do
        begin
          SourceDataType := dtDateTimeStamp;
          TargetDataType := dtDateTime;
        end;

        close;
        Params.Clear;
        Params.LoadFromFile(pDirArqConfigIni + 'Config.ini');
        Open;

        FormatOptions.OwnMapRules := true;

      end;
    except
      raise;
    end;
  finally
    BancoExec := DB;
  end;
end;

function TDMBase.GetEmpresa(ACodigo: String): Boolean;
begin
  QryEmpresa.Close;
  QryEmpresa.ParamByName('CODIGO').AsString := ACodigo;
  QryEmpresa.Open;
  Result  := not (QryEmpresa.IsEmpty);
end;

function TDMBase.GetNomeArqLog: String;
begin
  result := FormatDateTime('ddmmyyhhmmss',Now);
end;

procedure TDMBase.GravaCadastroEmpresa;
begin
  if QryCadEmpresa.UpdateStatus = usUnmodified then
  begin
    exit;
  end;

  with QryCadEmpresa do
  begin
    ApplyUpdates(-1);
    CommitUpdates;
  end;

end;

end.
