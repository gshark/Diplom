var n,p,q,i,k,no:integer;
function NOD(a,b:integer):integer;
begin
repeat
if a>b then a:=a-b
else b:=b-a;
until (a=0) or (b=0);
NOD:=a+b;
end; 
begin
read(n,p,q);
for i:=1 to n-1 do 
for k:=1 to i do
if (i-k*q>0)and (i-k*p<0) then begin
if NOD(i,k)<>0 then
write(k,'/',i);
writeln;
end;
end.
