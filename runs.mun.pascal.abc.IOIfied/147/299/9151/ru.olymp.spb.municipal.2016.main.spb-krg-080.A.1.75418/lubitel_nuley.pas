Program lubitel_nulei;
Var k, a :Integer;
Begin
read(k);
a:=0;
while (k div 10>1) do begin
if (k mod 10=0) then
while k mod 10=0 do begin
k:=k div 10
end;
if (k mod 10>0) then while k mod 10<>0 do begin
a:=a+1;
k:=k div 10;
end;
end;
writeln (a);
end.
