program drobi;
var n,p,q,f:integer;
i,x:integer;
begin
readln(n,p,q);
for i:=1 to n do begin
                 for x:=1 to n do begin

                                  if (1/p)<(x/i)
                                  then if (x/i)<(1/q)
                                       then writeln(x,'/',i);
                                       end;
                 end;

end.