program A;

var k,k2,i2,i,kras:integer;
begin
read (k);
k2:=k;
kras:=0;    
i2:=0;
while k2<>0 do
begin
  i2:=i2+1;
  k2:=k2 div 10;
end;
for i:= 1 to i2 do
begin
    if (i<>1) and (i<>i2) then 
    begin
        if k mod 10 = 0 then
        begin
        kras:=kras + 1;
        end;
    end;
    k:=k div 10;
end;
  writeln(kras);
end.