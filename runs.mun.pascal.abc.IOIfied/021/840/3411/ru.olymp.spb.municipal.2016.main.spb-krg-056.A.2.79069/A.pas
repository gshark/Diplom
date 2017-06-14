Program a;
var n,k:integer;
Begin
k:=0;
Readln(n);
If(n div 10=0) then
k:=0;
While(n mod 10=0) do
n:=n div 10;
While(n mod 10<>0) and (n div 10<>0) do
Begin
n:=n div 10;
While(n mod 10=0)do
Begin
k:=k+1;
n:=n div 10;
end;
n:=n div 10;
end;
If(n div 10<>0)then k:=k+1;
Writeln(k);
end.


