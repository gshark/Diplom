program qwer;
var n, p, q, z, x, f :integer;
    a:array[1..101] of integer;
    b:array[1..101] of integer;
begin
readln (n,p,q);
f:=1;
        for z:=1 to n do
        begin
                for x:=1 to z-1 do
                begin
                        if ((z mod(x)) <> 0) and  ((x/z)>(1/p)) and ((x/z)<(1/q))
                        then
                        begin
                                a[f]:=x;
                                b[f]:=z;
                        end;
                        f:=f+1;
                end;
        end;
for n:=1 to f do
writeln (a[n], '/', b[n]);
readln ( )
end.