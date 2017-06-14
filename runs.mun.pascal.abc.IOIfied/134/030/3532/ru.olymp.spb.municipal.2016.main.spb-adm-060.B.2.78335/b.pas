var chet,i,k,l,p,n,o,q: integer;
    p1,f1,q1: real;
    a:array[1..10000] of integer;
    b:array[1..10000] of integer;
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
            if (f1<q1) and (f1>p1) and (chet=0)  then begin
            o:=o+1;
            a[o]:=k;
            b[o]:=i;
            end;    
            chet:=0;
        end;
    end;
    k:=1;
    while k=1 do begin
        k:=0;
        for i:=1 to o-1 do begin
            p1:=a[i]/b[i];
            q1:=a[i+1]/b[i+1];
            if p1>q1 then begin
                n:=a[i];
                a[i]:=a[i+1];
                a[i+1]:=n;
                n:=b[i];
                b[i]:=b[i+1];
                b[i+1]:=n;
                k:=1;
            end;
        end;
    end;
    for i:=1 to o do
        writeln(a[i],'/',b[i]);
end.