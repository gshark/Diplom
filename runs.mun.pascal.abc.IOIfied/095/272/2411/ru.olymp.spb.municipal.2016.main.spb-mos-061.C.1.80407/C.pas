var
  alph: array [0..25] of char;

var
  screen: array [0..99] of array [0..99]of char;

var
  n: integer;


procedure fill();
begin
  alph[0] := 'a';
  alph[1] := 'b';
  alph[2] := 'c';
  alph[3] := 'd';
  alph[4] := 'e';
  alph[5] := 'f';
  alph[6] := 'g';
  alph[7] := 'h';
  alph[8] := 'i';
  alph[9] := 'j';
  alph[10] := 'k';
  alph[11] := 'l';
  alph[12] := 'm';
  alph[13] := 'n';
  alph[14] := 'o';
  alph[15] := 'p';
  alph[16] := 'q';
  alph[17] := 'r';
  alph[18] := 's';
  alph[19] := 't';
  alph[20] := 'u';
  alph[21] := 'v';
  alph[22] := 'w';
  alph[23] := 'x';
  alph[24] := 'y';
  alph[25] := 'z';
end;

begin
  read(n);
  fill();
  for y: integer := 0 to (n div 2) - 1 do
    for x: integer := 0 to (n div 2) - 1 do
      screen[x, y] := alph[abs((y - x) mod 26)];
  
  for y: integer := (n div 2) to n - 1 do
    for x: integer := (n div 2) to n - 1 do
      screen[x, y] := screen[x - (n div 2), y - (n div 2)];
  
  for y: integer := 0 to (n div 2) - 1 do
    for x: integer := (n div 2) to n - 1 do
      screen[x, y] := screen[n - 1 - x, y];
  
  for y: integer := (n div 2) to n - 1  do
    for x: integer := 0 to (n div 2) - 1 do
      screen[x, y] := screen[x, n - 1 - y];
  
  if(n mod 2 = 1) then
  begin
    
    for y: integer := 0 to (n div 2) do
    begin
      screen[n div 2, y] := alph[abs((y - n div 2) mod 26)];
      screen[n - 1, y + n div 2] := screen[n div 2, y];
    end;
    
    for x: integer := 0 to (n div 2) do
    begin
      screen[x, n div 2] := alph[abs((x - n div 2) mod 26)];
      screen[x + n div 2, n - 1] := screen[x, n div 2];
    end;
    
  end;
  
  
  
  for y: integer := 0 to n - 1 do
  begin
    for x: integer := 0 to n - 1 do
      write(screen[x, y] + ' ');
    writeln();
  end;
end.