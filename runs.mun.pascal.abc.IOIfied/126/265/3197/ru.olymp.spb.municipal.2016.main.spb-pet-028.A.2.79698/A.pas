var k, k1, k2: longint;
    a, b: integer;
 
begin
 
readln(k);
 
a := 0;
b := 0;
 
k1 := k;
k2 := k;
 
 repeat
  if k mod 10 = 0 then a := a + 1;
  k := k div 10;
 until k < 1;
  
 repeat
    k1 := k1 div 10;
    b := b + 1;
 until k1 mod 10 > 0;
 
 if k2 mod 10 > 0 then b := 0; 
 
if a = 0 then write(0)
else write(a-b);
 
end.
