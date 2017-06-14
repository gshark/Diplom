var
  a: array [1..100] of integer;
  n, k, x, i, q, j, p, s: integer;

begin
  read(n, k);
  for i := 1 to n do 
    a[i] := i;
  q := 1;
  j := 2;
  p := 0;
  s := 0;
  while q <= n do
  begin
    i := 1;
    s := 0;
    for i := 1 to n-1 do 
      s := s + a[i] * a[i + 1];
    if s mod k = 0 then 
      p := p + 1;
    x := a[q];
    a[q] := a[j];
    a[j] := x;
    if j = n then
    begin
      j := 0;
      q := q + 1;
    end;
    j := j + 1;
  end;
  if n mod 2 = 0 then
  p:= p-2
  else
  p:= p-1;
  writeln(p);
end.