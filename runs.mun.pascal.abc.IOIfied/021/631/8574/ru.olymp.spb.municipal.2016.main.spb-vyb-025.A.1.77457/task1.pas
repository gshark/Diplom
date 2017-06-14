uses crt;
var
n:longint;
k:integer;
begin
clrscr;
readln(n);

while n mod 10 = 0 do
begin
n:=n div 10;
end;

while n div 10 > 0 do
begin
if n mod 10 = 0 then k:=k+1;
n:=n div 10;
end;

writeln(k);
end.
