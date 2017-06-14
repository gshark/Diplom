Program b;
  var n, p, q, c, d, e, g, h, i:integer;
  var Z, F: array [1..1000000] of integer;
  begin
    readln (n, p, q);
    e:=0;
    for c:=1 to n do
        for d:=1 to c do
          if (d/c>1/p)and(d/c<1/q)
            then
              begin
                e:=e+1;
                Z[e]:=d;
                F[e]:=c;
              end;
    for g:=1 to e do
        if g>1 then
          begin
            i:=1;
            for h:=1 to g-1 do if (Z[g]/F[g])/(Z[h]/F[h])=1 then i:=0;
            if i=1 then writeln (Z[g], '/', F[g]);
          end
        else writeln (Z[g], '/', F[g]);
end.