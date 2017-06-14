program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

 function fac(x:integer):integer;
 begin
   result:=1;
   while x<>1 do begin
     result:=result*x;
     x:=x-1;
   end;

 end;

var
  n,k,x,y,i,fl,r,c,q:integer;
  ar:array [1..5,1..30] of integer;

begin
  readln(n,k);

  c:=0;
  for i:=1 to n do
  for x:=1 to n do  begin
    if i=x then continue;
    c:=c+ i*x;

  end;

  c:=c div 2;
  fl:=0;


  for i:=1 to n do
  for x:=1 to n do  begin
    if i=x then continue;
    if ((c-i*x) mod k = 0) then inc(fl);

  end;

  write(fl);

  readln();
  readln();
end.

