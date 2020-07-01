object Form1: TForm1
  Left = 830
  Top = 297
  Width = 505
  Height = 402
  Caption = 'Windows API'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  DesignSize = (
    489
    363)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelFindWindowTitle: TLabel
    Left = 8
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Find Window by Title'
  end
  object LabelWindowHandle: TLabel
    Left = 8
    Top = 112
    Width = 76
    Height = 13
    Caption = 'Window Handle'
  end
  object LabelWindowHandleText: TLabel
    Left = 216
    Top = 112
    Width = 265
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
  end
  object LabelSetWindowText: TLabel
    Left = 8
    Top = 248
    Width = 81
    Height = 13
    Caption = 'Set Window Title'
  end
  object LabelSendMessage: TLabel
    Left = 8
    Top = 296
    Width = 71
    Height = 13
    Caption = 'Send Message'
  end
  object LabelSendMessageMsg: TLabel
    Left = 8
    Top = 318
    Width = 20
    Height = 13
    Caption = 'Msg'
  end
  object LabelSendMessageWParam: TLabel
    Left = 126
    Top = 318
    Width = 38
    Height = 13
    Caption = 'wParam'
  end
  object LabelSendMessageLParam: TLabel
    Left = 268
    Top = 318
    Width = 32
    Height = 13
    Caption = 'lParam'
  end
  object EditFindWindowTitle: TEdit
    Left = 8
    Top = 27
    Width = 393
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object ButtonFindWindowTitle: TButton
    Left = 408
    Top = 24
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Find'
    TabOrder = 1
    OnClick = ButtonFindWindowTitleClick
  end
  object EditWindowHandle: TEdit
    Left = 88
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '$00000000'
  end
  object ButtonWindowHide: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Hide'
    TabOrder = 4
    OnClick = ButtonWindowHideClick
  end
  object ButtonWindowShow: TButton
    Left = 88
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 5
    OnClick = ButtonWindowShowClick
  end
  object ButtonWindowDisable: TButton
    Left = 168
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Disable'
    TabOrder = 6
    OnClick = ButtonWindowDisableClick
  end
  object ButtonWindowEnable: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Enable'
    TabOrder = 7
    OnClick = ButtonWindowEnableClick
  end
  object ButtonWindowClose: TButton
    Left = 328
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 8
    OnClick = ButtonWindowCloseClick
  end
  object ButtonWindowDestroy: TButton
    Left = 408
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Destroy'
    TabOrder = 9
    OnClick = ButtonWindowDestroyClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 344
    Width = 489
    Height = 19
    Panels = <>
  end
  object EditSetWindowText: TEdit
    Left = 8
    Top = 267
    Width = 393
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 12
  end
  object ButtonSetWindowText: TButton
    Left = 406
    Top = 264
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Set'
    TabOrder = 13
    OnClick = ButtonSetWindowTextClick
  end
  object ButtonFindWindowWithMouse: TButton
    Left = 8
    Top = 64
    Width = 474
    Height = 25
    Caption = 'Find Window with Mouse Hover and Wait for 2 seconds'
    TabOrder = 2
    OnClick = ButtonFindWindowWithMouseClick
  end
  object ButtonSendMessage: TButton
    Left = 406
    Top = 312
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Send'
    TabOrder = 17
    OnClick = ButtonSendMessageClick
  end
  object EditSendMessageMsg: TEdit
    Left = 32
    Top = 315
    Width = 81
    Height = 21
    TabOrder = 14
    Text = '$00000000'
  end
  object EditSendMessageWParam: TEdit
    Left = 168
    Top = 315
    Width = 81
    Height = 21
    TabOrder = 15
    Text = '$00000000'
  end
  object EditSendMessageLParam: TEdit
    Left = 304
    Top = 315
    Width = 81
    Height = 21
    TabOrder = 16
    Text = '$00000000'
  end
  object ButtonMessageWmClose: TButton
    Left = 6
    Top = 176
    Width = 75
    Height = 25
    Caption = 'WM_CLOSE'
    TabOrder = 10
    OnClick = ButtonMessageWmCloseClick
  end
  object ButtonMessageWmQuit: TButton
    Left = 86
    Top = 176
    Width = 75
    Height = 25
    Caption = 'WM_QUIT'
    TabOrder = 11
    OnClick = ButtonMessageWmQuitClick
  end
  object ButtonMessageWmNcDestroy: TButton
    Left = 166
    Top = 176
    Width = 115
    Height = 25
    Caption = 'WM_NCDESTROY'
    TabOrder = 19
    OnClick = ButtonMessageWmNcDestroyClick
  end
  object ButtonMessageWmKillFocus: TButton
    Left = 286
    Top = 176
    Width = 99
    Height = 25
    Caption = 'WM_KILLFOCUS'
    TabOrder = 20
    OnClick = ButtonMessageWmKillFocusClick
  end
  object ButtonSendMessageWmCommand: TButton
    Left = 391
    Top = 176
    Width = 92
    Height = 25
    Caption = 'WM_COMMAND'
    TabOrder = 21
    OnClick = ButtonSendMessageWmCommandClick
  end
  object ButtonSendMessageWmDestroy: TButton
    Left = 6
    Top = 208
    Width = 91
    Height = 25
    Caption = 'WM_DESTROY'
    TabOrder = 22
    OnClick = ButtonSendMessageWmDestroyClick
  end
  object ButtonSendMessageWmTimeNotify: TButton
    Left = 102
    Top = 208
    Width = 267
    Height = 25
    Caption = 'WM_IME_NOTIFY IMN_CLOSESTATUSWINDOW'
    TabOrder = 23
    OnClick = ButtonSendMessageWmTimeNotifyClick
  end
  object TimerFindWindowWithMouse: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerFindWindowWithMouseTimer
    Left = 456
    Top = 104
  end
end
