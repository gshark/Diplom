uses
  crt;

var
  n, j, i: byte;
  mas: array of array of char;

begin
  readln(n);
  setlength(mas, n);
  for i := 0 to n - 1 do
    setlength(mas[i], n);
  for i := 0 to n - 1 do
    for j := 0 to n - 1 do
      if (((j <= (n - 1) div 2) and (i <= (n - 1) div 2)) or ((i > (n - 1) div 2) and (j > (n - 1) div 2))and(abs(i-j)>25))or ((((j <= (n - 1) div 2) and (i >(n - 1) div 2)) or ((i <= (n - 1) div 2) and (j <= (n - 1) div 2)))and(abs(n-1-i-j)>25)) then
      begin
        if ((j <= (n - 1) div 2) and (i <= (n - 1) div 2)) or ((i > (n - 1) div 2) and (j > (n - 1) div 2)) then mas[i][j] := char(ord('a') + abs(abs(i - j)-(ord('z')-ord('a')+1)))
        else mas[i][j] := char(ord('a') + abs(abs((n - 1 - i) - j)-(ord('z')-ord('a')+1)));
      end
      else if ((j <= (n - 1) div 2) and (i <= (n - 1) div 2)) or ((i > (n - 1) div 2) and (j > (n - 1) div 2)) then mas[i][j] := char(ord('a') + abs(i - j))
      else mas[i][j] := char(ord('a') + abs((n - 1 - i) - j));
  
  for i := 0 to n - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      write(mas[i][j]);  
    end;
    writeln;
  end;
  
end.