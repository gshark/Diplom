program A;
var k,i,o: integer;
begin
   readln(k);
   i:=0;
   if k mod 10=0 then
      repeat
      k:=k div 10;
      until k mod 10<>0;
   if k mod 10<>0 then 
         repeat
            o:=k mod 10;
            if o=0 then i:=i+1;
            k:=k div 10;
         until k=0;   
   writeln(i);   
end.