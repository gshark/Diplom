begin
  var n, p, q: integer;
  readln(n, p, q);
  var a: array of string;
  var b: array of decimal;
  system.Array.Resize(a, 0);
  system.Array.Resize(b, 0);
  for i: integer := 1 to n do
    for i1: integer := 1 to i - 1 do
      if(1 / p < i1 / i) and (i1 / i < 1 / q) then
      begin
        var c: boolean := true;
        for i2: integer := 2 to i1 do
          if (i1 mod i2 = 0) and (i mod i2 = 0) then
            c := false;
        if c then
        begin
          system.Array.Resize(a, a.Length + 1);
          system.Array.Resize(b, b.Length + 1);
          a[a.Length - 1] := i1.ToString + '/' + i.ToString;
          b[b.Length - 1] := i1 / i;
        end;
      end;
  system.Array.Sort(b, a);
  for i:integer:= 0 to a.Length - 1 do
    writeln(a[i]);
end.