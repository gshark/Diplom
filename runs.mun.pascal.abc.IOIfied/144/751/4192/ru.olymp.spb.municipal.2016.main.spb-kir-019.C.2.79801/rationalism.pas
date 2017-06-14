program lol;
var i,j,e: integer;
begin
readln(e);
for i:=1 to e do begin 
for j:=1 to e do begin
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=1 then write('a');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=2 then write('b');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=3 then write('c');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=4 then write('d');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=5 then write('e');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=6 then write('f');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=7 then write('g');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=8 then write('h');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=9 then write('i');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=10 then write('j');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=11 then write('k');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=12 then write('l');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=13 then write('m');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=14 then write('n');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=15 then write('o');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=16 then write('p');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=17 then write('q');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=18 then write('r');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=19 then write('s');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=20 then write('t');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=21 then write('u');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=22 then write('v');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=23 then write('w');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=24 then write('x');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=25 then write('y');
if ((min(abs(i-j),abs(j-e+i-1)) +1) mod 27 )=26 then write('z');
end;
writeln;
end;
end.