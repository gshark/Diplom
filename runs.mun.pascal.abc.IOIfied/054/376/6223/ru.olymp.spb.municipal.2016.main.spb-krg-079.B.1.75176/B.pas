program pieces;

var
  n, p, q: 1..100;
  a, b, i, k, l: integer;
  am, bm: array[1..10000] of byte;

begin
  read(n, p, q);
  i := 1;
  for a := 2 to n - 1 do
    for b := 1 to a - 1 do
      if (1 / p < b / a) and (b / a < 1 / q) then
      begin
        am[i] := a;
        bm[i] := b;
        i := i + 1;
      end;
  k := i - 1;
  for i := 1 to k - 1 do
    for l := 1 to k - 1 do
      if bm[l] / am[l] > bm[l + 1] / am[l + 1] then
      begin
        swap(am[l], am[l + 1]);
        swap(bm[l], bm[l + 1]);
      end;
  for i := 1 to k do
    writeln(bm[i], '/', am[i]);
end.