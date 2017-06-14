program a1;
  var n,k,s: integer;
begin
  readln(k);
    repeat
      repeat 
      s:=k mod 10;
      if k mod 10<>0
      then k:=k*10; 
      k:=k div 10;
    until k mod 10>0;
      repeat 
      s:=k mod 10; 
      k:=k div 10; 
      if s=0 then n:=n+1;
    until k mod 10>0;
    until k mod 10>0;
  writeln ('Красота введенного числа:', n);
end.