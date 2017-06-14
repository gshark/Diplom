Program third;
var n:byte;k,sum,counter,i,j:integer;
begin
read(n);
read(k);
for i:=1 to n do
begin
for j:=1 to n do
if(i<>j) then sum+=i*j;
if ((sum mod k=0)and(k<=sum)) then counter+=1;
sum:=0;
end;
writeln(counter*2);
end.





