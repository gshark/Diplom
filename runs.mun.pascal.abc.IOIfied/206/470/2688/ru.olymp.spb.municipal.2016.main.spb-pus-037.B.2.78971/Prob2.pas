Program Prob2;
Const D=10000;
var  p, q, n, g, k : integer;
     A,B : array [1..D] of integer;
     

Procedure Sort;
var e, f, z1, z2 : integer;
begin
 for e:=1 to k do
  for f:=e+1 to k do
  begin
   if (A[e]*B[f])>(A[f]*B[e]) then
   begin
    z1:=A[e];
    A[e]:=A[f];
    A[f]:=z1;
    z2:=B[e];
    B[e]:=B[f];
    B[f]:=z2;
   end;
  end;
end;
    
Procedure Count(n,p,q : integer);
var i, j : integer;
begin
 k:=0;
 for j:=(n-1) downto 1 do
  for i:=1 to j do
  begin
   if ((j*q)<(i*p*q))and((i*p*q)<(j*p)) then
   begin
    k:=k+1;
    A[k]:=i;
    B[k]:=j;
   end;
  end;
 Sort;
end;



begin
 readln(n,p,q);
 Count(n,p,q);
 for g:=1 to (k) do
 begin
  writeln(A[g],'/',B[g]);
 end;
end.