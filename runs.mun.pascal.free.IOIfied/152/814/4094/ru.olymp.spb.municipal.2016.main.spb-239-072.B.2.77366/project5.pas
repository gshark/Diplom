program project5;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n,k,p,q,i,j:integer;
  a,b,c,d:array[0..10000] of integer;
function nod(a,b:integer):integer;
var
  i1:integer;
begin
  nod:=0;
  i1:=a;
  while nod=0 do begin
   if (a mod i1=0) and (b mod i1=0) then nod:=i1;
   i1:=i1-1;
  end;
end;
begin
  read(n,p,q);
  for i:=q to n do for j:=1 to i-1 do
   begin
    if (1/p<j/i) and (j/i<1/q) and (nod(i,j)=1) then begin
      k:=k+1;
      a[k]:=j;
      b[k]:=i;
    end;
   end;

  for i:=0 to k do d[i]:=1;
  c[0]:=10;
  for j:=1 to k do begin
  for i:=1 to k do begin
   if (a[i]/b[i]>c[j]/d[j]) and (a[i]/b[i]<c[j-1]/d[j-1]) then begin
     c[j]:=a[i];
     d[j]:=b[i];
   end;
  end;
  end;
  for i:=k downto 1 do begin
    write(c[i],'/',d[i]);
    writeln;
  end;
  readln;
  readln;
end.
