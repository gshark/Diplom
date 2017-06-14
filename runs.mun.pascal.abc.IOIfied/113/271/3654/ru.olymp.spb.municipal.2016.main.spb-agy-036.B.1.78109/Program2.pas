program EX;
var a,b,c,d,x,y,o,k,i,j: integer;
z,m:array[1..100] of integer;
r,t:real;
begin
read(a); read(b); read(c);
for j:= 2 to a do begin
for i:= 1 to j do begin
t:= j/i;
if (t > c) and (t < b) then begin 
for k:=i downto 1 do begin
if (i mod(k) = 0) and (j mod(k) = 0) then begin x:=(i div(k)); y:=(j div(k)); end;
 end;
 for k:=x downto 1 do begin
if (x mod(k) = 0) and (y mod(k) = 0) then begin x:=(x div(k)); y:=(y div(k)); end;
 end;
writeln(x,'/',y);
end;
end;
end;
end.