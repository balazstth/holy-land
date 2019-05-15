unit MainUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { TMainForm }

  TMainForm = class(TForm)
    MainMenu: TMainMenu;
    MenuItemFile: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    MenuItemExit: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItemHelpClick(Sender: TObject);
    procedure MenuItemAboutClick(Sender: TObject);
    procedure MenuItemExitClick(Sender: TObject);
  private

  public

  end;

const
  version: String = '0.01';

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin

end;

procedure TMainForm.MenuItemHelpClick(Sender: TObject);
begin

end;

procedure TMainForm.MenuItemAboutClick(Sender: TObject);
begin
  ShowMessage('Welcome to the Holy Land again,' + sLineBreak
    + 'after so many years.' + sLineBreak  + sLineBreak
    + 'Version ' + version + ' ' + sLineBreak + sLineBreak
    + 'Copyright © 2019 Aladar International' + sLineBreak
    + 'No warranty.');
end;

procedure TMainForm.MenuItemExitClick(Sender: TObject);
begin
  Close;
end;

end.

