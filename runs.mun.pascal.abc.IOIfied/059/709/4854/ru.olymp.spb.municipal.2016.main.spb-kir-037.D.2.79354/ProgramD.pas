program d;
var i,k,z,ch,n,r:integer;
a:array [1..10] of boolean;
b:array [1..10] of byte;
procedure rec(l:integer);
var i:integer;

begin
if l>n then 
begin
z:=0;
for i:=1 to n-1 do
  z:=z+b[i]*b[i+1];
  if z mod k=0 then inc(ch);
   end
else 
begin
for i:=1 to n do
    if a[i]=false then
   begin
   b[l]:=i;
   rec(l+1);
   a[i]:=true;
   end;
 end;
end;

begin
readln(n,k);
rec(1);
writeln(ch);
end.