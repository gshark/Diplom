program lol;
var a: array[1..100,1..100] of integer;
i,j,e: integer;
begin
readln(e);
for i:=1 to e do begin 
for j:=1 to e do begin
if (min(abs(i-j),abs(j-e+i-1)) +1)=1 then write('a');
if (min(abs(i-j),abs(j-e+i-1)) +1)=2 then write('b');
if (min(abs(i-j),abs(j-e+i-1)) +1)=3 then write('c');
if (min(abs(i-j),abs(j-e+i-1)) +1)=4 then write('d');
if (min(abs(i-j),abs(j-e+i-1)) +1)=5 then write('e');
if (min(abs(i-j),abs(j-e+i-1)) +1)=6 then write('f');
if (min(abs(i-j),abs(j-e+i-1)) +1)=7 then write('g');
if (min(abs(i-j),abs(j-e+i-1)) +1)=8 then write('h');
if (min(abs(i-j),abs(j-e+i-1)) +1)=9 then write('i');
if (min(abs(i-j),abs(j-e+i-1)) +1)=10 then write('j');
if (min(abs(i-j),abs(j-e+i-1)) +1)=11 then write('k');
if (min(abs(i-j),abs(j-e+i-1)) +1)=12 then write('l');
if (min(abs(i-j),abs(j-e+i-1)) +1)=13 then write('m');
if (min(abs(i-j),abs(j-e+i-1)) +1)=14 then write('n');
if (min(abs(i-j),abs(j-e+i-1)) +1)=15 then write('o');
if (min(abs(i-j),abs(j-e+i-1)) +1)=16 then write('p');
if (min(abs(i-j),abs(j-e+i-1)) +1)=17 then write('q');
if (min(abs(i-j),abs(j-e+i-1)) +1)=18 then write('r');
if (min(abs(i-j),abs(j-e+i-1)) +1)=19 then write('s');
if (min(abs(i-j),abs(j-e+i-1)) +1)=20 then write('t');
if (min(abs(i-j),abs(j-e+i-1)) +1)=21 then write('u');
if (min(abs(i-j),abs(j-e+i-1)) +1)=22 then write('v');
if (min(abs(i-j),abs(j-e+i-1)) +1)=23 then write('w');
if (min(abs(i-j),abs(j-e+i-1)) +1)=24 then write('x');
if (min(abs(i-j),abs(j-e+i-1)) +1)=25 then write('y');
if (min(abs(i-j),abs(j-e+i-1)) +1)=26 then write('z');
end;
writeln;
end;
end.