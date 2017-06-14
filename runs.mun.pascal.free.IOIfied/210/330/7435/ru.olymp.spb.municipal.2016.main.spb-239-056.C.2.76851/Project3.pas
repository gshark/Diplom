program Project3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var n,i,j,k:integer;
    a:array[1..101] of array [1..101] of char;

begin
 read(n);
 for i:=1 to n do
 begin
   for j:=1 to n do
   a[i,j]:='.';
 end;
   for i:=1 to n do
   begin
    a[i,i]:='a';
    a[i,n+1-i]:='a';
   end;



  for k:=2 to (n+1 div 2) do
  begin
   for i:=1 to n-k+1 do
   begin
    if a[k+i-1,i]='.' then
    a[k+i-1,i]:=char(ord('a')+ (k-1) mod 26);
   end;

   for i:=1 to n-k+1 do
   begin
    if a[i,k+i-1]='.' then
    a[i,k+i-1]:=char(ord('a')+ (k-1) mod 26);
   end;

   for i:=1 to n-k+1 do
   begin
    if a[n-(k+i-1)+1,i]='.' then
    a[n-(k+i-1)+1,i]:=char(ord('a')+ (k-1) mod 26);
   end;

   for i:=1 to n-k+1 do
   begin
    if a[n-i+1,(k+i-1)]='.' then
    a[n-i+1,(k+i-1)]:=char(ord('a')+(k-1) mod 26);
   end;

  end;

 for i:=1 to n do
 begin
   for j:=1 to n do
    write(a[i,j]);
   writeln();
 end;
   readln();
   readln();
end.

