Program pr1;
Var k,a,x,i: integer;
Begin
 Readln(k);
 x:=0;
 While k mod 10 = 0 do
 k:= k div 10;
 a:= k div 10;
 While (a mod 10) > 0 do a:= a div 10;
 If a>9 then
 Begin
 for i:= 1 to 9 do
 begin
 if a mod 10 = 0 then
 begin
 x:= x+1;
 a:= a div 10;
 end
 else if a>9 then a:= a div 10;
 end
 end
 Else x:=0;
 Write(x);
 End.
 
   