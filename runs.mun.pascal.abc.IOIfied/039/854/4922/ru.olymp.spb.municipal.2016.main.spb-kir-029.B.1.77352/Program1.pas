
function gcd(a, b: integer): integer;
begin
if (b <> 0) then
   gcd := gcd(b, a mod b)
else
gcd := a;
end;

var n, p, q, i, j: integer;
    a, b: real;
begin
readln(n, p, q);
a := 1 / p;
b := 1 / q;
for i:= 1 to 100 do
   for j:= 1 to n do 
      if ((gcd(i, j) = 1) and (a < i / j) and (b > i / j)) then
         writeln(i, '/', j);
         
end.