program zadachaA;
var N, a, k:integer;
begin
readln(N);
k:=0;
while a=0 do begin 
a:=N mod 10;
N:=N div 10;
end;
N:=N*10+a;
WHILE N<>0 do
 begin
a:=N mod 10;
if a=0 then k:=k+1;
N:= N div 10;
end;
writeln(k);
end.