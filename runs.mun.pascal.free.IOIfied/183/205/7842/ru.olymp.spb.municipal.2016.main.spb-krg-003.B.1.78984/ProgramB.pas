Program BoikoIvB;
Var n,p,q,i,e,g:integer;
Begin
read(n, p, q);
for i:=2 to n do while (1/p<e/i)and(e/i<1/q) do for g:=1 to 9 do if e mod g <> i mod g then write(e, '/', i);
end.
