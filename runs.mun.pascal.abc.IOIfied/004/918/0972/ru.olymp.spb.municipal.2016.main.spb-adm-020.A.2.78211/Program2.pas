program A;
var k, n, m, l, a: integer;
begin
writeln('введите k');
readln(k);
begin
n:=1;
m:=k mod 10;
if m=0 then
m:=k mod 100;
if m=0 then
m:=k mod 1000;
if m=0 then
m:=k mod 10000;
if m=0 then
m:=k mod 100000;
if m=0 then
m:=k mod 1000000;
if m=0 then
m:=k mod 10000000;
if m=0 then
m:=k mod 100000000;
if m=0 then
m:=k mod 1000000000;
if m=0 then
writeLn('красота равна 0');
if m>0 then begin
l:=k-m;
a:=l/10;
writeln('красота равна a');
end.
