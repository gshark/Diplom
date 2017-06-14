Program P123;
var n,p,q,i,j,z,d:integer;
b,c, v:real;
Begin 
read(n, p, q);
b:=1/p;
c:=1/q;
d:=0;
for i:=1 to n-1 do begin
    for j:=i+1 to n do begin v:=i/j;
                            if (v<c) and (b<v) then
                                                begin z:=2; while z<>n do begin if  (i mod z=0) and (j mod z=0)then begin d:=1;
                                                                                                  z:=n;
                                                                                                  end
                                                           else z:=z+1;
                                                    end;
                              
                              if d<>1 then writeln(i,'/',j);
                              d:=0;
                              end;
                              end;
                              
                        end;
                        End.
                                                    