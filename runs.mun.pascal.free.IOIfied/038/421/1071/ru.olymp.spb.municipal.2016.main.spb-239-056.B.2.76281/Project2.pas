program Project2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var n,p,q,i,j,kol,l,err,m:integer;
    a:array[1..10001] of integer;
    b:array[1..10001] of integer;
    x,y,z :real;
begin
  read(n,p,q);
  x:=1/p;
  y:=1/q;
  kol:=0;
  for i:=1 to n do
  begin
    for j:=1 to i do
    begin
     z:=j/i ;
     if (x<z) and (z<y) then
      begin
      err:=0;
      for l:=1 to kol do
      begin
       if ((b[l]/a[l])=j/i) then
        err:=1;
      end;
      if (err=0) then
       begin
        kol:=kol+1;
        a[kol]:=i;
        b[kol]:=j;
       end;
      end;
    end;
  end;
  while (kol>0) do
  begin
  m:=1;
   for i:=2 to kol  do
   if ((b[i]/a[i])<(b[m]/a[m])) then
    m:=i;
   writeln(b[m],'/',a[m]);
   for i:=m to  kol-1 do
   begin
    a[i]:=a[i+1];
    b[i]:=b[i+1];
   end;
   kol:=kol-1;
  end;
  readln();
  readln();
end.

