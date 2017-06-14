Program problem3;
function chrn(c: byte):char;
begin
c:=c - ( c div 123 ) * 26;
chrn:=chr(c);
end;
var i,k,n:shortint; b:byte; p:array[0..100, 0..100] of char;
begin
readln(n);
b:=97;
for i:=1 to n do begin
p[i,i]:=chrn(b);
p[i,n+1-i]:=chrn(b);
end;
for k:=1 to n do begin
for i:=k to n do begin
if p[k, i] = chrn(0) then 
begin
if ord(p[k, i-1]) <> 0 then
p[k, i]:=chrn(ord(p[k, i-1])+1)
else
p[k, i]:=chrn(ord(p[k, i+1])+1);
end;
if p[k, n+1-i] = chrn(0) then 
begin
if ord(p[k, i-1]) <> 0 then
p[k, n+1-i]:=chrn(ord(p[k, n+2-i])+1)
else
p[k, n+1-i]:=chrn(ord(p[k, n-i])+1);
end;
end;
for i:=k downto 1 do begin
if p[k, i] = chrn(0) then 
begin
if ord(p[k, i-1]) <> 0 then
p[k, i]:=chrn(ord(p[k, i-1])+1)
else
p[k, i]:=chrn(ord(p[k, i+1])+1);
end;
if p[k, n+1-i] = chrn(0) then 
begin
if ord(p[k, i-1]) <> 0 then
p[k, n+1-i]:=chrn(ord(p[k, n+2-i])+1)
else
p[k, n+1-i]:=chrn(ord(p[k, n-i])+1);
end;
end;
end;
for k:=1 to n do begin
for i:=1 to n do begin
write(p[k,i]);
end;
writeln;
end;
end.
