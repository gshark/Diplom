program problemA;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var n,k:integer;

  begin
    read(k);
    while (k mod 10=0) do begin
    k:=k div 10;
    end;
    n:=0;
    while( k>0) do begin
    if( k mod 10=0) then
    n:=n+1;
    k:= k div 10;
    end;
    writeln(n);
    end.

