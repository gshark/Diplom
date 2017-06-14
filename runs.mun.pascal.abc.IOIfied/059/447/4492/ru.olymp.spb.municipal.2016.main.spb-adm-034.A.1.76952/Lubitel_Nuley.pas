Program Zadacha_A;
var k, answer:integer;
Begin
readln(k);
answer:=0;
While (k mod 10=0) do k:= k div 10;
While k>0 do
begin
If k mod 10 = 0 then answer := answer+1;
k:=k div 10;
end;
writeln(answer);
End.