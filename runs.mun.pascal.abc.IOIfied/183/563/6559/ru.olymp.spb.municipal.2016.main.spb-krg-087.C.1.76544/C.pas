program abc;

var
  A: array[0..101, 0..101] of string;
  k, k2: char;
  n, i, j, l: integer;

begin
  readln(n);
  k := 'a';
  for l := 1 to 26 do
  begin
    for i := 0 to n+1 do
    begin
      for j := 0 to n+1 do
      begin
      if (A[i,j]='') or (A[i,j]='0') then
      begin
        if (i = j) then A[i, j] := k;
        if (j = n - i + 1) then A[i, j] := k;
        if A[i,j]<>k then A[i,j]:='0';
        if (A[i, j] <> k) and (i<>0) and (j<>0) and (i<>n+1) and (j<>n+1) and ((A[i + 1, j] = k2) or (A[i, j - 1] = k2) or (A[i, j + 1] = k2) or (A[i - 1, j] = k2)) then 
          A[i, j] := k;
          end;
      end;
    end;
    k := succ(k);
    k2 := pred(k);
  end;
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      write(A[i, j])
    end;
    writeln;
  end;
end.