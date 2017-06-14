var n, i, j, k1, k2:longint;

begin
readln(n);
  for i:=1 to n do begin
    for j:=1 to n do begin
      k1 := abs(i - j);
      k2 := abs(i + j - n - 1);
      if (k1 < k2) then
        k2 := k1;
      write(chr(ord('a') + k2 mod 26));
    end;
    writeln;
  end;
end.