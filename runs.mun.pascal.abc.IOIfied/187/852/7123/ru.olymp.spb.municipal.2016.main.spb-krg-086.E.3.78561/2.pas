program e;

const
  nmax = 10000;  

var
  a: array[1..nmax, 1..nmax] of integer;
  s: array[1..nmax] of integer;
  r, c, q, i, j, k, g, x, y: integer;

begin
  read(r, c, q);
  k := 0;
  
  for g := 1 to q do  
  read(s[g]);
  
  for j := 1 to (c div 2) do
  begin
    y := 1;
    x := j;
    while (x > 0) and (y <= r) do
    begin
      k := k + 1;
      a[y, x] := s[k];
      x := x - 1;
      y := y + 1;
    end;
  end;
  
  for j := 2 to (r div 2) do
  begin
    y := j;
    x := c;
    while (x > 0) and (y <= r) do
    begin
      k := k + 1;
      a[y, x] := s[k];
      x := x - 1;
      y := y + 1;
    end;
  end;  
      for g:=1 to q do
      begin
      for i := 1 to r do
        for j := 1 to c do
        begin
          if a[i, j] = g then
            writeln(i,' ', j);
        end;
      end;      
end.