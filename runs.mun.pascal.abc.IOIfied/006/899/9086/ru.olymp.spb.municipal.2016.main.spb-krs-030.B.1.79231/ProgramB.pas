var
n, i, p, q, a, b  : byte;
begin
readln(n, p, q);
b:=n;
while b>1 do begin
a:=1;
while a<b do begin 
if(1/p<a/b) and (1/q>a/b)  and (b mod a<>0) then begin
for i:=2 to a do begin 
if not ((a mod i=0)) and ((b mod i =0)) then writeln(a,'/',b);
end;
end;
a:=a+1;
end;
b:=b-1;
end;
end.