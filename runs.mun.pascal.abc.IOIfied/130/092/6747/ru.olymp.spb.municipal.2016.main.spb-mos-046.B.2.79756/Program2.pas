var
  t, c, n, l, r, i, j: longint;
  a : array[1..5000, 1..2] of longint;
  
function NOK(x, y :longint): longint;
  var
    tmp : longint;
  begin
    while (x > 0)and(y > 0) do begin
      x := x mod y;
      tmp:= x;
      x:= y;
      y:= tmp;
    end;
    NOK := x;
  end;

begin
  c:= 0;
  read(n, l, r);
  for i:= 2 to n - 1 do begin
    for j:=1 to i do begin
      if ((j / i) < (1 / r))and((j / i)>(1 / l)) then begin
        inc(c);
        a[c, 1] := j;
        a[c, 2] := i;
      end;
    end;
  end;
  
  for i := 1 to c - 1 do begin
    for j := i to c do begin
      if (a[i, 1] / a[i, 2]) > (a[j, 1] / a[j, 2]) then begin
        t := a[i, 1];
        a[i, 1] := a[j, 1];
        a[j, 1] := t;
        t := a[i, 2];
        a[i, 2] := a[j, 2];
        a[j, 2] := t;
      end;
    end;
  end;
  
  for i:=1 to c do writeln(a[i, 1],'/',a[i, 2]);
end.