var k,l:integer;
    a:string;
begin
read(a);
l:=length(a);
while copy(a,l,1)='0' do begin
                         delete(a,l,1);
                         l:=length(a);
                         end;
while copy(a,1,1)='0' do delete(a,1,1);
for l:=1 to length(a) do if copy(a,l,1)='0' then k:=k+1;
write(k);
end.                         
                         