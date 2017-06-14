program prgC;

var
  i, n, a, j: integer;
  map: array[1..100, 1..100] of char;
  z:
  char;

begin
  
  readln(n);
  for i := 1 to n do
  begin
    for j := 1 to n do map[i, j] := '.';
  end;
  
  a := Ord('a');
  
  
  for i := 1 to (n div 2) do
  begin
    for j := i + 1 to ((n div 2) + (n mod 2)) do
    begin
      z := Chr(a + ((j - i) mod 26));
      map[i, j] := z;
      map[n - j + 1, i] := z;
      map[n - i + 1, j] := z;
      map[j, i] := z;
    end;
    
    for j := ((n div 2) + (n mod 2)) downto (i + 1) do
    begin
      z := Chr(a + ((j - i) mod 26));
      map[i, n - j + 1] := z;
      map[j, n - i + 1] := z;
      map[n - j + 1, n - i + 1] := z;
      map[n - i + 1, n - j + 1] := z;
    end;
  end;
  
  
  for i := 1 to n do begin map[i, i] := 'a'; map[i, n - i + 1] := 'a'; end;
  
  
  
  for i := 1 to n do
  begin
    for j := 1 to n do write(map[i, j]);
    writeln;
  end;
end.