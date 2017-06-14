var n,p,q,i,l:integer;
pr,qr:real;
begin
read(n,p,q);
pr:=1/p;
qr:=1/q;
for  i:=1 to n-1 do
    for  l:=1 to n-2 do
        if ((l/i)>pr) and ((l/i)<qr) then writeln(l,'/',i);
end.