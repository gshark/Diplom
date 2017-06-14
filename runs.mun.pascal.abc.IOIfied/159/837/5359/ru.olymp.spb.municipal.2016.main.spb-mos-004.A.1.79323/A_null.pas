program DuD;
var
a,b: longint;
c,d:integer;
begin
readln(a);
b:=1;
while b>0 do begin
if (a mod 10 = 0)and(a>0) then 
  a:=trunc(a/10)
  else
  b:=0;
  end;
while a>9 do begin
if a mod 10 = 0 then c:=c+1;
a:=trunc(a/10);
end;
writeln (c);
end.