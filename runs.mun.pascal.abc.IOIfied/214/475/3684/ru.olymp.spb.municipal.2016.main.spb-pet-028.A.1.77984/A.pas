var k, k1: longint;
    a, b: integer;

begin

readln(k);

a := 0;
b := 0;

k1 := k;

 repeat
  if k mod 10 = 0 then 
    a := a + 1;
    k := k div 10;
 until k < 1;
 
 repeat
    b := b + 1;
    k1 := k1 div 10;
 until k1 mod 10 > 0;
 
 
write(a-b);

end.