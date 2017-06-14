var p, q, n: integer;
i, j: longint;
f, chisl, zn, p1, q1: real;
S, S1, S2: string;

Procedure A;
begin
str(j, S1);
str(i, S2);
S:=S1+'/'+S2;
writeln(S);
end;

begin

read(n, p, q);
p1:=1/p;
q1:=1/q;



for i:=p+1 to n-1 do
  begin
  zn:=i;
  for j:=1 to n-2 do
    begin
    chisl:=j;
    f:=chisl/zn;
    if (f>p1) and (f<q1) then A;
    end;
  end;


end.
