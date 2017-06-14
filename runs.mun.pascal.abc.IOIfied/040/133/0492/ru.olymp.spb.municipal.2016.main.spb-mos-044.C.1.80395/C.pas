var
  a: array[1..100, 1..100] of char;
  n, k: byte;
  i, j: integer;

function sure: boolean;
var
  i1, j1: integer;r: boolean;
begin
  r := true;
  for i1 := 1 to n do
    for j1 := 1 to n do
      if a[i1, j1] = '!' then r := false;
  sure := r;
end;

begin
  
  read(n);k := 97;
  for i := 1 to n do for j := 1 to n do a[i, j] := '!';
  for i := 1 to n do 
  begin
    a[i, i] := chr(k);
    a[i, n - i + 1] := chr(k);
  end;
  
  
  repeat
    for i := 1 to n - 1 do
      for j := 1 to n do
        if (a[i, j] = chr(k)) and (a[i+1, j] <> chr(k - 1)) then a[i + 1, j] := chr(k + 1);
    for i := 2 to n  do
      for j := 1 to n do
        if (a[i, j] = chr(k)) and (a[i-1, j] <> chr(k - 1)) then a[i - 1, j] := chr(k + 1);
    for i := 1 to n  do
      for j := 2 to n do
        if (a[i, j] = chr(k)) and (a[i, j-1] <> chr(k - 1)) then a[i, j - 1] := chr(k + 1);
    for i := 1 to n  do
      for j := 1 to n - 1 do
        if (a[i, j] = chr(k)) and (a[i, j+1] <> chr(k - 1)) then a[i, j + 1] := chr(k + 1);
    k := k + 1;if k > 122 then k := 97;
  until sure;
  
  
  for i := 1 to n do
  begin
    for j := 1 to n do write(a[i, j]);
    writeln;
  end;
  
end.