var r, c, q, a, num, ost:int64;
i:longint;

function flor(x:double):longint;
begin
 flor := round(x * 100000000) div 100000000;
end;

begin
read(r, c, q);
if (r <= c) then begin
for i:=1 to q do begin
  read(a);
  if (a <= r * (r + 1) div 2) then begin
    num := flor((-1 + sqrt(1 + 8 * a)) / 2 - 0.0001);
    ost := a - num * (num + 1) div 2;
    writeln(ost,' ', num + 2 - ost);
  end
  else if (r * c + 1 - a <= r * (r + 1) div 2) then begin
    a := r * c + 1 - a;
    num := flor((-1 + sqrt(1 + 8 * a)) / 2 - 0.0001);
    ost := a - num * (num + 1) div 2;
    writeln(r + 1 - ost,' ', c + 1 - (num + 2 - ost));
  end
  else begin
    a := a - r * (r + 1) div 2 - 1;
    num := a div r;
    ost := a mod r;
    writeln(ost + 1,' ', num + r + 1 - ost)
  end;
end; 
end
else begin
for i:=1 to q do begin
  read(a);
  if (a <= c * (c + 1) div 2) then begin
    num := flor((-1 + sqrt(1 + 8 * a)) / 2 - 0.000001);
    ost := a - num * (num + 1) div 2;
    writeln(ost,' ',num + 2 - ost);
  end
  else if (r * c + 1 - a <= c * (c + 1) div 2) then begin
    a := r * c + 1 - a;
    num := flor((-1 + sqrt(1 + 8 * a)) / 2 - 0.000001);
    ost := a - num * (num + 1) div 2;
    writeln((r + 1) - (num + 2 - ost),' ', ost);
  end
  else begin
    a := a - c * (c + 1) div 2 - 1;
    num := a div c;
    ost := a mod c;
    writeln(num + ost + 2,' ', c  - ost)
  end;
end; 
end; 
end.