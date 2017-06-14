var n, p, q, i, j, k, ok, count, he:longint;
hee:double;
a, b:array[1..1000] of longint;
h:array [1..1000] of double;

begin
readln(n, p, q);
count := 0;
for i:=1 to n do begin
  for j:= 1 to i - 1 do begin
    if (j / i > 1 / p) and (j / i < 1 / q) then begin
      ok := 1;
      for k:=2 to j do begin
        if (j mod k = 0) and (i mod k = 0) then
          ok := 0;
      end;
      if (ok = 1) then begin
        inc(count);
        a[count] := j;
        b[count] := i;
        h[count] := j / i;
      end;        
    end;
  end;
end;
for i :=1 to count do begin
  for j:=1 to count do begin
    if (h[i] < h[j]) then  begin
      he := a[i];
      a[i] := a[j];
      a[j] := he;
      he := b[i];
      b[i] := b[j];
      b[j] := he;
      hee := h[i];
      h[i] := h[j];
      h[j] := hee;
    end;    
  end;
end;
for j:=1 to count do begin
  write(a[j]);
  write('/');
  write(b[j]);
  writeln;
end;
end.