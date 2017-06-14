var
n, p, q, i, j, f:integer;
begin
readln(n, p, q);
 for i:=1 to (n-1) do
  begin
   for j:=1 to (n-1) do
    if ((i mod j)=0) and ((n mod j)=0) then
      f:=1;
   for j:=1 to (n-1) do
    begin
      if ((i/j)>(1/p)) and ((i/j)<(1/q)) and (f=1) then
          writeln(i, '/', j);
    end;
  end;
end.