program nuli;
var k, b, i:longint ;
begin
read(k);
while ((k mod 10) = 0) do
    begin
k:= k div 10; 
    end;
 for i:=1 to 9 do 
 begin
 if ((k mod 10) = 0) then
 begin
 b:=b+1;
 k:=k div 10;
 end
 
//if ((k mod 10)<>0) then
else
 begin
 k:= k div 10;
end;
 if k < 10 then break;
 
 end;
 write(b);
 end.

