unit AppUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TApp = class
    public const version: String = {$I %DATE%} + ' ' + {$I %TIME%};
    constructor Create;
  end;

var
  App: TApp;

implementation

constructor TApp.Create;
begin

end;

initialization
begin
  App := TApp.Create;
end;

finalization
begin
  FreeAndNil(App);
end;

end.

