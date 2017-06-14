var i:integer;
    k:longint;
begin
read(k);
k:=k*10;
repeat
k:=k div 10;
until k mod 10<>0;
i:=0;
repeat
if k mod 10=0 then i:=i+1;
k:=k div 10;
until k<10;
writeln(i);
end.    
    