var
i,k,b,c:integer;
begin
c:=0;
writeln('введите число');
read(k);
For i:=1 to 10 do
begin
If k mod 10=0 then
k:=k div 10;
end;
For i:=1 to 10 do
begin
If k>=10 then 
begin
b:=k mod 10;
If b=0 then c:=c+1;
k:=k-b;
k:=k div 10;
end;
end;
writeln(c)
end.



