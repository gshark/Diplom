program prg;
var a,c:longint;
begin
readln(a);
c:=0;
while a mod 10=0 do 
a:=a div 10;
while a<>0 do 
begin
if a mod 10=0 then c:=c+1;
a:=a div 10;
end;
writeln('krasota chisla = ',c);
end.