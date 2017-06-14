var ka: integer;
k: integer;
begin
read (k);

while k mod 10 =0 do
if k mod 10 = 0 then
k:=k div 10;

while k div 10 > 0 do
if k mod 10 <> 0 then k:=k div 10
else begin
ka:=ka+1;
k:=k div 10;
end;

write (ka);
end.