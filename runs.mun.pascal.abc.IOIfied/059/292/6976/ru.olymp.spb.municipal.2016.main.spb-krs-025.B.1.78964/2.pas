Var n,p,q,x,y:integer;
Begin
read(n);
read(p);
read(q);
for x:=1 to n do
Begin
for y:=1 to n-1 do begin
if ((x/y)>(1/p)) and ((x/y) <(1/q)) and ((x mod y) <>0) then
Begin
write(x,'/',y,' ');
end;
end;
end;
end.