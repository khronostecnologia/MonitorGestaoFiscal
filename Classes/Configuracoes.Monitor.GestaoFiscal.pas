unit Configuracoes.Monitor.GestaoFiscal;

interface

Uses Configuracoes,BiblKhronos,Windows,ShellApi;

Const cDirNaoConfigurado = 'Diretório não configurado no .ini';

type
  TConfiguracoesMonitorGestaoFiscal = class(TConfiguracoes)
  private
    FDirImportadosXML: String;
    FDirImportacaoXML: String;
    FTempoVerificacaoXML: Byte;
    procedure SetDirImportacaoXML(const Value: String);
    procedure SetDirImportadosXML(const Value: String);
    function GetDirImportacaoXML : String;
    function GetDirImportadosXML : String;
    procedure SetTempoVerificacaoXML(const Value: Byte);
  public
    property DirImportacaoXML : String read GetDirImportacaoXML write SetDirImportacaoXML;
    property DirImportadosXML : String read GetDirImportadosXML write SetDirImportadosXML;
    property TempoVerificacaoXML : Byte read FTempoVerificacaoXML write SetTempoVerificacaoXML;
    procedure AbrirIni;
  end;

var
  ConfiguracoesMonitorGestaoFiscal : TConfiguracoesMonitorGestaoFiscal;

implementation

{ TConfiguracoesMonitorGestaoFiscal }

procedure TConfiguracoesMonitorGestaoFiscal.AbrirIni;
begin
  ShellExecute(0, 'open',PWideChar(DirApp + 'Config.ini'), nil, nil, SW_SHOWNORMAL) ;
end;

function TConfiguracoesMonitorGestaoFiscal.GetDirImportacaoXML: String;
begin
  Result := iif(FDirImportacaoXML = '',cDirNaoConfigurado,FDirImportacaoXML);
end;

function TConfiguracoesMonitorGestaoFiscal.GetDirImportadosXML: String;
begin
  Result := iif(FDirImportadosXML = '',cDirNaoConfigurado,FDirImportadosXML);
end;

procedure TConfiguracoesMonitorGestaoFiscal.SetDirImportacaoXML(
  const Value: String);
begin
  FDirImportacaoXML := Value;
end;

procedure TConfiguracoesMonitorGestaoFiscal.SetDirImportadosXML(
  const Value: String);
begin
  FDirImportadosXML := Value;
end;

procedure TConfiguracoesMonitorGestaoFiscal.SetTempoVerificacaoXML(
  const Value: Byte);
begin
  {Tempo em segundos para ser usado no timer}
  FTempoVerificacaoXML := Value;
end;

end.
