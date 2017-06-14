var
  k, l:longint;
  m, p:integer;
 begin
  readln(k);
  
  p:=0;
  while k mod 10=0 do k:=k div 10;
  l:=k;
      while l>0 do
    begin
     m:=l mod 10;
     l:=l div 10;
     if m=0 then p:=p+1;
    end;
      
 writeln(p);
end.
    
      
  