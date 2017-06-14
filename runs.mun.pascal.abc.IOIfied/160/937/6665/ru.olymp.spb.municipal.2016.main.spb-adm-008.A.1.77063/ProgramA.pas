program one;
var a,b,c,i,s: longint;
begin
readln(a);
b:=a;
s:=0;
while b mod 10 = 0 do
  begin
   b:=b div 10;
  end;

while b>0 do
  begin
   c:=b mod 10;
   if c=0 then s:=s+1;
   b:=b div 10;
  end;
writeln(s);
end.