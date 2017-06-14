var n,i,j:integer;
begin
  readln(n);
  
  for i:=1 to n do
  begin
    for j:= 1 to n do
      
        if (i = j) or (j = (n+1) - i) then write('a')
        else if ((j + 1 < n) and (i = j+1)) or ((j - 1> 0) and (i = j-1)) or 
                ((j + 1 < n) and ((n+1) - i = j+1)) or ((j - 1 >0) and ((n+1) - i = j-1))or
         ((i = n) and (j = n-1)) or ((i = 1) and (j = n-1)) then write('b')
       else if ((j + 2 < n) and (i = j+2)) or ((j - 2> 0) and (i = j-2)) or 
                ((j + 2 < n) and ((n+2) - i = j+2)) or ((j - 2 >0) and ((n+1) - i = j-2))or
         ((i = n) and (j = n-2)) or ((i = 1) and (j = n-2))or ((j = 1) and (i = n-2)) then write('c')
        
        {else if ((j + 3 < n) and (i = j+3)) or ((j - 3> 0) and (i = j-3)) or
                ((j + 3 < n) and ((n+3) - i = j+3)) or ((j - 3 >0) and ((n+3) - i = j-3))or
         ((i = n) and (j = n-3)) or ((i = 1) and (j = n-3))or ((j = 1) and (i = n-3)) then write('d')}
         else write('d');
  writeln();
  end;
  
end.