program Project4;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var n,q,i,j,l,x,kol,y,k:integer;
    a:array[1..6000000] of array [1..10] of integer;
    s:array[0..10] of integer;
begin
 read(n);
 read(q);
 for i:=1 to 6000000 do
 begin
  for j:=1 to 10 do
  a[i,j]:=0;
 end;

 s[0]:=0;
 s[1]:=1;
 x:=1;
 for i:=2 to 10 do
 begin
  x:=x*i;
  s[i]:=x+s[i-1];
 end;

 a[1,1]:=1;

 for i:=2 to 10 do
 begin
  for j:=1 to s[i-1]-s[i-2] do
  begin
   for l:=1 to i do
   begin
    for k:=1 to l-1 do
     a[s[i-1]+i*(j-1)+l,k]:=a[s[i-2]+j,k];
     a[s[i-1]+i*(j-1)+l,l]:=i;
    for k:=l+1 to i do
     a[s[i-1]+i*(j-1)+l,k]:=a[s[i-2]+j,k-1];
   end;
  end;
 end;


 kol:=0;
 for i:=s[n-1]+1 to s[n] do
 begin
  y:=0;
  for j:=1 to n-1 do
  begin
   y:=y+(a[i,j]*a[i,j+1]);
  end;
  if (y mod q = 0) then
    kol:=kol+1;
 end;
 write(kol);
   readln();
   readln();
end.
