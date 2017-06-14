program qq;
var Cn, Cd, x, Otv, n, d, i: integer;

begin
readln (n, d);
x:=1;
for i:=1 to n do
   x:=x*i;
if (n mod 2=0) then
   Cn:=1;
if (d mod 2=0) then
   Cd:=1;
   
if ((Cn=1) and (Cd=0)) then
   Otv:=0;
   
if ((Cn=0) and (Cd=0)) then
   Otv:=2;
   
if ((Cn=1) and (Cd=1)) then
   Otv:=x;
   
if ((Cn=0) and (Cd=1)) then
   Otv:=n-1;
   
writeln (Otv);
end.