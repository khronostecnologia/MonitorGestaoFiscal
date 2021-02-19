program MonitorGestaoFiscal;

uses
  Vcl.Forms,
  Midas,
  SysUtils,
  uMenu in 'Units\uMenu.pas' {FrmMenu},
  BiblKhronos in '..\..\Util\trunk\BiblKhronos.pas',
  uDMBase in 'Dao\uDMBase.pas' {DMBase: TDataModule},
  uMensagem in '..\..\Util\trunk\uMensagem.pas' {FrmMensagem},
  Configuracoes in '..\..\Util\trunk\Configuracoes.pas',
  Configuracoes.Monitor.GestaoFiscal in 'Classes\Configuracoes.Monitor.GestaoFiscal.pas';

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
