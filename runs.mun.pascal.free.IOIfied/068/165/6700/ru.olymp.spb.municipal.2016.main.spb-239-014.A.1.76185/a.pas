program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes  ,Math
  { you can add units after this };

var
  n,i,l,k,s,x:integer;

begin
  read(k);
  s:=0;
  for i:=1 to k do begin
    if k=(k div 10)*10 then k:=k div 10 else break;
  end;
  x:=10;
  for i:=1 to k do begin
    if k=k mod x then break;
    x:=x*10;
  end;
  n:=i;
  for i:=1 to n do begin
    l:=k div 10;
    if l*10= k then s:=s+1;
    k:=l;
  end;
  write(s);
 // readln;
 // readln;
end.
