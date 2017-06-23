unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, XPMan;

type
  TFPrincipal = class(TForm)
    BCadaClien: TButton;
    BExecBack: TButton;
    Button3: TButton;
    EBase: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    SBLoca: TSpeedButton;
    BCone: TBitBtn;
    Panel1: TPanel;
    EServ: TEdit;
    Label2: TLabel;
    XPManifest1: TXPManifest;
    procedure Button3Click(Sender: TObject);
    procedure SBLocaClick(Sender: TObject);
    procedure BConeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BExecBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

uses GerarBackup, DataModule, IBDatabase;

{$R *.dfm}

procedure TFPrincipal.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.SBLocaClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    EBase.Text:=OpenDialog1.FileName;
end;

procedure TFPrincipal.BConeClick(Sender: TObject);

procedure Status(Conectar: Boolean);
begin
  Label2.Enabled:=not Conectar;
  Label1.Enabled:=not Conectar;
  EBase.Enabled:=not Conectar;
  EServ.Enabled:=not Conectar;
  SBLoca.Enabled:=not Conectar;
  BCadaClien.Enabled:=Conectar;
  BExecBack.Enabled:=Conectar;
  if Conectar then
    BCone.Caption:='Desconectar'
  else
    BCone.Caption:='Conectar'
end;

begin
  if DMBanco.IBDB.Connected then
  begin
    DMBanco.IBDB.Connected:=False;
    Status(False);
    Exit;
  end;
  if EServ.Text='' then
  begin
    Application.MessageBox('Informe o nome do servidor.', 'Aviso', 48);
    EServ.SetFocus;
  end
  else if EBase.Text='' then
  begin
    Application.MessageBox('Informe o caminho do banco de dados.', 'Aviso', 48);
    EBase.SetFocus;
  end
  else
  begin
    with DMBanco.IBDB do
    begin
      DatabaseName:=EServ.Text+':'+EBase.Text;
      Connected:=True;
      if Connected then
        Status(True)
      else
        Application.MessageBox('N�o foi poss�vel conectar ao banco de dados.', 'Aviso', 48);
    end;
  end;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin

  DMBanco.IBDB.Params.Clear;
  DMBanco.IBDB.Params.Add('user_name=SYSDBA');
  DMBanco.IBDB.Params.Add('password=masterkey');
  DMBanco.IBDB.Params.Add('lc_ctype=WIN1252');
end;

procedure TFPrincipal.BExecBackClick(Sender: TObject);
begin
  FGerarBackup.ShowModal;
end;

end.
