type tip = array [1..2] of integer;
var a, n, p, q, i, j, h, z, f, w, g: integer;
s: array [1..10000] of tip;
begin
a := 1;
readln (n,p,q);
for i := 1 to (n-1) do begin
  for j := 1 to i do begin
    if ((j/i) > (1/p)) and ((j/i) < (1/q)) then begin
    s[a,1]:= j;
    s[a,2]:= i;
    a := a + 1;
    end;
  end;
end;
g := a;
for i := 1 to a-1 do begin
  for j := i+1 to a-1 do begin
    if (s[i,1]/s[i,2]) = (s[j,1]/s[j,2]) then begin
    g := g - 1;
      if s[i,1] > s[i,2] then begin
      for w := i to g do begin 
      s[w,1] := s[w+1,1];
      s[w,2] := s[w+1,2];
      end;
      end;
    end;
      if (s[i,1]/s[i,2]) > (s[j,1]/s[j,2]) then begin
      h := s[j,1];
      z := s[j,2];
      s[j,1] := s[i,1];
      s[j,2] := s[i,2];
      s[i,1] := h;
      s[i,2] := z;
      end;
  end;
end;
for i := 1 to g-1 do begin
writeln (s[i,1],'/',s[i,2])
end;
end.