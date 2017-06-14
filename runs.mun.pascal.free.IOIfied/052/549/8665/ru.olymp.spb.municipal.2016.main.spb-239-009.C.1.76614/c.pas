program c;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  a:array [1..100, 1..100] of char;
  i, j, n:integer;
function min(x, y:integer):integer;
var
  min1, min2:integer;
begin
  min:=x;
  if x>y then min:=y;
end;
begin
  read(n);
  for i:=1 to n do begin
    for j:=1 to n do a[i, j]:=chr((min(abs(j-i), abs(j-n+i-1)) mod 26+ord('a')));
  end;
  for i:=1 to n do begin
    for j:=1 to n do write(a[i, j]);
    writeln;
  end;
  readln;
  readln;
end.

