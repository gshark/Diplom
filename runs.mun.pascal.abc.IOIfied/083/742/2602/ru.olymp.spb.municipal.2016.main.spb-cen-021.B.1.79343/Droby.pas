type
  mass = array [1..100] of real;

type
  massSt = array [1..100] of string;

var
  n, p, q, i, k,f,w,l: integer;
  min, max: real;
  a: mass;
  b: massSt;
  ch, zn, c: string;

begin
  f := 1;
  read(n, p, q);
  min := 1 / p;
  max := 1 / q;
  for i := n downto 2 do
  begin
    for k := 1 to n - 1 do
    begin
      if (k mod i <> 0) and (k / i < max) and (k / i > min) and ((k mod 2<>0) or (i mod 2<>0)) then
      begin
        a[f] := k / i;
        ch := IntToStr(k);
        zn := IntToStr(i);
        b[f] := ch + '/' + zn;
        f := f + 1;
      end;
    end;
  end;
  
  for l:=1 to f do
  for i := 1 to f-1 do
    if a[i] > a[i + 1] then
    begin
      a[i] := a[i] + a[i + 1];
      a[i + 1] := a[i] - a[i + 1];
      a[i] := a[i] - a[i + 1];
      c := b[i];
      b[i] := b[i + 1];
      b[i + 1] := c;
    end;
   
  for i := 1 to f do
    writeln(b[i]);
end.