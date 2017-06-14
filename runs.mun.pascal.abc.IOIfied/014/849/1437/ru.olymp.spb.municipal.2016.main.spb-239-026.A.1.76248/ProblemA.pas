var
  ans,i,a:integer;
begin
  read(a);
  ans:=0;
  while ((a mod 10) = 0) do a:=a div 10;
  while (a > 0) do begin
    if ((a mod 10) = 0) then ans:=ans + 1;
    a:=a div 10;
  end;
  write(ans);
end.