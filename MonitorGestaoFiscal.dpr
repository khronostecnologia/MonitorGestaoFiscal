program MonitorGestaoFiscal;

uses
  Vcl.Forms,
  Midas,
  SysUtils,
  uMenu in 'Units\uMenu.pas' {FrmMenu},
  uDMBase in 'Dao\uDMBase.pas' {DMBase: TDataModule},
  uMensagem in '..\Util\uMensagem.pas' {FrmMensagem},
  Configuracoes in '..\Util\Configuracoes.pas',
  Configuracoes.Monitor.GestaoFiscal in 'Classes\Configuracoes.Monitor.GestaoFiscal.pas',
  BiblKhronos in '..\Util\BiblKhronos.pas',
  uArquivo in '..\Util\uArquivo.pas',
  uDMImportacaoXML in '..\KhronosXAccounting\Dao\uDMImportacaoXML.pas' {DMImportacaoXML: TDataModule},
  uImportacaoXML in '..\KhronosXAccounting\Units\uImportacaoXML.pas',
  uMaster in '..\Heranca\View\uMaster.pas' {FrmMaster},
  uGenerico in '..\Util\uGenerico.pas',
  uLog in '..\Util\uLog.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenu, FrmMenu);
  FrmMensagem   := TFrmMensagem.Create(nil);
  dmPrincipal   := TDMBase.create(nil);

  ConfiguracoesMonitorGestaoFiscal             := TConfiguracoesMonitorGestaoFiscal.Create;
  ConfiguracoesMonitorGestaoFiscal.DirApp      := ExtractFilePath(application.exeName);
  ConfiguracoesMonitorGestaoFiscal.DirRaizApp  := ConfiguracoesMonitorGestaoFiscal.DirApp.Replace('Aplicacoes\','').Trim;

  try
    dmPrincipal.ConectaBanco(ConfiguracoesMonitorGestaoFiscal.DirApp);
    ConfiguracoesMonitorGestaoFiscal.DirImportacaoXML    := dmPrincipal.BancoExec.Params[8].Replace('DirImportacao=','').Trim;
    ConfiguracoesMonitorGestaoFiscal.DirImportadosXML    := dmPrincipal.BancoExec.Params[9].Replace('DirImportadas=','').Trim;
    ConfiguracoesMonitorGestaoFiscal.TempoVerificacaoXML := dmPrincipal.BancoExec.Params[10].Replace('TempoVerificacaoXML(segundos)=','').Trim.ToInteger;
  except
    On e: exception do
    begin
      FrmMensagem.Informacao('Erro : ' + e.message + ' ao tentar conectar ' +
                             'no banco de dados.');
      Application.terminate;
    end;
  end;

  Application.Run;
end.

finalization
FreeAndNil(FrmMensagem);
FreeAndNil(ConfiguracoesMonitorGestaoFiscal);
FreeAndNil(dmPrincipal);
