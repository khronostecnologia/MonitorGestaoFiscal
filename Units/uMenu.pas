unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothPanel, Vcl.Menus, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, AdvGlowButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.PG, Data.DB, FireDAC.Comp.DataSet, AdvGroupBox,Vcl.AppEvnts,
  frxClass,frxExportBaseDialog,frxExportPDF, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFrmMenu = class(TForm)
    PnlGeral: TAdvSmoothPanel;
    PnlAtalhos: TAdvSmoothPanel;
    PnlFooter: TAdvSmoothPanel;
    lblTitulo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Image1: TImage;
    AdvSmoothPanel1: TAdvSmoothPanel;
    Label1: TLabel;
    Image2: TImage;
    Label6: TLabel;
    MemMonitor: TMemo;
    ImgConfig: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImgConfigClick(Sender: TObject);
  private
    { Private declarations }
    FTimer : TTimer;
    procedure MostrarDisplay(const pTexto : String);
    procedure ZerarDisplay;
    procedure VerificarFilaImportacao(Sender : TObject);
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}


{ TFrmMenu }

Uses BiblKhronos,Configuracoes.Monitor.GestaoFiscal,uMensagem;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  FTimer := TTimer.Create(nil);
end;

procedure TFrmMenu.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FTimer);
end;

procedure TFrmMenu.FormShow(Sender: TObject);
var
  vDataHora         : String;
  vTextoDisplay     : String;
begin
  Self.Caption      := 'MonitorGestãoFiscal v' + GetVersaoExe + ' | ' + Name;
  vDataHora         := FormatDateTime('dd/mm/yyyy hh:mm:ss',now);
  vTextoDisplay     := vDataHora + ' - Monitor iniciado.';

  ZerarDisplay;
  MostrarDisplay(vTextoDisplay);

  FTimer.Interval   := ConfiguracoesMonitorGestaoFiscal.TempoVerificacaoXML * 1000;
  FTimer.OnTimer    := VerificarFilaImportacao;
  FTimer.Enabled    := True;
end;

procedure TFrmMenu.ImgConfigClick(Sender: TObject);
begin
  try
    FrmMensagem.MostraMensagem('Carregando arquivo .ini...');
    ConfiguracoesMonitorGestaoFiscal.AbrirIni;
  finally
    FrmMensagem.FechaMensagem;
  end;
end;

procedure TFrmMenu.MostrarDisplay(const pTexto: String);
begin
  MemMonitor.Lines.Add(pTexto + slineBreak);
  Application.ProcessMessages;
end;

procedure TFrmMenu.VerificarFilaImportacao(Sender : TObject);
var
  vEncontrouXML : Boolean;
  vNumeroDeXML  : Integer;
begin
  vEncontrouXML := False;
  try
    MostrarDisplay(FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + ' - Procurando xml na pasta ' + ConfiguracoesMonitorGestaoFiscal.DirImportacaoXML + ' ...');
  finally
    if vEncontrouXML then
      MostrarDisplay(FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) +' - Importado(s) ' + vNumeroDeXML.ToString + ' xml(s).')
    else
      MostrarDisplay(FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) +' - não encontrado XML a importar na pasta ' + ConfiguracoesMonitorGestaoFiscal.DirImportacaoXML + '.');
  end;
end;

procedure TFrmMenu.ZerarDisplay;
begin
  MemMonitor.Lines.Clear;
end;

end.
