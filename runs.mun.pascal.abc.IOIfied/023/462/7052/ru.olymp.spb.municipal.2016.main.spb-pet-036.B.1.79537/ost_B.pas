var 
  f             :real;
  n,q,p,a,i,g,b   :integer;
begin
  write('n=');
  repeat readln(n);
    until (n<=100)and(n>=1);
  write('p=');
  repeat readln(p);
    until (p<=100)and(p>=1);
  write('q=');
  repeat readln(q);
    until (q<=100)and(q>=1)and(q<p);
  for g:=1 to 100 do
    for i:=1 to 100 do begin
      a:=random(101);
      b:=random(n)+1;
      f:=a/b;
      
  
      if (f>1/p)and(f<1/q)and(a/(a/i)<>b/(b/i))then
        writeln(a,'/',b);
    end;
end.    