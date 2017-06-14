var
a1,b,c,n,m: integer;
begin
read(n,b,c);
a1:=1;
m:=1;

 
while a1 < n do begin 
while m < n do begin

 if (1/b < a1/m) and (a1/m < 1/c)then begin
 write(a1 + '/');
 writeln(m);
 m:=m+1;
 end;
 
  if (1/b <> a1/m) or (a1/m <> 1/c)then
 m:= m + 1;
 
 end;
  a1:=a1+1;
  m:=1;
  end;
 end.
