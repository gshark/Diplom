Program p1;
var a,b,c,d,k: integer;
begin read (k);
a:=k;
b:=0;
c:=0;
d:=0;
while (c=0) do  if (a mod 10 <> 0) then c:=1 else a:=a div 10;
while (a>0) do
  begin
  if (a mod 10 = 0) then d:=d+1;
  a:=a div 10;
  end;
 writeln (d);
 end.