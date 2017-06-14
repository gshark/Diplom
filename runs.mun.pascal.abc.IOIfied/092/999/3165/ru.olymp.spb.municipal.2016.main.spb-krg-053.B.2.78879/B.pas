var n,p,q,i,k,no:integer;
begin
read(n,p,q);
for i:=1 to n-1 do 
for k:=1 to i do
if (i-k*q>0)and (i-k*p<0) then begin
write(k,'/',i);
writeln;
end;
end.
