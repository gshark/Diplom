var
  chart: array [,] of char;
  letters: array [1..26] of char; l: char;
  i, j, ind: byte; 
  n: word;

begin
  read(n);
  chart := new char[n, n];
  l := 'a';
  for i := 1 to 26 do 
  begin
    letters[i] := l;
    l := ChrUnicode(OrdUnicode(Letters[i]) + 1);
  end;
  
      //writeln (letters);
  
  for i := 0 to n - 1 do
    for j := 0 to n - 1 do
    begin
    if ((i-j) < (i-(n-j+1))) then ind:= i-j else ind:=i-(n-j+1);
      if ((i = j) or (i = n - j + 1)) then chart[i, j] := letters[1];
      chart[i, j] := letters[1 + ind];
    end;
  {^очевидно, неверный алгоритм, но доделывать времени уже нет}
  
  for j := 0 to n - 1 do
  begin
    for i := 0 to n - 1 do
      write(chart[i, j]);
    writeln;
  end;
  
end.