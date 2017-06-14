var
  n, l, r, i, j: longint;
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
  read(n, l, r);
  for i:= 2 to n - 1 do begin
    for j:=1 to i do begin
      if ((j / i) < (1 / r))and((j / i)>(1 / l)) then writeln(j,'/',i);
    end;
  end;
end.