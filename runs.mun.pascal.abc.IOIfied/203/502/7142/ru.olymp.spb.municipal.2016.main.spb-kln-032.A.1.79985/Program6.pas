var a,b,k,c:integer;
begin
b:=0;
readln(k);
repeat a:= k mod 10;
c:= k mod 100;
k:=k div 10;
until (a = 0)and(c <> 0);
while k>0 do begin
a:= k mod 10;
k:=k div 10;
if a = 0 then begin
b:=b+1;
end;
end;
writeln(b);
end.