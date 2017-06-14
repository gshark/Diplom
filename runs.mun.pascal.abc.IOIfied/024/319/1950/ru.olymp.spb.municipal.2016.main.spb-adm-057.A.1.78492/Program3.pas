var a,b,c,k,i:integer;
begin
readln(k);
b:=1;
if k mod 10=0 then
begin
for i:= 1 to k do
begin
k:=k div 10;
if k mod 10<>0 then break;
end;
end;
a:=k;
for i:= 1 to a do 
begin
if a div 10<>0 then b:=b+1;
a:=a div 10;
if a div 10=0 then break;
end;
if k mod 10<>0 then
begin
for i:=1 to b do
begin
k:= k div 10;
if k mod 10=0 then c:=c+1;
end;
end;
writeln(c-1);
if k=0 then c:=0
end.