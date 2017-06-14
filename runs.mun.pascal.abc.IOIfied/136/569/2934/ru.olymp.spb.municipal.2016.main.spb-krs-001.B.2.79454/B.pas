program B;
var n, p, q, z1, z2, i, j:integer;
begin
  readln(n, p, q);
  for i:=1 to n-1 do begin
    for j:=1 to i do begin
      z2:=j*p;
      z1:=1*i;
      if (z2>z1) then begin
        z2:=j*q;
        z1:=1*i;
        if (z2<z1) then begin
          writeln(j, '/', i);
      end;
    end;
  end;
  end;
 end.