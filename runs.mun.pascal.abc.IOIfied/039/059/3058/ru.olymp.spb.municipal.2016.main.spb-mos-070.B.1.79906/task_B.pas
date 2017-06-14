program taskB;

var
  i, j, t, s, n, p, q: longint;
  a, b: array[1..100000] of longint;

begin
  read(n, p);
  readln(q);
  t := 1;
  for i := 1 to n - 1 do begin // соответствует примеру! иначе есть 4/10 удовл. условию (1/3 < 4/10 < 1/2 и 10 <= 10)
    for j := 1 to n - 1 do begin //because there is no 4/10 in the example(1/3 < 4/10 < 1/2 and 10 <= 10)
      if ((i / j) > (1 / p)) and ((i / j) < (1 / q)) then begin
        a[t] := i;
        b[t] := j;
        t := t + 1;
      end;
    end;
  end;
  for i := 1 to (t - 2) do begin
    for j := (i + 1) to (t - 1) do begin
      if (a[i] / b[i]) > (a[j] / b[j]) then begin
        s := a[i];
        a[i] := a[j];
        a[j] := s;
        s := b[i];
        b[i] := b[j];
        b[j] := s;
      end;
    end;
  end;
  for i := 1 to(t - 1) do begin
    writeln(a[i],'/',b[i]);
  end;
end.