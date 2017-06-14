program z1;
var s:String;
i, c:integer;
begin
readln(s);
for i:=length(s) downto 0 do begin
if s[i]='0' then delete(s, i, 1) else break;
end;

for i:=1 to length(s) do
if s[i]='0' then inc(c);

writeln(c); 
end.
