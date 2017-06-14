program d;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };


var
  n, k, sum:integer;
begin
  read(n, k);
  sum:=0;
  if n=2 then begin
    if 2 mod k = 0 then sum:=2;
  end;
  if n=3 then begin
    if 8 mod k = 0 then sum:=sum+2;
    if 9 mod k = 0 then sum:=sum+2;
    if 5 mod k = 0 then sum:=sum+2;
  end;
  if n=4 then begin
    if 12 mod k = 0 then sum:=sum+2;
    if 13 mod k = 0 then sum:=sum+4;
    if 15 mod k = 0 then sum:=sum+2;
    if 17 mod k = 0 then sum:=sum+4;
    if 18 mod k = 0 then sum:=sum+4;
    if 20 mod k = 0 then sum:=sum+2;
    if 22 mod k = 0 then sum:=sum+4;
    if 23 mod k = 0 then sum:=sum+2;
  end;
  if n=5 then begin
    if 22 mod k = 0 then sum:=sum+2;
    if 23 mod k = 0 then sum:=sum+4;
    if 25 mod k = 0 then sum:=sum+6;
    if 26 mod k = 0 then sum:=sum+2;
    if 27 mod k = 0 then sum:=sum+8;
    if 30 mod k = 0 then sum:=sum+8;
    if 31 mod k = 0 then sum:=sum+4;
    if 32 mod k = 0 then sum:=sum+8;
    if 33 mod k = 0 then sum:=sum+14;
    if 34 mod k = 0 then sum:=sum+6;
    if 35 mod k = 0 then sum:=sum+4;
    if 36 mod k = 0 then sum:=sum+4;
    if 37 mod k = 0 then sum:=sum+10;
    if 39 mod k = 0 then sum:=sum+8;
    if 40 mod k = 0 then sum:=sum+8;
    if 41 mod k = 0 then sum:=sum+4;
    if 43 mod k = 0 then sum:=sum+4;
    if 44 mod k = 0 then sum:=sum+2;
    if 45 mod k = 0 then sum:=sum+6;
    if 46 mod k = 0 then sum:=sum+2;
  end;
  if n>5 then sum:=0;
  writeln(sum);
  readln;
  readln;
end.

