program ProblemC;

type
  arr = array [1..10] of integer;

function check(a: arr; n: integer): boolean;
var
  i, j: integer;
begin
  for i := 1 to n - 1 do
    for j := i + 1 to n do
      if a[i] = a[j] then begin result := false; exit(); end
      else if (a[j] = 0) or (a[i] = 0) then begin result := false; exit(); end
      else if (a[i]>n) or (a[j]>n) then begin result := false; exit(); end;
  result := true;
end;

var
  n, k: integer;
  a: arr;
  i, j: integer;
  s: integer;
  beaut: integer;
  c: integer;

begin
  readln(n, k);
  s := 0;
  for i := 1 to n do a[i] := 1;
  
  for i := 1 to round(power(10, n) - 1) do
  begin
    c := i;
    for j := 1 to n do
    begin
      a[j] := c mod 10;
      c := c div 10;
    end;
    
    beaut := 0;
    if check(a, n) then
    begin
      for j := 1 to n - 1 do beaut := beaut + a[j] * a[j + 1];
      if (beaut mod k = 0) then 
      begin
        inc(s);
        
      end;
      
    end;
  end;
  writeln(s);
  
end.