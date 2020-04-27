object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Clientes'
  ClientHeight = 509
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 490
    Width = 863
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Sistema de Gerenciamento de Clientes'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = 'Desenvolvido por J'#243'vio'
        Width = 200
      end
      item
        Alignment = taCenter
        Text = 'Usu'#225'rio - J'#243'vio'
        Width = 200
      end
      item
        Text = 'Data'
        Width = 250
      end
      item
        Text = 'Hora'
        Width = 50
      end>
    ExplicitLeft = 664
    ExplicitTop = 504
    ExplicitWidth = 0
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 863
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 320
    ExplicitTop = 56
    ExplicitWidth = 185
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 96
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 376
  end
end
