var n,k,x:integer;
begin
readln(k);
n:=0;
x:=k mod 10;
while x=0 do
begin
k:=k div 10;
x:=k mod 10;            
end;
while k > 0 do
begin
if x=0 then n:=n+1;
            k:=k div 10;
            x:=k mod 10;
                  end;
writeln(n);
end.