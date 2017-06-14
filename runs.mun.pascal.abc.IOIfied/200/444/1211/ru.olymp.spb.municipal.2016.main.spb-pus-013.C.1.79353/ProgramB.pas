var 
a:array[1..100,1..100] of string;
n,i,j,k:integer;
begin
read(n);


for i:=1 to n do begin 
    for j:=1 to n do
        a[i,j]:='.';
end;
       
for i:=1 to n do a[i,i]:='a';
k:=n;
for i:=1 to n do begin a[i,k]:='a';
k:=k-1;
end;

{      
for i:=1 to n do begin 
    for j:=1 to n do
        if i=j then a[i,j]:='a';       
        end;
        
for i:=1 to 5 do begin 
    for j:=n downto 1 do
        :='a';       
        end;}
        

for i:=1 to n do begin 
    for j:=1 to n do
        write(a[i,j]);
        writeln;
        end;
        
end.