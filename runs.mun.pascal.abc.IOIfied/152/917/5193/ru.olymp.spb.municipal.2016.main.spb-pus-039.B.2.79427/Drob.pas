
var
  n: integer; 
  p: integer; 
  q: integer;
  X: integer;
  y: integer;
  i: integer;

begin
  readln(n);
  readln(p);
  readln(q);
  x := 1;
  while x < n do
    for i := 1 to n do
    begin
      if(1 / p < i / x) and (i / x < 1 / q) then
      begin
        printlns(i, '/', x);
      end;
    end;
  
  
end.