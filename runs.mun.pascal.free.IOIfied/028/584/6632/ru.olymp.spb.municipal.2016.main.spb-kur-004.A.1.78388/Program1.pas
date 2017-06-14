var k:longint;
var a,x:integer;
label m1,m2;
begin
k:=0;
a:=0;
x:=0;
read(k);
m1:;
if k mod 10 = 0 then
                begin
                k:=k div 10;
                goto m1;
                end;
m2:;                
if k >= 10 then
begin

a:= k mod 10;
if a<>0 then 
begin
k:=k-a;
k:=k div 10;
goto m2;
end;
if k mod 10 =0 then  
                begin 
                x:=x+1;
                k:=k div 10;
                goto m2;
                end;
end;         
write(x); 
end.