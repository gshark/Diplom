program prgB;

var
  n, p, q, zI, zJ, g: byte;
  say: boolean;
  i, j, k: smallint;
  a: array[1..5000, 1..2] of byte;

begin
  readln(n, p, q);
  
  for i := 1 to n do
  begin
    for j := 1 to i do
    begin
      if (j / i < 1 / q) and (j / i > 1 / p) then
      begin
        zJ := j;
        zI := i;
        g := 2;
        say := true;
        while g <= zJ  do
        begin
          if ((zI mod g) = 0) and ((zJ mod g) = 0) then begin say := false; g := zJ + 1; end
          else g := g + 1;
        end;
        
        if say then begin k := k + 1; a[k, 1] := j; a[k, 2] := i; end;
      end;
    end;
  end;
  
  for i := 1 to k - 1 do
    for j := i + 1 to k do
      if (a[i, 1] / a[i, 2]) > (a[j, 1] / a[j, 2]) then
      begin
        g := a[i, 1];
        a[i, 1] := a[j, 1];
        a[j, 1] := g;
        
        g := a[i, 2];
        a[i, 2] := a[j, 2];
        a[j, 2] := g;
      end;
  
  for i := 1 to k do writeln(a[i, 1], '/', a[i, 2]);
end.