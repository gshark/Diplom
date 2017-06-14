var i, j, n: integer;
begin
  readln(n);
 { for i:=1 to n do
    begin
    for j:=1 to n do
    if (i=j) or (i=n-j+1) or (i=n-i) then
      write('a')
      else
      if j<i then
       if i<= n div 2+1 then
         write(chr(ord('a')+i-j))
        else
        if j<= n div 2 +1 then 
          write(chr(ord('a')+j))
          else
          write(chr(ord('a')+n-i+j))
        else
       if j<=n div 2 +1 then
             write(chr(ord('a')+j-i))
           else
             write(chr(ord('a')+n-j+i-1));
            writeln();
    end;}
    for i:=1 to n do
    begin
    for j:=1 to n do
    if (i=j) or (i=n-j+1) or (i=n-i) then
     write('a')
     else
    if((i<=n div 2+1)and(j<=n div 2 +1))or((i>=n div 2+1)and(j>=n div 2 +1))then
      if j>i then
       write(chr(ord('a')+j-i))
       else
       write(chr(ord('a')+i-j))
    else
        if j>i then
       write(chr(ord('a')+j-i-n div 2))
       else
       write(chr(ord('a')+i-j-n div 2));
  writeln();
end;
end.