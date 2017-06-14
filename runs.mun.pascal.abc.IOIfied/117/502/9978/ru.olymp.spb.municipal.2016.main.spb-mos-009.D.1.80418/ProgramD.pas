program one;
var
i,j,k,n,s:integer;
begin
read(n,k);
for i:=1 to n do begin
for j:=i+1 to n do begin 
if ((i*j+j*(j+1))mod k =0) then s:=s+1
end;
end;
writeln(s);
end.