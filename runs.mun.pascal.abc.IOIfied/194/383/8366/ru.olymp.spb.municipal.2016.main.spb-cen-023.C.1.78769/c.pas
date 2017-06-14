Program c;
  var n, k, a, d, e, f, g, h, i, j, l, m, o: integer;
  var b:char;
  var ZZ: array[1..50] of char;
  begin
    b:='a';
    for a:=1 to 26 do
      begin
        ZZ[a]:=b;
        b:=succ(b);
      end;
    b:='a';
    for d:=27 to 50 do
      begin
        ZZ[d]:=b;
        b:=succ(b);
      end;
    readln (n);
    if n mod 2=1 then k:=n div 2+1 else k:=n div 2;
    for g:=1 to k do
      begin
        for h:=k-(k-g) downto 2 do write (ZZ[h]);
        for e:=1 to k+1-g do write (ZZ[e]);
        for f:=k-g downto 1 do write (ZZ[f]);
        for h:=2 to k-(k-g) do write (ZZ[h]);
        writeln();
      end;
    for i:=k-1 downto 1 do
      begin
        for j:=k-(k-i) downto 2 do write (ZZ[j]);
        for l:=1 to k+1-i do write (ZZ[l]);
        for m:=k-i downto 1 do write (ZZ[m]);
        for o:=2 to k-(k-i) do write (ZZ[o]);
        writeln();
      end;
end.