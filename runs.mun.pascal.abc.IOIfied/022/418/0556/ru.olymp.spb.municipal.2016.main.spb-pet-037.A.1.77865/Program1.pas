Program pr1;
Var k,a,x,i: integer;
Begin
 Write('¬ведите число k', ' ');
 Readln(k);
 x:=0;
 While k mod 10 = 0 do
  k:= k div 10;
 a:= k div 10;
 If a>9 then
 Begin
 for i:= 1 to 9 do
  if a mod 10 = 0 then
    begin
     x:= x+1;
     a:= a div 10;
    end;
   end
  Else x:=0;
  Write('x=',x);
 End.
 
   