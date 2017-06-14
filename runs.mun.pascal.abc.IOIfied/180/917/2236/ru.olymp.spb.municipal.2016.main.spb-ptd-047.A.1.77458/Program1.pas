var
l,k : integer;
n : string;
begin
  l:=1;
  readln (n);
  while l<length(n) do
  if n[l]='0' then 
  k:=k+1;
  
  writeln (k);
  
end.