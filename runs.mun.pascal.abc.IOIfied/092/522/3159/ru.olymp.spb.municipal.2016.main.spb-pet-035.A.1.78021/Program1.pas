program z1;
var s,a,i,gl,n,d: integer;
begin
s:=1;
read(a); 
gl:=0;
n:=0;
for i:= 1 to 9 do
begin 
d:= a div s ;
write ('d ',d,' ');
s:=s*10;
if (d mod 10)<>0 then n:=n+1; 
if ((d mod 10) = 0) and (n>0) and (d<>0) then gl:=gl+1;
write('g ',gl,' ');
end;
writeln (gl);
end.

