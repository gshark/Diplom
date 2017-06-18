program p3;
var n, n1 : integer;
    a : array [1..100,1..100] of char;
    i, j, k : integer;
    c : char;
begin
readln(n1);
for i:=1 to n1 do
  for j:=1 to n1 do a[i,j]:='a';

if n1 mod 2 = 0
then n:=n1 div 2
else n:=n1 div 2 + 1;

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

  
if n1 mod 2=0
then
  begin
    for i:=1 to n1 do
      begin
        for j:=1 to n1 div 2 do
          begin
            a[n1-i+1, j] := a[i,j];
            a[j,n1-i+1] := a[j,i];
          end;
      end;
    for i:=n1 div 2 to n1 do
      for j:=n1 div 2 to n1 do
        begin
          a[i,j]:=a[n1-i+1, n1-j+1];
        end;
  end
else
  begin
    for i:=1 to n1 do
      begin
        for j:=1 to n1 div 2+1 do
          begin
            a[n1-i+1, j] := a[i,j];
            a[j,n1-i+1] := a[j,i];
          end;
      end;
    for i:=n1 div 2+1 to n1 do
      for j:=n1 div 2+1 to n1 do
        begin
          a[i,j]:=a[n1-i+1, n1-j+1];
        end;
  end;
  

for i:=1 to n1 do
  begin    
    for j:=1 to n1 do write(a[i,j]);
    writeln;
  end;

End.
