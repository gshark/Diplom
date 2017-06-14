program A1;
var k, aa, a2, b, x, m, y: longint;
begin
readln(k);
m:=k;
y:=0;
while k>=10 do
  begin
  k:=k div 10;
  y:=y+1;
  end;
k:=m;
x:=1;
while (x<y) do
  begin
  aa:=k mod 10;
  if aa>0 then
    b:=0;
  if aa=0 then
    if (x=1) then
    b:=0;
    if (x=2) and (a2=0) then
    b:=0
    else
    b:=b+1;
  a2:=aa;
  x:=x+1;
  k:=k div 10;
  end;
writeln(b);
end.