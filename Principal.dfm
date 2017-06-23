object FPrincipal: TFPrincipal
  Left = 292
  Top = 311
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Backup Softlogus'
  ClientHeight = 113
  ClientWidth = 334
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 8
    Width = 129
    Height = 13
    Caption = 'Caminho da base de dados'
  end
  object SBLoca: TSpeedButton
    Left = 304
    Top = 24
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SBLocaClick
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 13
    Caption = 'Servidor'
  end
  object BCadaClien: TButton
    Left = 344
    Top = 272
    Width = 105
    Height = 25
    Caption = 'Cadastro de clientes'
    Enabled = False
    TabOrder = 0
    Visible = False
  end
  object BExecBack: TButton
    Left = 8
    Top = 64
    Width = 105
    Height = 25
    Caption = 'Gerar backup'
    Enabled = False
    TabOrder = 1
    OnClick = BExecBackClick
  end
  object Button3: TButton
    Left = 144
    Top = 64
    Width = 73
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = Button3Click
  end
  object EBase: TEdit
    Left = 96
    Top = 24
    Width = 209
    Height = 21
    TabOrder = 3
    Text = 'Caminho do Banco'
  end
  object BCone: TBitBtn
    Left = 240
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 4
    OnClick = BConeClick
  end
  object Panel1: TPanel
    Left = 4
    Top = 56
    Width = 413
    Height = 2
    BevelOuter = bvLowered
    TabOrder = 5
  end
  object EServ: TEdit
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    TabOrder = 6
    Text = 'localhost'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'fdb'
    Filter = 
      'Base de dados do Firebird(*.fdb)|*.fdb|Base de dados do Interbas' +
      'e(*.gdb)|*.gdb|Todos os arquivos|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Localizar banco de dados'
    Left = 56
    Top = 360
  end
  object XPManifest1: TXPManifest
    Left = 64
    Top = 315
  end
end
