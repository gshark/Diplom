program z1;
var n,q,p,f,a,b:real; c:integer;
begin
  read(n,p,q);
  a:=1;
  b:=1;
  c:=20;
  while c > 0 do begin
  b:=b+1;
  f:=a/b;
  If (b < n) and (a < n) and (f > 1/p) and (f < 1/q) then writeln(a,'/',b,' ');
  If b >= n then begin
    b:=(b-n)+ 2;
    a:=a+1;
  c:=c-1;
  end;
end;
end.