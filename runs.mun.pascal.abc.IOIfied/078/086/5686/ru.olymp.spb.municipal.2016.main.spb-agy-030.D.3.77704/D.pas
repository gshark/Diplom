program p1;
var a : array [1..21474836] of integer;
    n, k, i, j, f, s : integer;
    
begin
readln(n, k);
for i:=1 to n do
  for j:=i+1 to n do
    begin
      f:=f+1;
      a[f]:=i*j; 
    end;
s:=0;
//for i:=1 to 100 do if a[i]<>0 then write(a[i],' ');
//writeln;
for i:=1 to f do
  for j:=1 to f do
    begin
      if i<>j
      then if (a[i]+a[j]) mod k = 0
           then s:=s+1;
    end;
writeln(s);

End.