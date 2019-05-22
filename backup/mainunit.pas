unit MainUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  AppUnit;

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
var
  Screen: TScreen;
begin
  Screen := TScreen.Create(nil);
  try
    Width   := Screen.Width  * 8 div 10;
    Height  := Screen.Height * 8 div 10;
    Left    := Screen.Width  div 10;
    Top     := Screen.Height div 10;
    Visible := true;
  finally
    FreeAndNil(Screen);
  end;
end;

procedure TMainForm.MenuItemOptionsClick(Sender: TObject);
begin

end;

procedure TMainForm.MenuItemToggleFullscreenClick(Sender: TObject);
begin
  if WindowState <> wsMaximized then
  begin
    WindowState := wsMaximized;
    // TMainForm.MenuItemFullscreen.Caption = 'Normal window';
  end
  else
  begin
    WindowState := wsNormal;
    // TMainForm.MenuItemFullscreen.Caption = 'Fullscreen window';
  end;
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

