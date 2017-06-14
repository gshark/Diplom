program pre;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes  ,Math
  { you can add units after this };

var
  n,i,l,k1,k2,s,x,p,q,j,u,v,z,k,r:integer;
  b:array[1..100] of integer;
  c:array[1..100] of integer;
  d:array[1..100] of integer;
begin
  read(r,n,q);
  for i:=1 to q do begin
   read(b[i]);
  end;
  k:=1;
  l:=1;
  for x:=2 to (r+n-1) do begin
   for j:=1 to r do begin
     if (x-j>=1) and (x-j<=n) then begin
       if l<q+1 then begin if k=b[l] then begin  c[l]:=x-j; d[l]:=j; l:=l+1; end; end;
       k:=k+1;
     end;
   end;
  end;
  if b[q]=r*n then begin
    d[q]:=r;
    c[q]:=n;
  end;
  for i:=1 to q do begin
   writeln(d[i],' ',c[i]);
  end;
  //readln;
  //readln;
end.
