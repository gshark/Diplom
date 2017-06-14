program Project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  k, x, beauty : integer;
begin
  read(k);
  while (k mod 10 = 0) do k := k div 10;
  while (k <> 0) do
    begin
        x := k mod 10;
        k := (k-x) div 10;
        if (x = 0) then inc(beauty);
    end;
  write(beauty);
readln;
readln;
end.

