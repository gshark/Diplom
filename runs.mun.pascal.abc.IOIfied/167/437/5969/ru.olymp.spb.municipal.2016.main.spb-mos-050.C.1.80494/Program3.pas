program mnogocolor;
var
n,i,k,t,g,q:integer;
a:array [1..100] of integer;
begin
readln(n);
for i:=1 to n do begin
for k:=1 to n do begin
a[k]:=111;
end;
for t:=1 to 100 do begin
a[i]:=1;
a[n+1-i]:=1;
for g:=1 to n do begin
if  a[g]=(t mod 26) then
begin
if (((g-1)>0) and ((g-1)<101)) then if a[g-1]=111 then a[g-1]:=((t+1) mod 26);
if (((g+1)>0) and ((g+1)<101)) then if a[g+1]=111 then a[g+1]:=((t+1) mod 26);
end;
end;

end;
for k:=1 to n do begin

if (a[k]=1) then write('a');
if (a[k]=2) then write('b');
if (a[k]=3) then write('c');
if (a[k]=4) then write('d');
if (a[k]=5) then write('e');
if (a[k]=6) then write('f');
if (a[k]=7) then write('g');
if (a[k]=8) then write('h');
if (a[k]=9) then write('i');
if (a[k]=10) then write('j');
if (a[k]=11) then write('k');
if (a[k]=12) then write('l');
if (a[k]=13) then write('m');
if (a[k]=14) then write('n');
if (a[k]=15) then write('o');
if (a[k]=16) then write('p');
if (a[k]=17) then write('q');
if (a[k]=18) then write('r');
if (a[k]=19) then write('s');
if (a[k]=20) then write('t');
if (a[k]=21) then write('u');
if (a[k]=22) then write('v');
if (a[k]=23) then write('w');
if (a[k]=24) then write('x');
if (a[k]=25) then write('y');
if (a[k]=0) then write('z');
end;
writeln;
end;

end.