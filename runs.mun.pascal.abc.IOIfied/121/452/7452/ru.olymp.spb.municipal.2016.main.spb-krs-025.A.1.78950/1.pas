Var
a,s:integer;
Begin
read(a);
s:=0;
while(a mod 10)=0 do
Begin
a:=a div 10;
end;
while (a>0) do
Begin
if (a mod 10)=0 then
begin
s:=s+1;
end;
a:=a div 10;
end;
writeln(s);
end.