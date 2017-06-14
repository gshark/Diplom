program p3;
var n : integer;
    a : array [1..100,1..100] of char;
    i, j, k : integer;
    c : char;
begin
readln(n);
for i:=1 to n do
  for j:=1 to n do a[i,j]:='a';

for i:=1 to n do
  begin
    for j:=i+1 to n do
      begin
        if j-i>26
        then k:=(j-i)-((j-i) div 26)*26
        else k:=(j-i);
        inc(a[i,j], k);
      end;
    for j:=i-1 downto 1 do
      begin
        if i-j>26
        then k:=(i-j)-((i-j) div 26)*26
        else k:=i-j;
        inc(a[i,j], k);
      end;
  end;
for i:=1 to n do
  begin    
    for j:=1 to n do write(a[i,j]:2);
    writeln;
  end;
End.