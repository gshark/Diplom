program ProblemC;

var
  n: integer;
  a, a1: array [0..101, 0..101] of char;
  c: char;
  i, j: integer;
  b: boolean;
  k, l: integer;

begin
  readln(n);
  for i := 1 to n do
    for j := 1 to n do a[i, j] := '0';
  for i := 1 to n do a[i, i] := 'a';
  for i := 1 to n do a[i, n - i + 1] := 'a';
  a1 := a;
  repeat
    b := false;
    for i := 1 to n do
      for j := 1 to n do
      begin
        if ord(a[i, j]) < ord('a') then
        begin
          c := 'z';
          for k := -1 to 1 do
            for l := -1 to 1 do
              if (k = 0) xor (l = 0) then 
                
                if (ord(a[i + k, j + l]) >= ord('a')) then
                  if (ord(a[i + k, j + l]) <= ord(c)) then
                  begin
                    c := chr((ord(a[i + k, j + l]) + 1 - ord('a')) mod 26 + ord('a'));
                    a1[i, j] := c;
                  end;
        end;
      end;
    if a = a1 then b := true;
    a := a1; 
    
  until b;
  
  for i := 1 to n do
  begin
    for j := 1 to n do write(a[i, j]);
    writeln;
  end;
  
end.