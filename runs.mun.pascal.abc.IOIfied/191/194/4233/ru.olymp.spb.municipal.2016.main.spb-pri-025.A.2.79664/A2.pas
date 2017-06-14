program z1;
var k,i:integer;

begin
 readln(k); i:=0;
 while k mod 10 = 0 do k:=k div 10;
 repeat
  if k mod 10 = 0 then inc(i);
  k:=k div 10;
 until k div 10 <= 0;
 
 writeln(i);
 
end.