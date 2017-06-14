program qq;

var
  r, c, q, i, j, k, a, l: integer;
  s: array [1..100] of string;


begin
  readln(r, c, q); 
  l := 1;
  for i := 1 to q do s[i] := '_';
  
  for k := 1 to c do 
  begin
    i := 1;
    j := k;
    
    while (i < i + j) and (i <= r) and (j <= c) do 
    begin
      read(a);
      s[l] := i + ' ' + j;
      i := i + 1;
      j := j - 1;
      l := l + 1;
    end;
    
  end;
  for k := l + 1 to q - 1 do 
  begin
    i := 2;
    j := c;
    while (i <= r) and (j <= c) do 
    begin
      read(a);
      s[l] := i + ' ' + j;
      i := i + 1;
      j := j - 1;
      l := l + 1;
    end;
    
  end;
  for i := 1 to q-1 do writeln(s[i]);
  writeln(r, ' ', c);
end.//1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20