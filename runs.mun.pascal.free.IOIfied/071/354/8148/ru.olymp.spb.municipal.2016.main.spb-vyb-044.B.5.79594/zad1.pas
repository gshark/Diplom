var n,q,p:byte; z,y,k:real; i,t,j:integer;
begin
        readln(n,q,p);
        y:=1/q;
        z:=1/p;
        for i:=1 to n do
                for j:=1 to i do begin
                k:=j/i;
                 if k>y then
                        if k<z then begin t:=2;
                                while t<100 do
                                        if (j mod t=0) and (i mod t=0) then t:=101 else t:=t+1;
                                if t=100 then writeln(j,'/',i);
                          end;
                end;
end.
