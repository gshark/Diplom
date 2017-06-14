var
  a: array [1..200] of integer;
  n, k, t, c, p, b: integer;

procedure swap(var e, d: integer);
begin
  t := e;
  e := d;
  d := t;
end;

function fact(var d: integer): integer;
begin
  p := 1;
  for var i := 1 to d do 
  begin
    p := p * i;
  end;
  fact := p;
end;

begin
  read(n, k);
  for var i := 1 to n do a[i] := i; //первоначальное присвоение - а = 1, 2, 3...
  c := 0;
  for var i := 1 to fact(n) do 
  begin
    b := 0;
    for var j := 1 to n - 1 do 
    begin
      b := b + a[j] * a[j + 1];
    end;
    //writeln('a=', a[1], ' ', a[2], ' ', a[3], ' ', a[4], ' ', a[5], ' ', 'b=', b);
    if i mod 6 = 0 then begin
      swap(a[1], a[2]);
      swap(a[n - 1], a[n]);
    end
    else if i mod 2 = 0 then begin
      if (n = 2) then swap(a[n - 1], a[n])
      else swap(a[n - 2], a[n])
    end
    else swap(a[n - 1], a[n]);
    if (b mod k = 0) then c += 1;
  end;
  write(c);
end.