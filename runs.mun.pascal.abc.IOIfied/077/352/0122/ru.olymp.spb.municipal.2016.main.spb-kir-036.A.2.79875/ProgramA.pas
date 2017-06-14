Program Program_A;
var k,res : longint;
var b : boolean;
begin
b:=false;
readln(k);
while k div 10 <> 0 do
begin
if k mod 10 > 0 then
   b:=true;
if(k mod 10 = 0)and(b=true)then
   res:=res+1;
k:=k div 10;
end;
write(res);
end.