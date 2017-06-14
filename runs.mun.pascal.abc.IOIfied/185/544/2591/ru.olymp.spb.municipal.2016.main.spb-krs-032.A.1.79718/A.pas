program A;
var k,b:longint;
begin
readln(k);
while (k mod 10) = 0 do begin
    k := k div 10;
end;
while k > 9 do begin
    if (k mod 10) = 0 then
        inc(b);
    k := k div 10;
end;
writeln(b);
end.