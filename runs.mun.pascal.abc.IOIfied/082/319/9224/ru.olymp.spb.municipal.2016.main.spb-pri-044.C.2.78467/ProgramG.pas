var n,i,j:integer;
begin
  readln(n);
  
  for i:=1 to n do
  begin
    for j:= 1 to n do
      
        if (i = j) or (j = (n+1) - i) then write('a')
        else if ((j + 1 < n) and (i = j+1)) or ((j - 1> 0) and (i = j-1)) or 
                ((j + 1 < n) and ((n+1) - i = j+1)) or ((j - 1 >0) and ((n+1) - i = j-1))or6
         ((i = n) and (j = n-1)) or ((i = 1) and (j = n-1)) then write('b')
        else write('c');
     
  writeln();
  end;
  
end.