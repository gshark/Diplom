Program Prog_d;
var a : array[1..11] of integer;
var i, j, h, k, n, n2, res, sum : integer;
begin
read(n, k);
sum:=0;
n2:=1;
for i:=1 to n do
   n2:=n2*i;
for i:=1 to n do
   a[i]:=i;
for j:=1 to n do   
for i:=-n to -2 do
begin
a[11]:=a[(-i)];
a[(-i)]:=a[(-i)-1];
a[(-i)-1]:=a[11];
for h:=1 to n-1 do
   sum:=sum+a[h]*a[h+1];
if sum mod k = 0 then
   res:=res+1;
sum:=0;   
end;
writeln(res);  
end.