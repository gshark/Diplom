program qq;
var L:array of real;
T: array of String; 
a,b,c,d ,n,p,q,i,j:integer;
x: real;
po:String;
begin
//read(a,b,c,d);
//if a/b > c/d then
//writeln(1)
//else
//writeln(2);
read(n,p,q);
i:=0;
for c:=1 to n-1 do
begin
for b:=1 to n-1 do
begin
if (b mod c <> 0) then
if (1/p < b/c) then
if (b/c < 1/q) then
begin
i:=i+1;
SetLength(L,i);
SetLength(T,i);
L[i-1]:= b/c;
T[i-1]:=b.ToString + '/' +c.ToString;

for i:= 1 to L.Length do
begin
for j:= L.Length-1 downto i do
if(L[j-1] > L[j]) then
begin
x:= L[j-1];
L[j-1]:= L[j];
L[j]:= x;
po:= T[j-1];
T[j-1]:= T[j];
T[j]:= po;
end;

end;
end;
end;
end;
for i:=0 to T.Length-1 do
writeln(T[i]);
end.
