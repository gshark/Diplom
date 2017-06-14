Program pr1;
var x,s: integer;
Begin
s:=0;
Readln(x);
while x<>0 do 
 if x mod 10= 0 then x:=x div 10 
 else 
  while x <>0 do
   if x mod 10 = 0 then begin s:=s+1;x:=x div 10; end else x:=x div 10;
writeln(s);
end.
  
   
   