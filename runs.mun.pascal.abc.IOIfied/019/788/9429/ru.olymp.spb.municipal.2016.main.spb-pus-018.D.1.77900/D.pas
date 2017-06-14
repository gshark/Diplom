Program D;
const
n=3;
var
A:array [1..n] of integer;
i,k,r,s,p:integer;
begin
  s:=0;
  readln(k);
If (k>1000) or (k<2) then readln(k);
for i:=1 to n do
  begin
    A[i]:=i;
  end;
for i:=1 to 6 do
  begin
    r:=A[1]*A[2]+A[2]*A[3];
    If r mod k=0 then s:=s+1;
    p:=A[1];
    A[1]:=A[3];
    A[3]:=A[2];
    A[2]:=p;
  end;
writeln(s);
end.
