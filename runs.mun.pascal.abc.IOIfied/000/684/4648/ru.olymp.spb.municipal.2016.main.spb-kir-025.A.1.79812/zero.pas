program zero_lover;
var k, i, x, y, b, z, v, h, r, n, j:integer;
begin
  readln(k);
  b:=0;
  x:=1;
  z:=10;
  y:=9;
  while k mod z = 0 do begin
    x:=x+1;
      z:=z*10;
   end;
   z:=1000000000;
  while k div z = 0 do begin
  for i:=y to 1 do begin
    z:=z-;
  end;
  y:=y-1;
  end;
  h:=1;
  r:=1;
 for i:=1 to y do begin
    h:=h*10;
    write(h);
  end;
  for i:=1 to x do begin
    r:=r*10;
    write(r);
   end;
  for i:=x to y do begin
    v:=k div r;
    r:=r*10;
    if v > 0 then begin
     end
    else if v = 0 then begin
      b:=b+1;
     end;
     n:=v;
    for j:=1 to v do begin
      n:=n*10;
    end;
    k:=k - n;
   end;
   writeln('');
   writeln('');
  write(b);
 end.