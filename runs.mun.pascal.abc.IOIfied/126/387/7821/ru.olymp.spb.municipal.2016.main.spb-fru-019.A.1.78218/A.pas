program A;
var k:longint;
count:integer;
begin 
read(k);
 while (k mod 10=0) do begin
  k:=k div 10;
 end;
 count:=0;
 while (k<>0) do begin
  if (k mod 10=0) then
  count:=count+1;
  k:=k div 10;
 end; 
 write(count)
end.  