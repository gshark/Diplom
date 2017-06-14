Program PA;
var k, b: integer;
begin read (k);
      b:= 0;
      while k mod 10 = 0
      do k:= k div 10;
      while k <> 0
      do begin if k mod 10 = 0
               then b:= b+1;
               k:= k div 10
         end;
      writeln (b)
end.