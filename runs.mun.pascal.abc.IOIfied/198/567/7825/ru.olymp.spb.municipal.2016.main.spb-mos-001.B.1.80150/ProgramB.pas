program pb;
var
  i,h , g, n, p, q: integer;
  c: boolean;
begin
  readln(n, p, q);
  
  for i:=1 to n do
    for g:=0 to n-1 do
    begin
      c:= true;
      for h:=2 to i do
        if (g mod h = 0) and (i mod h = 0) then
          c:= false;
      if (c = true) and (g < i) and (1/p < g/i) and (g/i < 1/q) and (g mod i <> 0) then
        writeln(g, '/', i);
    end;
end.
        
      
  
  