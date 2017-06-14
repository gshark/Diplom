var
i, k: integer;
l: string;
begin

read(l);

i := length(l);
while l[i] = '0' do begin
  delete(l,i,1);
  i := i - 1;
end;

k:=0;
for i:=1 to length(l) do begin
  if l[i] = '0' then k:=k+1;
end;

writeln(k);

end.