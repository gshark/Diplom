function NoDivisors(a,b: integer): boolean;
begin
  result:=True;
  for var x:=2 to min(a,b) do
    if (a mod x=0) and (b mod x=0) then
    begin
      result:=False;
      break;
    end;
end;

begin
  var n,p,q: integer;
  read(n,p,q);
  for var x:=2 to n do
    for var y:=1 to x do
      if (y/x>1/p) and (y/x<1/q) and NoDivisors(x,y) then writeln(y,'/',x);
end.