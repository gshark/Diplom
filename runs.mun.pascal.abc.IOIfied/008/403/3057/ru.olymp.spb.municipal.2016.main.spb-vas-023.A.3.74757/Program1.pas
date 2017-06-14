program first;
var
n,k,ch:longint;
i,pr:integer;
begin
readln (k);
ch:=0;
pr:=0;
while k>0 do begin
  n:=k mod 10;
  if n <> 0 then pr:=1;
  if (n = 0) and (pr=1) then ch:=ch+1;
  k:=k div 10;
end;
write (ch);
end.