program b;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  ch, zn:array [1..100000] of integer;
  a:array [1..100000] of extended;
  i, j, n, p, q, k:integer;
function simp(x, y:integer):boolean;
var
  r, max:integer;
begin
  simp:=false;
  if x>y then max:=x
  else max:=y;
  for r:=2 to max do begin
    if (x mod r=0) and (y mod r=0) then simp:=true;
  end;
end;
procedure swap(b, c:integer);
var
  z:integer;
  t:extended;
begin
  t:=a[b]; a[b]:=a[c]; a[c]:=t;
  z:=ch[b]; ch[b]:=ch[c]; ch[c]:=z;
  z:=zn[b]; zn[b]:=zn[c]; zn[c]:=z;
end;
begin
  read(n, p ,q);
  k:=0;
  for i:=1 to n-1 do begin
    for j:=1 to i do begin
      if (simp(i, j)=false) and (j/i>1/p) and (j/i<1/q) then begin
        k:=k+1;
        ch[k]:=j;
        zn[k]:=i;
      end;
    end;
  end;
  for i:=1 to k do a[i]:=ch[i]/zn[i];
  for i:=1 to k do begin
    for j:=1 to n do begin
      if a[i]<a[j] then swap(i, j);
    end;
  end;
  for i:=1 to k do writeln(ch[i], '/', zn[i]);
  readln;
  readln;
end.

