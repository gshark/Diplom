var
  x, y, n: integer;
  a: array[1..100, 1..100] of char;  
begin
  readln(n);
  
  for x:= 1 to n do
    for y:= 1 to n do
      a[x][y]:= '0';
  
  a[1][1]:= 'a';
  a[1][n]:= 'a';
  a[n][1]:= 'a';
  a[n][n]:= 'a';
  
  for x:= 1 to n do
  begin
    a[x][x]:= 'a';
    a[n-x+1][x]:= 'a';
  end;
  
  for x:= 2 to n-1 do 
  begin
    if a[x-1][x] = '0' then a[x-1][x]:= 'b';
    if a[x][x-1] = '0' then a[x][x-1]:= 'b';
    if a[x+1][x] = '0' then a[x+1][x]:= 'b';
    if a[x][x+1] = '0' then a[x][x+1]:= 'b';
  end;
  
  for x:= 2 to n-1 do
  begin
    a[n-x][x]:= 'b';
    a[n-x+1][x-1]:= 'b';
    a[n-x+2][x]:= 'b';
    a[n-x+1][x+1]:= 'b';
  end;
  
  for x:= 1 to n do
    for y:= 1 to n do
      if a[x][y] = '0' then a[x][y]:= 'c';
  
  for x:= 1 to n do
  begin
    for y:= 1 to n do
      write(a[x][y]);
    writeln();
  end;
end.