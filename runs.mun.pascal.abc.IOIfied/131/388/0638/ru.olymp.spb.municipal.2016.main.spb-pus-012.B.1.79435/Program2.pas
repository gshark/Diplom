Var k,m,a,n,p,q,i,z: integer;
Begin
  read(n,p,q);
  for m:=1 to n do
    for a:=1 to m do begin
      if (m < a*p)and(m > q*a) then begin
        z:=0;
        for i:=2 to a do begin
          k:=a mod i;
          if (k = 0)and(m mod i = k) then z:=1;
        end;
        if z = 0 then writeln(a,'/',m); 
    end;
    end;
End.