Program Prob2;
Const D=10000;
var  p, q, n, g, k : integer;
     A,B : array [1..D] of integer;
     

Procedure Sort(R,T : array [1..D] of integer);
var e, f, z1, z2 : integer;
begin
 for e:=1 to k do
  for f:=e+1 to k do
  begin
   if (R[e]*T[f])>(R[f]*T[e]) then
   begin
    z1:=R[e];
    R[e]:=R[f];
    R[f]:=z1;
    z2:=T[e];
    T[e]:=T[f];
    T[f]:=z2;
   end;
  end;
 for e:=1 to k do
 begin
  A[e]:=R[e];
  B[e]:=T[e];
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
 Sort(A,B);
end;



begin
 readln(n,p,q);
 Count(n,p,q);
 for g:=1 to (k) do
 begin
  writeln(A[g],'/',B[g]);
 end;
end.