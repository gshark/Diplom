program c;
var n,i,j: longint;
    t: array[1..100,1..100] of longint;
begin
  read(n);
  for i:=1 to n do
    for j:=1 to n do begin
      if ((i<=n div 2) and (j<=n div 2)) or ((i>=n-n div 2 +1) and (j>=n-n div 2 +1)) then t[i,j]:=abs(i-j) mod 26;
      if ((i<=n div 2) and (j>=n-n div 2 +1)) or ((i>=n-n div 2 +1) and (j<=n div 2)) then t[i,j]:=abs(i+j-n-1) mod 26;
      if (n mod 2<>0) and (i=(n+1) div 2) then t[i,j]:=abs((n+1) div 2 - j) mod 26; 
      if (n mod 2<>0) and (j=(n+1) div 2) then t[i,j]:=abs((n+1) div 2 - i) mod 26;    
    end;
  for i:=1 to n do begin
    for j:=1 to n do
      write(chr(t[i,j]+ord('a')):3);
    writeln;
  end;
end.
