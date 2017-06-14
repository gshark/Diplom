var
n, v, i:integer;
type x=array [1..v] of integer;


begin
n:=0;
  readln (x);
     for i:=1 to n do
        if (x[i])=0 then n:=n+1;
     writeln(n);
end.