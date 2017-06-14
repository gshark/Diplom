var k: longword; sum: byte;

begin
readln (k);
repeat k:=k div 10 until k mod 10 <> 0;
repeat 
begin
if k mod 10 = 0 then sum+=1;
k:= k div 10;
end;
until k<10;
if k = 0 then sum+=1;
writeln(sum);
end.