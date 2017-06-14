program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n,k:integer;

begin
  read(n);
  k:=0;
  while n mod 10 = 0 do n:=n div 10;
  while n<>0 do begin
    if n mod 10=0 then k:=k+1;
    n:=n div 10;
  end;
  write(k);
  readln;
  readln;
end.

