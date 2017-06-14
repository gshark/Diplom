Program problem1;
var i,c,k:longint; s:string;
begin
readln(k);
s:=inttostr(k);
for i:= length(s) downto 0 do
begin
if copy(s, i, 1) <> '0' then
begin
setlength(s, i);
while pos('0', s) <> 0 do
begin
if pos('0', s) <> 0 then
begin 
delete(s, pos('0', s), 1);
c:=c+1;
end;
end;
break;
end;
end;
writeln(c);
end.