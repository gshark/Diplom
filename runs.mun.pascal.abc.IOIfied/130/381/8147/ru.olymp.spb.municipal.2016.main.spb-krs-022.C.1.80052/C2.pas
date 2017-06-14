program qq;
var x, i, j, N, K, C: integer;
var a: array [1..100, 1..100] of integer;
var b: array [1..26] of string;
begin
readln (x);
C:=0;
N:=1;
K:=x;
if (x mod 2=0) then
   C:=1;
if (C=0) then
begin
   for i:=1 to x do
   begin
      a[i, N]:=1;
      N:=N+1;
      if (i>=(n+1) div 2) then
      begin
      for j:=1 to x do
      begin
         if ((N-j-1>0) and (a[i, N-j-1]=0))then
            a[i, N-j-1]:=j+1;
      end;
      end;
   end;
   for i:=1 to x do
   begin
      a[i, K]:=1;
      K:=K-1;
      if (i>=(n+1) div 2) then
      begin
      for j:=1 to x do
      begin
         if ((K+j+1<x+1) and (a[i, K+j+1]=0))then
            a[i, K+j+1]:=j+1;
      end;
      end;
   end;
end;
for i:=1 to x do
begin
   for j:=1 to x do
   begin
      write (a[i, j]);
   end;
   writeln ();
end;
end.