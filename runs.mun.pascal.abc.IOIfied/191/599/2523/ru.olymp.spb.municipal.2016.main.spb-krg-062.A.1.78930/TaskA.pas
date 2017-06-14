var k,i,n:integer;
var s: string;


Begin
n:=0;
readln(k);

repeat
if k mod 10 = 0 then
  k := k div 10
  else
  break;


until 1>1;
Str(k,s);

for i:=1 to length(s) do
  begin
  if s[i] = ('0') then
  inc(n);
  end;

writeln(n);
end.