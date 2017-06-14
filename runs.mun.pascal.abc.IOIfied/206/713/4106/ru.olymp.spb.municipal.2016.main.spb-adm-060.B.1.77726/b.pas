var chet,i,k,l,n,p,q: integer;
    p1,f1,q1: real;
begin
    readln(n,p,q);
    p1:=1/p;
    q1:=1/q;
    for i:=1 to n do begin
        for k:=100 downto 1 do begin
            f1:=k/i;
        for l:=2 to i do begin
            if (k mod l = 0) and (i mod l = 0) then
                chet:=1;
        end;
            if (f1<q1) and (f1>p1) and (chet=0)  then
                writeln(k,'/',i);
            chet:=0;
        end;
    end;
end.