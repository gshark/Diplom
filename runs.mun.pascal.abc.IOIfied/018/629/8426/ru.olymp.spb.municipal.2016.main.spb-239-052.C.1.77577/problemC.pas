var
  a: array[1..1001] of array [1..1001] of char;
  b, c, d, n: integer;

begin
  read(n);
  for b := 1 to n do 
  begin
    for c := 1 to n do
      a[b, c] := '.';
  end;
  for b := 1 to n do 
  begin
    a[b, b] := 'a';
    a[b, n + -b + 1] := 'a';
  end;
  for d := 2 to (n + 1 div 2) do 
  begin
    for b := 1 to n + 1 - d do 
    begin
      if a[d -1+b, b] = '.' then
        a[d -1+b, b] := char(ord('a') + d - 1);
    end;
    for b := 1 to n +1 -d do 
    begin
      if a[b, d -1+b] = '.' then
        a[b,d-1+b] := char(ord('a') + d - 1);
    end; 
    for b := 1 to n +1-d do 
    begin
      if a[n - (d + b - 1) + 1, b] = '.' then
        a[n - (d + b - 1) + 1, b] := char(ord('a') + d - 1);
    end;
    for b := 1 to n - d + 1 do 
    begin
      if a[n - b + 1, (d + b - 1)] = '.' then
        a[n - b + 1, (d + b - 1)] := char(ord('a') + d - 1);
    end;  
  end;
  for b := 1 to n do 
  begin
    for c := 1 to n do
      write(a[b, c]);
    writeln();
  end;
end.