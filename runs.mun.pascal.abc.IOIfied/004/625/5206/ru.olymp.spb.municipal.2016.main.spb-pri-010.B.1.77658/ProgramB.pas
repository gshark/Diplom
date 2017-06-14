program B;
var n,p,q,i1,i2: integer;
begin
   readln(n,p,q);
      for i1:=1 to n-1 do 
         for i2:=n downto 1 do 
            if (i1/i2>1/p) and (i1/i2<1/q) then writeln(i1,'/',i2); 
end.