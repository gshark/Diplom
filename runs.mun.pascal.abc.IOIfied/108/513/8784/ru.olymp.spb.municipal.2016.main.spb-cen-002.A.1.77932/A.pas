var
  k, s: integer;
Begin
  readln(k);
  s := 0;
  while(k mod 10 = 0) do k := k div 10;
  while(k > 0) do 
  begin
   k := k div 10;
   if(k mod 10 = 0) then s := s + 1;
  end;
  writeln(s-1);
End.