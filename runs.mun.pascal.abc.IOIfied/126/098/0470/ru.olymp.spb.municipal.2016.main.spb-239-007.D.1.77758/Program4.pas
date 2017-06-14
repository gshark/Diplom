var
  n, k, i, s,kr: integer;
  a: array[1..10] of integer;
  f:boolean;

begin
  {}read(n, k);
  s := 0;
  for i := 1 to n do
    a[i] := i;
  s := 1;{}
  if n=2 then
    if (1*2 mod k)=0 then s:=2;
  
  writeln(s);
end.