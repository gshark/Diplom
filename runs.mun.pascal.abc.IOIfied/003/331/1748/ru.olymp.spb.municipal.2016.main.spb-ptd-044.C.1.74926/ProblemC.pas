program problemC;


type field = array[0..101, 0..101] of char;


var a: field;
n, i, j, k, s, t, count: integer;
now, prev: char;


function empty(x: char; i, j: integer; a: field): boolean;
begin
empty := (a[i-1,j]<>x)and(a[i,j+1]<>x)and(a[i+1,j]<>x)and(a[i,j-1]<>x);
end;


begin
read(n);
now := 'a';
count := 0;
for i := 0 to n + 1 do
  for j := 0 to n + 1 do
    a[i, j] := '.';
for i := 1 to n do
  begin
    a[i, i] := now;
    count := count + 1;
    if a[i, n - i + 1] = '.' then
      count := count + 1;
    a[i, n - i + 1] := now;
  end;
while count <> n * n do
  begin
  prev := now;
  if now = 'z' then
    now := 'a'
  else
    now := chr(ord(now) + 1);
    for i := 1 to n do
      for j := 1 to n do
        if (a[i, j] = '.') and not(empty(prev, i, j, a)) then
          begin
            count := count + 1;
            a[i, j] := now;
          end;
  end;
for i := 1 to n do
  begin
    for j := 1 to n do
      write(a[i,j]);
    writeln();
  end;
end.