var n,x,y,k:longint;
begin readln(n);
x:=n;
k:=0;

while x<>0 do begin
if x mod 10=0 then
begin
x:=x div 10;
end;
if x mod 10<>0 then begin
y:=x; break;
end;
end;

while y<>0 do begin
if y mod 10=0 then
begin
k:=k+1;
end;
y:=y div 10;
end;

writeln(k);
end.

