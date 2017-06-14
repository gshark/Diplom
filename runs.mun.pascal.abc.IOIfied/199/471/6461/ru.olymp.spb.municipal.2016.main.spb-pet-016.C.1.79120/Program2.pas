var s:array[1..100] of string;
o,k:real;
c,i,n:integer;

begin
writeln('¬ведите n');
readln(n);
for i:=1 to n do begin
writeln;
for c:=1 to n do begin
o:= i+c mod 26 -1;
if i=n-c then write('b') else
if i=n+2-c then write('b') else
if i=n+1-c then write('a') else
if i=c+1 then write('b') else
if i=c-1 then write('b') else
if i=c then write('a') else begin
if o=1 then write('a');
if o=2 then write('b');
if o=3 then write('c');
if o=4 then write('d');
if o=5 then write('e');
if o=6 then write('f');
if o=7 then write('g');
if o=8 then write('h');
if o=9 then write('i');
if o=10 then write('j');
if o=11 then write('k');
if o=12 then write('l');
if o=13 then write('m');
if o=14 then write('n');
if o=15 then write('o');
if o=16 then write('p');
if o=17 then write('q');
if o=18 then write('r');
if o=19 then write('s');
if o=20 then write('t');
if o=21 then write('u');
if o=22 then write('v');
if o=23 then write('w');
if o=24 then write('x');
if o=25 then write('y');
if o=26 then write('z');
end;
end;
end


end.
