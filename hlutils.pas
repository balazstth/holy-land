{─────────────────────────────────────────────────────────────────────
  Holy Land - A Pascal Project - Utility Functions
  Copyright (c) 2019 Tóth Balázs Aladár
  No warranty.
─────────────────────────────────────────────────────────────────────}

unit HLUtils;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms;

function ScaleFormValue(Form: TForm; Value: Longint): Longint;
function ScaleFormValue(Form: TForm; Value: Real): Longint;

implementation

function ScaleFormValue(Form: TForm; Value: Longint): Longint;
var
  Factor: Real;
begin
  if Form.PixelsPerInch = Screen.PixelsPerInch then
  begin
    Result := Value;
    Exit;
  end;

  Factor := Form.PixelsPerInch / Screen.PixelsPerInch;
  Result := Round(Value * Factor);
end;

function ScaleFormValue(Form: TForm; Value: Real): Longint;
var
  Factor: Real;
begin
  if Form.PixelsPerInch = Screen.PixelsPerInch then
  begin
    Result := Round(Value);
    Exit;
  end;

  Factor := Form.PixelsPerInch / Screen.PixelsPerInch;
  Result := Round(Value * Factor);
end;

end.

