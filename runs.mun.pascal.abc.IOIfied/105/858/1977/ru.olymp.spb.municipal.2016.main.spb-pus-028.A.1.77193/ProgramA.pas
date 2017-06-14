program zerophilia;
var k, i, c: longint;
begin
 c:=0;
 
 readln(k);
 
 while k mod 10=0 do
  begin
   k:=k div 10;
  end;

 while k > 9 do
  begin
   if k mod 10=0 then
    c:=c+1;
    k:=k div 10;
  end;
 
 writeln (c);
end.
 