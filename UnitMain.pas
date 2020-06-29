unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    LabelFindWindowTitle: TLabel;
    EditFindWindowTitle: TEdit;
    ButtonFindWindowTitle: TButton;
    LabelWindowHandle: TLabel;
    EditWindowHandle: TEdit;
    LabelWindowHandleText: TLabel;
    ButtonWindowHide: TButton;
    ButtonWindowShow: TButton;
    ButtonWindowDisable: TButton;
    ButtonWindowEnable: TButton;
    ButtonWindowClose: TButton;
    ButtonWindowDestroy: TButton;
    StatusBar: TStatusBar;
    LabelSetWindowText: TLabel;
    EditSetWindowText: TEdit;
    ButtonSetWindowText: TButton;
    ButtonFindWindowWithMouse: TButton;
    TimerFindWindowWithMouse: TTimer;
    LabelSendMessage: TLabel;
    ButtonSendMessage: TButton;
    EditSendMessageMsg: TEdit;
    LabelSendMessageMsg: TLabel;
    EditSendMessageWParam: TEdit;
    LabelSendMessageWParam: TLabel;
    EditSendMessageLParam: TEdit;
    LabelSendMessageLParam: TLabel;
    ButtonMessageWmClose: TButton;
    ButtonMessageWmQuit: TButton;
    procedure ButtonFindWindowTitleClick(Sender: TObject);
    procedure ButtonWindowHideClick(Sender: TObject);
    procedure ButtonWindowShowClick(Sender: TObject);
    procedure ButtonWindowDisableClick(Sender: TObject);
    procedure ButtonWindowEnableClick(Sender: TObject);
    procedure ButtonWindowCloseClick(Sender: TObject);
    procedure ButtonWindowDestroyClick(Sender: TObject);
    procedure ButtonSetWindowTextClick(Sender: TObject);
    procedure ButtonFindWindowWithMouseClick(Sender: TObject);
    procedure TimerFindWindowWithMouseTimer(Sender: TObject);
    procedure ButtonSendMessageClick(Sender: TObject);
    procedure ButtonMessageWmCloseClick(Sender: TObject);
    procedure ButtonMessageWmQuitClick(Sender: TObject);
  private
    SetHandleLast: HWND;
    SetHandleCount: Integer;
    procedure SetHandle(handle: HWND);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SetHandle(handle: HWND);
var
  title: String;
  titleLength: Integer;
begin
  EditWindowHandle.Text := '$' + IntToHex(handle, 8);
  if (handle > 0) then begin
    titleLength := GetWindowTextLength(handle);
    SetLength(title, titleLength);
    GetWindowText(handle, PChar(title), titleLength + 1);
    title := PChar(title);
    LabelWindowHandleText.Caption := 'Title: ' + title;
  end
  else begin
    LabelWindowHandleText.Caption := '';
  end;
end;

procedure TForm1.ButtonFindWindowTitleClick(Sender: TObject);
var
  title: String;
  handle: HWND;
begin
  title := EditFindWindowTitle.Text;
  handle := FindWindow(nil, PAnsiChar(title));
  EditWindowHandle.Text := '$' + IntToHex(handle, 8);
  StatusBar.SimpleText := 'WinApi Call Result: ' + IntToStr(handle);
  SetHandle(handle);
end;

procedure TForm1.ButtonWindowHideClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(ShowWindow(StrToInt(EditWindowHandle.Text), SW_HIDE), true);
end;

procedure TForm1.ButtonWindowShowClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(ShowWindow(StrToInt(EditWindowHandle.Text), SW_SHOW), true);
end;

procedure TForm1.ButtonWindowDisableClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(EnableWindow(StrToInt(EditWindowHandle.Text), false), true);
end;

procedure TForm1.ButtonWindowEnableClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(EnableWindow(StrToInt(EditWindowHandle.Text), true), true);
end;

procedure TForm1.ButtonWindowCloseClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(CloseWindow(StrToInt(EditWindowHandle.Text)), true);
end;

procedure TForm1.ButtonWindowDestroyClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(DestroyWindow(StrToInt(EditWindowHandle.Text)), true);
end;

procedure TForm1.ButtonSetWindowTextClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: ' +
    BoolToStr(
      SetWindowText(
        StrToInt(EditWindowHandle.Text),
        PAnsiChar(EditSetWindowText.Text)), true);
end;

procedure TForm1.ButtonFindWindowWithMouseClick(Sender: TObject);
begin
  SetHandleLast := 0;
  SetHandleCount := 0;
  TimerFindWindowWithMouse.Enabled := true;
end;

procedure TForm1.TimerFindWindowWithMouseTimer(Sender: TObject);
var
  handle: HWND;
begin
  handle := WindowFromPoint(Mouse.CursorPos);
  SetHandle(handle);

  if (SetHandleLast = handle) then begin
    SetHandleCount := SetHandleCount + 1;
    TimerFindWindowWithMouse.Enabled := SetHandleCount < (2000 / TimerFindWindowWithMouse.Interval);
  end
  else begin
    SetHandleLast := handle;
    SetHandleCount := 0;
  end;

  StatusBar.SimpleText := 'Find with mouse hover: ' +
    BoolToStr(TimerFindWindowWithMouse.Enabled, true);
end;

procedure TForm1.ButtonSendMessageClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: $' +
    IntToHex(SendMessage(
      StrToInt(EditWindowHandle.Text),
      StrToInt(EditSendMessageMsg.Text),
      StrToInt(EditSendMessageWParam.Text),
      StrToInt(EditSendMessageLParam.Text)), 8);
end;

procedure TForm1.ButtonMessageWmCloseClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: $' +
    IntToHex(SendMessage(StrToInt(EditWindowHandle.Text), WM_CLOSE, 0, 0), 8);
end;

procedure TForm1.ButtonMessageWmQuitClick(Sender: TObject);
begin
  StatusBar.SimpleText := 'WinApi Call Result: $' +
    IntToHex(SendMessage(StrToInt(EditWindowHandle.Text), WM_QUIT, 0, 0), 8);
end;

end.
