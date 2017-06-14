var
f, n,q:real;
i,c,p:integer;
begin
readln(n,p,q);
c:=p;
f:=0;
for i:= 1 to c do
begin
while f<n do
begin
if (f/i > 1/p) and (f/i < 1/q) then begin writeln(f,'/',i); f:=f+1; end ;//else
//begin f:=f+1;if (f/i > 1/p) and (f/i < 1/q) then begin writeln(f,'/',i); f:=f+1; end; end;
end;
end;
writeln('....');
end.