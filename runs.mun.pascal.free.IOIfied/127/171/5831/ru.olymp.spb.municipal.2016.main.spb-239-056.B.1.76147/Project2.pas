program Project2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var n,p,q,i,j,kol,l,err:integer;
    a:array[1..101] of real;
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
       if (a[l]=i/j) then err:=1;
      end;
      if (err=0) then
       begin
        kol:=kol+1;
        a[kol]:=i/j;
        writeln(j,'/',i);
       end;
      end;
    end;
  end;
  readln();
  readln();
end.

