program prgB;

var
  n, f: byte;
  k: smallint;
  v, i, j, s: integer;
  say: boolean;
  a: array[1..10] of byte;

procedure func(m: integer);
var
  i, j, s: integer;
begin
  a[m] := 1;
  while a[m] <= n do 
  begin
    if m < n then
    begin
        func(m+1);
    end
      else
    begin
      say := true;
      for i := 1 to n - 1 do
        for j := i + 1 to n do if a[i] = a[j] then say := false;
      
      s := 0;
      for i := 1 to n - 1 do s := s + a[i] * a[i + 1];
      if say and ((s mod k) = 0) then v := v + 1;
      
      a[m] := a[m] + 1;
    end;
  end;
  
  s := 0;
  for i := 1 to n do s := s + a[i];
  if s <= n * n then
    for i := m downto 1 do
    begin
      if (a[i]<>3) and (i>1) then a[i - 1] := a[i - 1] + (a[i] div n);
      if a[i]<>3 then a[i] := a[i] mod n;
    end
    else writeln(v);
end;

begin
  readln(n, k);
  
  f := 1;
  v := 0;
  for i := 1 to 10 do a[i] := 1;
  func(1);
  writeln(v);
end.