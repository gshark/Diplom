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
  n,k,x,y,i,fl,r,c,q,a1,a2,a3,a4,a5:integer;
  ar:array [1..10000000] of integer;
  ae:array [1..100] of integer;
begin
  readln(n,k);
  y:=1;
  c:=0;
  for i:=1 to n-1 do
  for x:=i+1 to n do  begin
    ar[y]:=i*x;
    inc(y);
  end;

  fl:=0;

  //for i:=1 to y-1 do writeln(ar[i]);

    if n=1 then begin
      if 1 mod k =0 then fl:=1;
      write(fl);
  end;


    if n=2 then begin
  if 2 mod k =0 then fl:=1;
  write(2*fl);
  end;



  if n=3 then begin
  for a1:=1 to y-2 do for a2:=a1+1 to y-1 do
   begin
  if (((ar[a1]+ar[a2]) mod k) = 0) then inc(fl);
   end;
  write(2*fl);
  end;

  if n=4 then begin
  for a1:=1 to y-3 do for a2:=a1+1 to y-2 do for a3:=a2+1 to y-1 do
   begin

  if (((ar[a1]+ar[a2]+ar[a3]) mod k) = 0) then inc(fl);
   end;
  write(2*fl);
  end;

  if n=5 then begin
  for a1:=1 to y-4 do for a2:=a1+1 to y-3 do for a3:=a2+1 to y-2 do for a4:=a3+1 to y-1 do
   begin
  if (((ar[a1]+ar[a2]+ar[a3]+ar[a4]) mod k) = 0) then inc(fl);
   end;
  write(2*fl);
  end;

  if n=6 then begin
  for a5:= 1 to y-5 do for a1:=a5+1 to y-4 do for a2:=a1+1 to y-3 do for a3:=a2+1 to y-2 do for a4:=a3+1 to y-1 do
   begin
  if (((ar[a1]+ar[a2]+ar[a3]+ar[a4]+ar[a5]) mod k) = 0) then inc(fl);
   end;
  write(2*fl);
  end;

end.

