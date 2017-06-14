Program pr1;
var k,x,y:integer;
BEGIN
 x:=0;
 readln(k);
 while k mod 10 = 0 do
  k:= k div 10;
 while k div 10 <> 0 do
  begin 
   if k mod 10 = 0 then 
    x:= x + 1;
   k:= k div 10;
  end;
 writeln(x);
END.