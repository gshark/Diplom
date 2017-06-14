program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

function pr(x,y:integer):boolean;
var i:integer;
begin
  result:=true;
  for i:=2 to x div 2 + 1 do begin
    if (x mod i=0) and (y mod i=0) then begin result:=false;
      break;
    end;
  end;

end;

var
  n,k,x,y,j,i,fl,r,p,q:integer;
  ar:array[1..10000,1..2] of integer;

begin
  readln(n,p,q);
  fl:=1;
  for i:=2 to n do begin
    for j:=1 to i-2 do begin
      if (pr(j,i)=true) then
         if (i<j*p) and (j*q<i) then begin
           ar[fl,1]:=j;
           ar[fl,2]:=i;
           inc(fl);
         end;
    end;
  end;
  fl:=fl-1;
  ar[fl+1,1]:=100;
  ar[fl+1,2]:=1;
  x:=fl+1;
  for i:=1 to fl do begin
   for j:=1 to fl do begin
    if (ar[j,1]*ar[x,2]<ar[j,2]*ar[x,1]) then x:=j;
   end;
   write(ar[x,1],'/',ar[x,2]);
   writeln();
   ar[x,1]:=100;
   ar[x,2]:=1;
  end;
end.

