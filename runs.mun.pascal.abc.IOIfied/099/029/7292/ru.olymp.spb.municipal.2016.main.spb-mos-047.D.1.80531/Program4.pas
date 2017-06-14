program abc;
var a,b,n:integer;
begin
readln(a,b);
for c:integer:=1 to a do
  for d:integer:=1 to a do
    for i:integer:=1 to a do
      if (c<>d) and (d<>i) and (i<>c) then
        if (c*i+d*i) mod b=0 then inc(n);
writeln(n);
end.
        