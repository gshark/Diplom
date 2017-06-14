program project3;
  var a,n,p,q,x: real;
    i,b,c:integer;
begin
  readln(N,p,q);
  c:=trunc(n);
  for i:= 1 to c-1 do
  begin
    for b:=i downto 1 do
    begin
      x:=i;
      a:=b;
     if (a/x<1/q) and (a/x>1/p) then
     writeln (b,'/',i);
    end;
  end;
end.

