var
a:string;
k,i,j:integer;
begin
readln(a);
k:=0;
while a[1] = '0' do Delete(a,1,1);
for i:=1 to length(a) do begin
if a[i] = '0' then
j:= j + 1 else begin j:=0;
end;
end;
for i:=1 to length(a) do begin
if a[i] = '0' then begin
k:= k + 1;
end;
end;
k:=k-j;
writeln(k);
end.
