
var
  n: integer; 
  p: integer; 
  q: integer;
  X: integer;
  y: integer;
  i: integer;

begin
  println('Enter your number:');
  readln(n);
  println('Enter your number:');
  readln(p);
  println('Enter your number:');
  readln(q);
  x := 1;
  while x < n do
    for i := 1 to n do
    begin
      if(1 / p < i / x) and (i / x < 1 / q) then
      begin
        println(i, '/', x);
      end;
    end;
  
  
end.