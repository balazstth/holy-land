unit HLMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, IniPropStorage,
  HLApp, HLUtils;

type

  { TMainForm }

  TMainForm = class(TForm)
    SessionIniPropStorage: TIniPropStorage;
    MainMenu: TMainMenu;
    MenuItemFile: TMenuItem;
    MenuItemExit: TMenuItem;
    MenuItemGames: TMenuItem;
    MenuItemTetris: TMenuItem;
    MenuItemOptions: TMenuItem;
    MenuItemWindowDefaults: TMenuItem;
    MenuItemToggleFullscreen: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
    procedure MenuItemTetrisClick(Sender: TObject);
    procedure MenuItemWindowDefaultsClick(Sender: TObject);
    procedure MenuItemToggleFullscreenClick(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
  private
    procedure SetDefaults(Sender: TObject);
  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

{------------------------------------------------------------------------------}

{ Init }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetDefaults(Sender);
end;

{------------------------------------------------------------------------------}

{ Menu item handlers }

{ File }

procedure TMainForm.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

{ Games }

procedure TMainForm.MenuItemTetrisClick(Sender: TObject);
begin
  ShowMessage('Tetris coming up.');
  // TODO
end;

{ Options }

procedure TMainForm.MenuItemWindowDefaultsClick(Sender: TObject);
begin
  SetDefaults(Sender);
end;

procedure TMainForm.MenuItemToggleFullscreenClick(Sender: TObject);
begin
  if WindowState <> wsMaximized then
    WindowState := wsMaximized
  else
    WindowState := wsNormal;
end;

{ Help }

procedure TMainForm.MenuItemAboutClick(Sender: TObject);
begin
  ShowMessage('Welcome to the Holy Land again,' + sLineBreak
    + 'after so many years.' + sLineBreak  + sLineBreak
    + 'Version ' + App.version + sLineBreak + sLineBreak
    + 'Copyright © 2019 Aladar International' + sLineBreak
    + 'No warranty.');
end;

{------------------------------------------------------------------------------}

{ Private }

procedure TMainForm.SetDefaults(Sender: TObject);
begin
  // Default window properties
  WindowState := wsNormal;
  Width  := ScaleFormValue(Self, Screen.WorkAreaWidth  * 0.8);
  Height := ScaleFormValue(Self, Screen.WorkAreaHeight * 0.8);
  Left   := ScaleFormValue(Self, Screen.WorkAreaWidth  * 0.1);
  Top    := ScaleFormValue(Self, Screen.WorkAreaHeight * 0.1);
end;

end.

