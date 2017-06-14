program p1;
var k :integer;
    i:integer;
    
begin
read(k);
while k mod 10 = 0 do
  begin
    k:=k div 10;
  end;
while k>0 do
  begin
    if k mod 10 = 0
    then i:=i+1;
    k:=k div 10;
  end;
writeln(i);
End.