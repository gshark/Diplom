program C;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes,math
  { you can add units after this };


 var
  n,i,i1,q:integer;
  x:array [1..100] of array [1..100] of char;
   begin
   read(n);
  for i:=1 to n do
  begin
  for i1:=1 to n do
  begin
    q:=min(abs(i1-i),abs(n-i-i1+1)) mod 26 ;
    if q=0 then x[i][i1]:='a';
    if q=1 then x[i][i1]:='b';
    if q=2 then x[i][i1]:='c';
    if q=3 then x[i][i1]:='d';
    if q=4 then x[i][i1]:='e';
    if q=5 then x[i][i1]:='f';
    if q=6 then x[i][i1]:='g';
    if q=7 then x[i][i1]:='h';
    if q=8 then x[i][i1]:='i';
    if q=9 then x[i][i1]:='j';
    if q=10 then x[i][i1]:='k';
    if q=11 then x[i][i1]:='l';
    if q=12 then x[i][i1]:='m';
    if q=13 then x[i][i1]:='n';
    if q=14 then x[i][i1]:='o';
    if q=15 then x[i][i1]:='p';
    if q=16 then x[i][i1]:='q';
    if q=17 then x[i][i1]:='r';
    if q=18 then x[i][i1]:='s';
    if q=19 then x[i][i1]:='t';
    if q=20 then x[i][i1]:='u';
    if q=21 then x[i][i1]:='v';
    if q=22 then x[i][i1]:='w';
    if q=23 then x[i][i1]:='x';
    if q=24 then x[i][i1]:='y';
    if q=25 then x[i][i1]:='z';
   write(x[i][i1]);
  end;
  writeln();
   end;

readln();
readln();
end.

