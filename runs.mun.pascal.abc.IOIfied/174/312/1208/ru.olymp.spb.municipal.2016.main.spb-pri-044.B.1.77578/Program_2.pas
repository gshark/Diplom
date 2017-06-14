var n,v,i,j:integer;
    p,q,c:real;
    a,b:array [1..100] of real;
begin
  v:=1;
  read(n,p,q);
  p := 1 / p;
  q := 1 / q;
  for i:= 1 to n-1 do
    for j:= 1 to i do 
    begin 
      c:= j / i;
      if (trunc(c)  = 0) and (c > p) and (c < q) then
      begin
        a[v]:=i;
        b[v]:=j;
        inc(v);
      end;
    end;  
  for i:=1 to v-1 do writeln(b[i], '/', a[i]); 
end.