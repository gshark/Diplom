program p1;
var a, b, c : array [1..3628800] of integer;
    n, k, i, j, f, s : integer;
    
begin
readln(n, k);
if n = 1
then writeln('0')
else if n = 2
     then
       begin
         if k<>2
         then writeln('2');
       end
     else
begin
for i:=1 to n do
  for j:=1 to n do
    begin
      f:=f+1;
      a[f]:=i*j; 
      b[f]:=i;
      c[f]:=j;
    end;
s:=0;
for i:=1 to f do
  for j:=1 to f do
    begin
      if (i<>j) and (b[i]<>b[j]) and (c[i]<>c[j])
      then if (a[i]+a[j]) mod k = 0
           then
             begin
               s:=s+1;
             end;
    end;
writeln(s);
end;
End.