program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };



var
  n,k,x,y,i,fl,r,c,q:integer;
  ar:array [1..100,1..3] of integer;

begin
  read(r,c,q);
  x:=1;
  y:=1;
  for i:=1 to q do read(ar[i,3]);
  for i:=1 to r*c do begin
    for k:=1 to q do if i=ar[k,3] then  begin
    ar[k,1]:=x;
    ar[k,2]:=y;
    end;
    if(y=r) or (x=1) then begin x:=x+y; y:=1;
    if(x>c) then begin y:=y+x-c; x:=c;    end;  continue end;
    x:=x-1;
    y:=y+1;
  end;
  for i:=1 to q do begin
    write(ar[i,2],' ',ar[i,1]);
    writeln();
    end;
end.

