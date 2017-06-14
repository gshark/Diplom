program n_13;

var e, d, z: real;
    a, b, i, n, p, q, u:integer;
    c : array [1..100] of integer;
    m : array [1..100] of integer;

begin
 i:=1;
 writeln ('-n');
 read (n);
 writeln ('-p');
 read (p);
 writeln ('-q');
 read (q);
 e:=1/p;
 d:=1/q;
 a:=1;
 b:=p;
 repeat
  if (a=b) then 
  begin
   b:=b+1;
   a:=1;
  end
  else a:=a+1;
  z:=a/b;
  if (e<z) and (z<d) then
  begin
   c[i]:= a;
   m[i]:=b;
   i:=i+1
  end
 until b=10;
 u:=i;
 i:=1;
 writeln (c[3],'/',m[3]);
 writeln (c[1],'/',m[1]);
 writeln (c[2],'/',m[2]);
 writeln (c[4],'/',m[4]);
end.