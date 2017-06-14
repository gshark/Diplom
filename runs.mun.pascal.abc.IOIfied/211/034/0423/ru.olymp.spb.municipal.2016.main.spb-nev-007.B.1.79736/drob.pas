program drob;

var
  ch, zn, n, p, q, mch, mzn, pch, pzn: shortint;

begin
  read(n, p, q);
  pch := 1;pzn := 101;
  repeat
    mch := 1;mzn := 1;
    for zn := 2 to n - 1 do
      for ch := 1 to n - 2 do 
        if(ch / zn > 1 / p) and (ch / zn < 1 / q) and (zn mod ch <> 0) and (ch / zn < mch / mzn) and (ch / zn > pch / pzn) then
        begin mch := ch;mzn := zn; end;
    writeln(mch, '/', mzn);
    pch := mch;pzn := mzn;
  until (mch / mzn >= 1 / q);
end.