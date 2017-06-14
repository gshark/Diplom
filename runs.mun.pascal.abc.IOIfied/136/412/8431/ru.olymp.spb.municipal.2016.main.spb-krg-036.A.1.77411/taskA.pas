program prog;
var n, i: integer;
str : string;
ch : char;
q : boolean;
col : integer;
ls : integer;
begin
read(n);

str := n.ToString();

for i := 1 to str.Length do
begin
ch := str.Chars[i];
if q = false then
  q := ch.CompareTo('0') <> 0;
  
if ch.CompareTo('0') <> 0 then
  ls := 0;
  
if (ch.CompareTo('0') = 0) and q then
begin
  ls += 1;
  col += 1;
end;

end;

col -= ls;
writeln(col);
end.