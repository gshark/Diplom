program ProblemB;

function euclide(a: integer; b: integer): integer;
var
  c: integer;
begin
  repeat
    c := a;
    a := b mod a;
    b := c;
  until a = 0;
  result := b;
end;

var
  m, k: integer;
  n: integer;
  p, q: real;
  a, b: array [1..101] of integer;
  i, j, l: integer;
  f: boolean;

begin
  readln(n, p, q);
  i := 0;
  f := true;
  for k := 2 to n do
    for m := 1 to k - 1 do
    begin
      if ((m * p * q / k) > q) and ((m * p * q / k) < p) then 
      begin
        if euclide(m, k) = 1 then 
        begin
          inc(i);
          a[i] := m;
          b[i] := k;
        end;
      end;
    end;
  
  repeat
    f := true;
    for j := 1 to i - 1 do
      if a[j] * b[j + 1] > a[j + 1] * b[j] then
      begin
        f := false;
        l := a[j];
        a[j] := a[j + 1];
        a[j + 1] := l;
        
        l := b[j];
        b[j] := b[j + 1];
        b[j + 1] := l;
      end;
      
      for j := i downto 2 do
      if a[j] * b[j - 1] < a[j - 1] * b[j] then
      begin
        f := false;
        l := a[j];
        a[j] := a[j - 1];
        a[j - 1] := l;
        
        l := b[j];
        b[j] := b[j - 1];
        b[j - 1] := l;
      end;
    
  until f = true;
  for j := 1 to i do writeln(a[j], '/', b[j]);

end.