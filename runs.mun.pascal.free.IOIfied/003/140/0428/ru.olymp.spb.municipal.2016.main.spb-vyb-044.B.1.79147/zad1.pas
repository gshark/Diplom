var n,q,p:byte; x,z,y,k:real; i,t,j:integer;
begin
        readln(n,q,p);
        x:=1/n;
        y:=1/q;
        z:=1/p;
        for i:=1 to n-1 do
                for j:=1 to i do begin
                k:=j/i;
                 if k>y then
                        if k<z then writeln(j,'/',i);
                end;
                readln

end.
