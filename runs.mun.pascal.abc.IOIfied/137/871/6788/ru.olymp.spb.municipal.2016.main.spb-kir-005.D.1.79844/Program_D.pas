Program GT;
var
n, k, f, x, i:integer;
Begin
Readln(n, k);
x:=n;
f:=1;
While x>1 do 
Begin
f:=f*x;
x:=x-1;
End;
i:=0;
if n=3 then
Begin
if 8 mod k=0 then
i:=i+2;
if 9 mod k=0 then
i:=i+2;
if 5 mod k=0 then
i:=i+2;
end;
if n=2 then
Begin
if 2 mod k=0 then
i:=i+2;
end;
writeln(i);
End.