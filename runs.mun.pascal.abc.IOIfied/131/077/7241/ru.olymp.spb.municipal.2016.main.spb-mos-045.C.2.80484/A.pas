var
n,i,j,x1,x2:longint;
begin
readln(n);
for i:=1 to n do begin
x1:=i;
x2:=n-i+1;
for j:=1 to n do begin
if x1>x2 then swap(x1,x2);
if abs(x1-j)<(x2-j)then
  if (abs(x1-j)+1)mod 26=0 then write(chr(ord('a')-1+26)) else
  write(chr(ord('a')-1+(abs(x1-j)+1)mod 26))
  else if (abs(x2-j)+1) mod 26=0 then write(chr(ord('a')-1+26)) else
  write(chr(ord('a')-1+(abs(x2-j)+1)mod 26));
end;
writeln;
end;
end.
