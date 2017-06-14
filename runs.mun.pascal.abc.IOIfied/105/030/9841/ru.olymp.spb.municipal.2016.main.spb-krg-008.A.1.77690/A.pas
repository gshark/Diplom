var a, k: integer;
  f:boolean;
begin
  f:=false;
  a:=0;
  readln(k);
  while k<>0 do
  begin
   if (k mod 10 =0) and f  then
    a:=a+1
  else
   if k mod 10<> 0 then f:=true;
  k:=k div 10
  end;
  writeln(a)
end.