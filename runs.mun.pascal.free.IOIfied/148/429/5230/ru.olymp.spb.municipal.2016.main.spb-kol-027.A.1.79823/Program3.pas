var
k, kol:integer;
begin
readln(k);
kol:=0;
If k mod 10 = 0 then 
while k mod 10 = 0 do
k:= k div 10
else 
while k mod 10  <> 0 do
k:=k div 10;
while k > 0 do
If k mod 10 = 0 then kol:=kol+1
else k:=k div 10;
write(kol);
end.




