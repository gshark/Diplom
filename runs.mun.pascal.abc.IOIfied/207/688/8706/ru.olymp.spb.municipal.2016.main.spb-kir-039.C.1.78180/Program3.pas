program qq;

const
  n = 100;

var
  nreal, i, j: integer;
  c: array[1..n, 1..n] of char;

procedure insert(x, y: integer; s: char);
begin
  
  if (x >= 1) and (x <= nreal) and (y >= 1) and (y <= nreal) and (word(s) < word(c[x, y])) then
    if s <> 'z' then begin
      c[x, y] := char((word(s) + 1));
    end
    else
      c[x, y] := 'a';
  
end;

procedure find(a, b: integer);
var
  m, n: integer;
begin
  if (a >= 1) and (a <= nreal) and (b >= 1) and (b <= nreal) then
    for m := 1 to nreal do 
    begin
      for n := 1 to nreal do 
      begin
        if c[m, n] = c[a, b] then
        begin
          insert(m + 1, n, c[a, b]);
          insert(m - 1, n, c[a, b]);
          insert(m, n + 1, c[a, b]);
          insert(m, n - 1, c[a, b]);
        end;
      end;
    end;
end;

procedure show();
var
  i, j: integer;
begin
  for i := 1 to nreal do 
  begin
    for j := 1 to nreal do 
      write(c[i, j]);
    writeln();
  end;
end;

begin
  readln(nreal);
  for i := 1 to nreal do 
  begin
    for j := 1 to nreal do 
      c[i, j] := 'z';
  end;
  
  
  for i := 1 to nreal do
  begin
    c[i, i] := 'a';
  end;
  
  for i := 1 to nreal do
  begin
    c[i, nreal - i + 1] := 'a';
  end;
  
  for i := 1 to nreal do 
  begin
    for j := 1 to nreal do 
      find(i, j);
  end;   
  
  show();
  
end.