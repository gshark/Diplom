program prb;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes  ,Math
  { you can add units after this };

var
  n,i,l,k1,k,s,x,p,q,b,j,u,v,z:integer;
  c:array[1..1000000] of integer;
  d:array[1..1000000] of integer;
begin
  read(n,p,q);
  x:=1;
  for i:=2 to n do begin
   for j:=1 to i-1 do begin
    s:=0;
     for k:=2 to n do begin
       if (i mod k=0) and (j mod k=0) then s:=1; break;
     end;
     if s=0 then begin c[x]:=j; d[x]:=i; x:=x+1; end;
  end;
  end;
  x:=x-1;
  for j:=1 to x do begin
   for i:=1 to x-1 do begin
    if c[i]*d[i+1]>d[i]*c[i+1] then begin u:=c[i]; v:=d[i]; c[i]:=c[i+1]; d[i]:=d[i+1]; c[i+1]:=u; d[i+1]:=v; end;
   end;
  end;
  k:=0;
  for i:=1 to x do begin
   if (d[i]<p*c[i]) and (d[i]>q*c[i])  then writeln(c[i],'/',d[i]);
  end;
  //readln;
  //readln;
end.
