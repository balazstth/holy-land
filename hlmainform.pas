unit HLMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  HLApp, HLUtils;

type

  { TMainForm }

  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    MenuItemToggleFullscreen: TMenuItem;
    MenuItemOptions: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemExit: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemOptionsClick(Sender: TObject);
    procedure MenuItemToggleFullscreenClick(Sender: TObject);
    procedure MenuItemHelpClick(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Width  := ScaleFormValue(Self, Screen.Width  * 0.8);
  Height := ScaleFormValue(Self, Screen.Height * 0.8);
  Left   := ScaleFormValue(Self, Screen.Width  * 0.1);
  Top    := ScaleFormValue(Self, Screen.Height * 0.1);
end;

procedure TMainForm.MenuItemOptionsClick(Sender: TObject);
begin

end;

procedure TMainForm.MenuItemToggleFullscreenClick(Sender: TObject);
begin
  if WindowState <> wsMaximized then
    WindowState := wsMaximized
  else
    WindowState := wsNormal;
end;

procedure TMainForm.MenuItemHelpClick(Sender: TObject);
begin

end;

procedure TMainForm.MenuItemAboutClick(Sender: TObject);
begin
  ShowMessage('Welcome to the Holy Land again,' + sLineBreak
    + 'after so many years.' + sLineBreak  + sLineBreak
    + 'Version ' + App.version + sLineBreak + sLineBreak
    + 'Copyright © 2019 Aladar International' + sLineBreak
    + 'No warranty.');
end;

procedure TMainForm.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

end.

