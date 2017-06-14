program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n,k,p,q,i,j:integer;
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
      write(j,'/',i);
      writeln;
    end;
   end;
  readln;
  readln;
end.

