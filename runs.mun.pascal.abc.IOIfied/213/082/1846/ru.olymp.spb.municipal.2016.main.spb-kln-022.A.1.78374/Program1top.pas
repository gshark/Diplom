program qq;
var
 c:String;a,i,t,k,q: integer;
Characters : array of Char;
begin
read(a);
SetLength(Characters,a.ToString.Length);
Characters:=a.ToString.ToCharArray;
for i:=0 to a.ToString.Length do
begin
if Characters[i] <> '0' then
break;
t:=i;
end;
for i:=a.ToString.Length-1 downto 0 do
begin
if Characters[i] <> '0' then
break;
k:=i-1;
end;
for i:=t to k do
if Characters[i] = '0' then
q:=q+1;
writeln(q);
end.