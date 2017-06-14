var n,p,q,z,i:shortint;                 
begin
read(n,p,q);
for i:=1 to (n-1) do
              for z:=1 to (n-1) do if ((1/p)<(i/z)) and ((1/q)>(i/z)) and (z mod i<>0) then writeln(i,'/',z);
end.