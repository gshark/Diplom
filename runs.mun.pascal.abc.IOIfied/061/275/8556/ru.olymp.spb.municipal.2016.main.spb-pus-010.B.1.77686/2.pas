var
p,n,q,i,l: integer;
test:real;
begin

read(n,p,q);

for i:=1 to n do begin
  for l:=1 to n do begin
     test:= l/i;
     if ((l mod 2= 0) and (i mod 2 = 0)) or ((l mod 3 = 0) and (i mod 3 = 0)) then else 
     if (test >1/p) and (test < 1/q) then writeln(l,'/',i);   
  end;
end;

end.