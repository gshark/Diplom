var k,n,a,b,c,i:integer;
begin 
  readln(k);
  n:=0;
  a:=k div 10;
  if k mod 10 = 0 then n:=n+1
    else writeln(n);
  b:=a div 10;
  if a mod 10 = 0 then n:=n+1
    else writeln(n);
  c:=b div 10;
  if b mod 10 = 0 then n:=n+1
    else writeln(n);
end.