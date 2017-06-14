program sqr;

var
  a: array[1..100, 1..100] of integer;
  i, n, k, l: 1..100;

begin
  read(n);
  for k := 1 to n do
  begin
    for i := 1 to n do
    begin
      if abs(i - k) <= abs(n - i - k + 1) then
        a[i, k] := abs(i - k) + 97
      else
        a[i, k] := abs(n - i - k + 1) + 97;
        while a[i,k]>122 do
        a[i,k]:=a[i,k]-26;
      write(chr(a[i,k]));
    end;
    writeln;
  end;
end.