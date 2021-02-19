unit uSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, AdvSmoothPanel, Vcl.ComCtrls;

type
  TFrmSplash = class(TForm)
    AdvPanelGeral: TAdvSmoothPanel;
    Timer1: TTimer;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ImgLogo: TImage;
    lblTitulo: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    AdvSmoothPanel2: TAdvSmoothPanel;
    PnlFooter: TAdvSmoothPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}

procedure TFrmSplash.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 20;

  if ProgressBar1.Position >= 100 then
  Close;
end;

end.
