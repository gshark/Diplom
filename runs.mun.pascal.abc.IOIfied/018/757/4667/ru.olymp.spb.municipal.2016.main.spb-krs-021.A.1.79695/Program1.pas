program p1;
var k,s: longint;
begin
 readln(k);
 s:=0;
 while k mod 10 = 0 do 
 begin
   k:=k div 10
   end;
 while k>0 do
 begin
  while k mod 10 = 0 do 
  begin
   k:=k div 10;
   s:=s+1
  end;
  while k mod 10 > 0 do
  begin
   k:=(k-(k mod 10))div 10
  end; 
 end;
writeln(s);
end.