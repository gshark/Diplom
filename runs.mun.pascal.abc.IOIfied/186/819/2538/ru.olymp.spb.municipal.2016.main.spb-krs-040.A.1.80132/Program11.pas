program odin;
var k,s,n:integer;
begin
s:=0;
readln(k);
while k mod 10=0 do
k:=k div 10;
while k div 10<>0 do begin
while k mod 10<>0 do begin
k:=k-1;
end;
while k mod 10=0 do begin
k:=k div 10;
n:=n+1;
if k mod 10<>0 then begin
n:=n-1;
s:=n;
end;
end;
while k mod 10=1 do begin
k:=k div 10;
end;
end;
k:=s;
writeln(k);
end.
