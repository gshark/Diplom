
function gcd(a, b: integer): integer;
begin
if (b <> 0) then
   gcd := gcd(b, a mod b)
else
gcd := a;
end;

var n, p, q, i, j, k, t: integer;
    a, b, m: real;
    c, d: array [1..1000] of real;
    used: array [1..1000] of boolean;
begin
readln(n, p, q);
a := 1 / p;
b := 1 / q;
for i:= 1 to 100 do
   for j:= 1 to n do 
      if ((gcd(i, j) = 1) and (a < i / j) and (b > i / j)) then
         begin
         inc(k);
         c[k] := i;
         d[k] := j;
         end;
for i:= 1 to k do
begin
m := 100000000;
    for j:= 1 to k do
    if ((used[j] = false) and (c[j] / d[j] < m)) then
       begin
       t := j;
       m := c[j] / d[j];
       end;
writeln(c[t], '/', d[t]);
used[t] := true; 
end;

end.