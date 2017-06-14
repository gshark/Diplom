program t1;
var k,b,c,i,d,n:integer;
Begin
writeln();
readln(k);
d:=1;
c:=0;
b:=0;
for i:=1 to 11 do begin
b:=k mod 10;
if b=0 then k:=k div 10
end;
for i:=1 to 11 do begin
if k>=d then n:=i;
d:=d*10;
end;
for i:=1 to n do begin
b:=k mod 10;
if b=0 then begin
c:=c+1;
k:=k div 10;
end
else k:=k div 10
end;
writeln(c);
End.