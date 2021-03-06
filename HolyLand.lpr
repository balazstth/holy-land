{─────────────────────────────────────────────────────────────────────
  Holy Land - A Pascal Project
  Copyright (c) 2019 Tóth Balázs Aladár
  No warranty.
─────────────────────────────────────────────────────────────────────}

program HolyLand;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, HLMainForm, HLNotepad
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNotepad, Notepad);
  Application.Run;
end.

