var
  x, y, n: integer;
  a: array[1..100, 1..100] of char;  
  k: char;
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
    if a[n-x][x] = '0' then a[n-x][x]:= 'b';
    if a[n-x+1][x-1] = '0' then a[n-x+1][x-1]:= 'b';
    if a[n-x+2][x] = '0' then a[n-x+2][x]:= 'b';
    if a[n-x+1][x+1] = '0' then a[n-x+1][x+1]:= 'b';
  end;
  
  for x:= 1 to n do
    for y:= 1 to n do
      if a[x][y] = '0' then
      begin
        if x = 1 then k:= a[x][y-1];
        if y = 1 then k:= a[x-1][y];
        if (x <> 1) and (y <> 1) then k:= a[x-1][y];
        
        if k = 'a' then a[x][y]:= 'b';
        if k = 'b' then a[x][y]:= 'c';
        if k = 'c' then a[x][y]:= 'd';
        if k = 'd' then a[x][y]:= 'e';
        if k = 'e' then a[x][y]:= 'f';
        if k = 'f' then a[x][y]:= 'g';
        if k = 'g' then a[x][y]:= 'h';
        if k = 'h' then a[x][y]:= 'i';
        if k = 'i' then a[x][y]:= 'j';
        if k = 'j' then a[x][y]:= 'k';
        if k = 'k' then a[x][y]:= 'l';
        if k = 'l' then a[x][y]:= 'm';
        if k = 'm' then a[x][y]:= 'n';
        if k = 'n' then a[x][y]:= 'o';
        if k = 'o' then a[x][y]:= 'p';
        if k = 'p' then a[x][y]:= 'q';
        if k = 'q' then a[x][y]:= 'r';
        if k = 'r' then a[x][y]:= 's';
        if k = 's' then a[x][y]:= 't';
        if k = 't' then a[x][y]:= 'u';
        if k = 'u' then a[x][y]:= 'v';
        if k = 'v' then a[x][y]:= 'w';
        if k = 'w' then a[x][y]:= 'x';
        if k = 'x' then a[x][y]:= 'y';
        if k = 'y' then a[x][y]:= 'z';
        if k = 'z' then a[x][y]:= 'a';
      end;
  
  for x:= 1 to n do
  begin
    for y:= 1 to n do
      write(a[x][y]);
    writeln();
  end;
end.