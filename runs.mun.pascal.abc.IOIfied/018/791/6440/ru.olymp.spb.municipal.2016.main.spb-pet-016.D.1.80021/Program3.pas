var
a:array[1..10,1..10] of integer;
n,k,i,c,b:integer;
begin
readln(n,k);
b:=0;
for i:=1 to n do
for c:=1 to n do
if i*c mod k=0 then b:=b+1;
b:=b div (n-1)+1;
b:=b div 2;


writeln(b);
end.



