unit HLApp;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TApp = class
    public const version: String = 'Pre-1.0.0 ' + {$I %DATE%} + ' ' + {$I %TIME%};
  end;

var
  App: TApp;

implementation

{------------------------------------------------------------------------------}

{ Lifecycle management }

initialization
begin
  App := TApp.Create;
end;

finalization
begin
  FreeAndNil(App);
end;

end.

