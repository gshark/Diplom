var kart: array [1..100,1..100] of char;
    i,j,n,d:integer;
begin
  readln (n);
  for i:=1 to (n div 2)+(n mod 2) do
    for j:=1 to (n div 2)+(n mod 2) do
    begin
      d:=ord('a')+abs(i-j) mod 26;
      kart[i,j]:=chr(d);
    end;
  for i:=(n div 2)+(n mod 2)+1 to n do
    for j:=1 to (n div 2)+(n mod 2) do
    kart[i,j]:=kart[n-i+1,j];
  for i:=1 to n do
    for j:=(n div 2)+(n mod 2)+1 to n do
    kart[i,j]:=kart[i,n-j+1];
  for i:=1 to n do
  begin
    for j:=1 to n do write (kart[i,j],' ');
    writeln;
  end;


end.