program one;
var n,i,j,min :integer;
begin
readln(n);
for i:=1 to n do begin
for j:=1 to n do begin
 if abs((i+j)-(i+i))>abs((i+j)-(n+1)) then
                                      min:=abs((i+j)-(n+1))
                                      else
                                      min:=abs((i+j)-(i+i));
 write(chr(ord('a')+(min mod 26)));
 end;
writeln;
end;
end.