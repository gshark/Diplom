program love0;
uses crt;
var f,c,o:integer;k:string;
begin
f:=0;
k:='100500';
val (k,c,o);
if (c mod 100=0) then begin c:=c div 100; end else 
if (c mod 10=0) then c:=c div 10;
str(c,k);
while not(length(k)=1) do begin
if c mod 10=0 then f:=f+1;  
c:=c div 10; 
str(c,k);
end;
if f=0 then writeln (f) else if f>1 then
writeln (f);
end.
