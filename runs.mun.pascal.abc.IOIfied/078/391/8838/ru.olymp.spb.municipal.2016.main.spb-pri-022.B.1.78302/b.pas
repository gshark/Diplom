var i,j,n,p,q:integer;


begin

read(n,p,q);
for i:=1 to (n-1) do
    for j:=1 to i do
    begin
    if ((j/i)>(1/p)) and ((j/i)<(1/q)) then  writeln(j,'/',i)

    
    end;


end.