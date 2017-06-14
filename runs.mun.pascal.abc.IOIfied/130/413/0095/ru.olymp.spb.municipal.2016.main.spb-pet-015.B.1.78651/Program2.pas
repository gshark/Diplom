var
i, N, p, q, f1, f2, j:integer;
begin
read(N, p, q);
for i:=1 to N-1 do 
for j:=N-1 downto 1 do 
begin
if (1/p < i/j) and (i/j < 1/q) then
writeln(i, '/', j);
end;
end.