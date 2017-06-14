program B;
var n,p,q,i,u,y,x,z,a,c:integer;
begin
readln(n,p,q);
for y:= 1 to (n-1)*(n-2) do begin
    z := 1;
    c := 1;
    for i:= 1 to (n-1) do
        for u:= 1 to (i-1) do
            if ((1/p) < (u/i)) and ((u/i) < (1/q)) then begin
                if a <> 0 then
                    if ((x/a) < (u/i)) and ((u/i) < (z/c)) then begin
                        z := u;
                        c := i;
                    end;
                if a = 0 then
                    if ((u/i) < (z/c)) then begin
                        z := u;
                        c := i;
                    end;
            end;
    if (z <> 1) and (c <> 1) then begin
        writeln(z,'/',c);
        x := z;
        a := c;
    end;
end;
end.