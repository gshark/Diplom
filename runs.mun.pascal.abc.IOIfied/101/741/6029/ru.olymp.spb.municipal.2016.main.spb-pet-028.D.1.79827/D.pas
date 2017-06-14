var n, i, kr, k: integer;
    a: array [1..10] of integer;

begin

read(n, k);
kr := 0;

  for i := 1 to n do // заполнение массива
    a[i] := i;

  for i := 1 to n-1 do
   n := n*i;
  
  for i := 1 to n-1 do
    begin
      kr := kr + a[i]*a[i+1];
      
    end;
   
  write(kr); 
//  write(k);
  
  
  
end.