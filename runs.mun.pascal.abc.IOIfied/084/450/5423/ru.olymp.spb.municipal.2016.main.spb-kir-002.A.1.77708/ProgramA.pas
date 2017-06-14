program A;

var
  k, z: longint;
  n: integer;

begin
  n := 0;
  readln(k);
  z := k;
  
  while z mod 10 = 0 do
  begin
    n := n - 1;
    z := z div 10;
  end;
  
  while k div 10 > 0 do
  begin
    if k mod 10 = 0 then
      n := n + 1;
    k := k div 10;
  end;
  
  writeln(n);
end.