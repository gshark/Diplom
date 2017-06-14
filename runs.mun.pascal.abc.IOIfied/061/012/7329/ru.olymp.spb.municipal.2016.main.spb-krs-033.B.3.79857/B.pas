program qq;
procedure swap(var x,y:integer);
   var t:integer;
 begin
    t := x;
    x := y;
    y := t
 end;
 procedure swap1(var x,y:string);
   var t:string;
 begin
    t := x;
    x := y;
    y := t
 end;
function nod(a,b:real):real;
var k:real;
begin
while(a<>b)do
if a>b then a:=a-b
else b:=b-a;
nod:=a;
end;
var n,p,q,z,u,y,w:integer;
i,k:integer;
m:array[1..10000] of real;
m1:array[1..10000] of string;
begin
z:=1;
k:=1;
readln(n,p,q);
while(k<=n)do
begin
i:=1;
while(i<=k)do
begin
if((nod(i,k)=1)and(1/p<i/k)and(i/k<1/q))then 
begin 
//writeln(i,'/',k);
m1[z]:=chr(i+ord('0'))+'/'+chr(ord(k)+ord('0'));
m[z]:=i/k;
//writeln(m[z]);
z:=z+1;
end;
i:=i+1;
end;
k:=k+1;
end;

for u:=1 to z-1 do
for y:=1 to z-u do
if m[y]>m[y+1] then
begin
swap(m[y],m[y+1]);
swap(m1[y],m1[y+1])
end;

for u:=2 to z do writeln(m1[u]);


end.