Var a: array [0..100, 0..100] of char;
    i,j,c,n:integer;
begin
readln(n);
n:=n-1;
for i:=0 to n div 2 do
    begin
    for j:=0 to n div 2 do
        begin
        if i>j then
        c:=i-j
        else
        c:=j-i;
        if c>25 then
        c:=c - (26 * (c div 26));
        a[i,j]:= chr(97+c);
        a[n-i,n-j]:= chr(97+c);
        a[n-i,j]:=chr(97+c);
        a[i,n-j]:=chr(97+c);
        end;
    end;
for i:=0 to n do
  begin
  for j:=0 to n do
  write(a[i,j]);
  writeln();
  end;
end.