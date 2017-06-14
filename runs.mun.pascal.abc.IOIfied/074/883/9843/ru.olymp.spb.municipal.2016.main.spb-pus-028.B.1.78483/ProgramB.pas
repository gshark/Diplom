program fractionfinder;
var p,q,f,p1,q1: real;i,o,n:integer;
begin
 readln(n,p,q);

 for i:=1 to n do
  begin
   for o:=i to n do
    begin
     if o mod i<>0 then
      begin
       f:= i/o;
       p1:= 1/p;
       q1:= 1/q;
       if (f > p1) and (f < q1) then
        writeln (i,'/',o);
      end;
    end;
  end;
end.