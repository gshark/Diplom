Program abc;
var n,p,q,a,b,t,h,g:integer;
begin
readln(n,p,q);
while a<n do
begin
  while ((b/a)<(1/q)) and (b<a) do
  begin
    if ((1/p)<(b/a)) then
    begin
    h:=a;
    g:=b;
    while h mod g<>0 do
      begin
        t:=h;
        h:=g;
        g:=t mod g;
      end;
    if h div g=1 then writeln(b,'/',a);
    end;
    b:=b+1;
  end;
  b:=1;
  a:=a+1;
end;
end.

