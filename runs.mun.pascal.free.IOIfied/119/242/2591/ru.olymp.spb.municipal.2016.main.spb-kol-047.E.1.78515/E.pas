Program MMM;
var a, b, c, d, i, j, k, x, z, y:integer;
Begin 
readln (a);
writeln(a, '=', a);
for i:=1 to (a div 2-1) do begin
b:=a-i;

writeln (a, '=', i, '+', b);
end;
for j:=1 to (a div 2+1)do 
 for k:=j to  (a div 2-1)  do begin


c:=a-(k+j);
If ((abs (c-k)>1) and (abs (j-c)>1) and (abs (j-k)>1)) then 
writeln (a, '=', j, '+', k, '+', c );
end;
for x:=1 to (a-3)do 
 for y:=X to  (a-6)  do 
 for z:=Y to  (a div 2-3)  do begin
 d:=a-(x+y+z);
 if d<=0 then break;
 If ((abs (d-x)>1) and (abs (d-y)>1) and (abs (d-z)>1) and (abs (y-x)>1) and (abs (z-y)>1) and (abs (y-z)>1) ) then
 writeln (a, '=', x, '+', y, '+', z, '+' , d );
end;
end.