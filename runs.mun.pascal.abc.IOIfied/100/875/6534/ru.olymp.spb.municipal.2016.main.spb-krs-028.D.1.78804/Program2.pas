program D;
var a:array[1..10] of integer;
i,n,k,b,c,e:integer;
begin
b:=0;
e:=0;
c:=0;
readln(n);
readln(k);
for i:=1 to n do
begin
b:=b+i;
c:= b*(b+1);
end;
if c mod k =0 then e:=e+1;
writeln(e)
end.