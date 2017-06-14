program a;
var
k,ch:longint;
begin
read(ch);
k:=0;
while (ch mod 10)=0 do 
  ch:=ch div 10;
while ch>9 do 
begin
  if ch mod 10=0 then
    k:=k+1;
  ch:=ch div 10;
end;
writeln(k);
end.    