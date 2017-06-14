var
  n, l, j, i :longint;
  a : array[1..100, 1..100] of integer;
begin
  read(n);
  l := n div 2 + n mod 2;
  //writeln(l);
  
  for i:= 1 to l do begin
    for j:= 1 to i do begin
      a[i, j] := (i - j) mod 26;
    end;
  end;
  
  for i:= 1 to l do begin
    for j:= i to l do begin
      a[i, j] := a[l + 1 - i, l + 1 - j];
    end;
  end;
  
  for i:= l + 1 - n mod 2 to n do begin
    for j:= 1 to l do begin
      a[i, j] := a[n + 1 - i, j];
    end;
  end;
  
  for i:= 1 to n do begin
    for j:= l + 1 - n mod 2 to n do begin
      a[i, j] := a[i, n + 1 - j];
    end;
  end;
  
  for i:= 1 to n do begin
    for j:= 1 to n do begin
      write(chr(a[i, j] + 97));
    end;
    writeln;
  end;
  
end.