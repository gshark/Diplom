var
n, i, j: longint;
table: array [,] of longint;
begin
  read(n);
  SetLength(table, n, n);
  for i:= 0 to (n - 1) div 2 do begin
    for j:= 0 to (n - 1) div 2 do begin
      table[i, j]:= abs(i - j) mod 26;
      table[n - 1 - i, j]:= abs(i - j) mod 26;
      table[i, n - 1 - j]:= abs(i - j) mod 26;
      table[n - i - 1, n - 1 - j]:= abs(i - j) mod 26;
    end;
  end;
  for i:= 0 to n - 1 do begin
    if i <> 0 then begin
      writeln;
    end;
    for j:=0 to n - 1 do begin
      write(chr(table[i, j] + 97));
    end;
  end;
end.
      
  
  
  