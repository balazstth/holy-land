unit HLNotepad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, IniPropStorage,
  HLUtils;

type

  { TNotepad }

  TNotepad = class(TForm)
    SessionIniPropStorage: TIniPropStorage;
    procedure SetDefaults(Sender: TObject);
  private

  public

  end;

var
  Notepad: TNotepad;

implementation

{$R *.lfm}

procedure TNotepad.SetDefaults(Sender: TObject);
begin
  // Default window properties
  WindowState := wsNormal;
  Width  := ScaleFormValue(Self, Screen.WorkAreaWidth  * 0.6);
  Height := ScaleFormValue(Self, Screen.WorkAreaHeight * 0.6);
  Left   := ScaleFormValue(Self, Screen.WorkAreaWidth  * 0.2);
  Top    := ScaleFormValue(Self, Screen.WorkAreaHeight * 0.2);
end;

end.

