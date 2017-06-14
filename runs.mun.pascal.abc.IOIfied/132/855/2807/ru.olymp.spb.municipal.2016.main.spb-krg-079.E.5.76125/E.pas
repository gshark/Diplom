program ihtfo;

var
  b: array[1..100] of int64;
  r, c, ac, bc, av, bv: 1..1000000000;
  q: 1..100;
  i, n: int64;

begin
  read(r, c, q);
  for i := 1 to q do
    read(b[i]);
  for i := 1 to q do
  begin
    ac := 1;
    av := 1;
    bc := 1;
    bv := 1;
    n := 1;
    repeat
      if n = b[i] then
        break;
      if (av = 1) or (bv = r) then
      begin
      if (ac = c) and (bc<r)  then
          bc := bc + 1;
        if ac < c then
          ac := ac + 1;
        
        av := ac;
        bv := bc;
      end
      else
      begin
        av := av - 1;
        bv := bv + 1;
      end;
      n := n + 1;
    until 1 = 0;
    writeln(bv, ' ', av);
  end;
end.