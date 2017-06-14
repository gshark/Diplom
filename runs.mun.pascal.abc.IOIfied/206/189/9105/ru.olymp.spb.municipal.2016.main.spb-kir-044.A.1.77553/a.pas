program A;
var k,n:longint;
procedure kon(k:longint);
  begin
  if k mod 10=0 then begin
    k:=k div 10;
    kon(k);
    end;
  end;
begin
read(k);
kon(k);
n:=k;
k:=0;
while n>0 do begin
  k:=k*10+(n mod 10);
  n:=n div 10;
  end;
n:=0;
kon(k);
while k>0 do begin
  if k mod 10=0 then
     n:=n+1;
  k:=k div 10;
  end;
write(n);
end.
