function NOD (a, b: integer) : integer;
  begin
  while a<>b do
  if a>b then a:= a-b else b:= b-a;
  NOD:=a;
  end;
var
l, k, n, p, q: integer;

begin 
  write ('n=');
  readln (n);
  write ('p=');
  readln (p);
  write ('q=');
  readln (q);
  for l:=2 to n do 
  for k:=1 to l-1 do
  begin
    if (NOD (l, k) = 1) and (k/l>1/p) and (k/l<1/q) then
    writeln (k, '/', l);
  end;
end.