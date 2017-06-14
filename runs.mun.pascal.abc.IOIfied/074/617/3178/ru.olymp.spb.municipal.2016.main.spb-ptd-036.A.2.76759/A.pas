var i
,x: integer;
    k: string;
begin
readln(k);
for i:=1 to length(k) do
 begin
 if RightStr(k,1)='0' then
    delete(k,length(k),1);
 if LeftStr(k,1)='0' then
    delete(k,1,1);
 end;
for i:=1 to length(k) do
if k[i]='0' then x+=1;
writeln(x);
end.