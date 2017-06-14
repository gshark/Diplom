var
  k: real; 
  num: integer;

begin
  write('enter the number ---> ');
  readln(num);
  if (num mod 10 = 0) and (k = num div 10) then
    write(k);
end.