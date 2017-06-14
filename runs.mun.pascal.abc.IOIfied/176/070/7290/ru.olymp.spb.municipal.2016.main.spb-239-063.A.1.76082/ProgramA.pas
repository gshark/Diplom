uses Arrays;

var
n:string;
q,i,k:integer;
begin
read(n);
k:=0;
for i:=1 to length(n) do if n[i]<>'0' then q:=i;
for i:=1 to q do if n[i] = '0' then inc(k); 


write(k);


end.

