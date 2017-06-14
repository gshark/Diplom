var 
k, a, c: longint;
begin
readln(k);
while (a = 0) do begin 
a:=k mod 10;
k:=k div 10;
end;
while (k > 0) do begin 
a:=k mod 10;
if a = 0 then c:=c+1;
k:=k div 10;
end;
writeln (c);
end.


