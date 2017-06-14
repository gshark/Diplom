uses crt;
function drob(m,n:byte):byte;
begin
if m mod n=0 then drob:=n
else drob:=drob(n mod m,m);
end;
var
p,q:byte;
begin
clrscr;
for q:=2 to 15 do
for p:=1 to q-1 do
if drob(p,q)=1 then
write(p:5,'/',q:1);

end.

