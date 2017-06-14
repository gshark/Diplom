var
  i, j, r, c, q: integer;
  lx, ly: integer;
  x, y: integer;
  n: array[1..100]of integer;

begin
  readln(r, c, q);
  
  for i := 1 to q do
    read(n[i]);
  
  
  
  for i := 1 to q do
  begin
    x := 1;
    y := 1;
    lx := 1;
    ly := 1;
    for j := 1 to n[i] do
    begin
      x -= 1;
      y += 1;
      
      if (x <= 0) then begin y := 1; x := lx; lx += 1; end;
      if (y >= r + 1) then begin y := 1; x := lx; lx += 1; end;
      
      if (x > c) then
        while not(x <= c) do
        begin
          x -= 1;
          y += 1;
        end;
    end;
    
    writeln(y, ' ', x);
  end;
  
end.