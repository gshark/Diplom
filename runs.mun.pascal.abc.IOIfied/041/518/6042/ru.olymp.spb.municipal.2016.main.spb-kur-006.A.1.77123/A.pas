var k,N:longint;
begin
N:=0;
readln(k);
while k <> 0 do begin
if k mod 10 = 0 then
k:=k div 10
else begin
break;
k:=k div 10;
end;
end;
while k <> 0 do begin
if k mod 10 = 0 then
N:=N+1;
k:=k div 10;
end;
writeln(N);
end.


