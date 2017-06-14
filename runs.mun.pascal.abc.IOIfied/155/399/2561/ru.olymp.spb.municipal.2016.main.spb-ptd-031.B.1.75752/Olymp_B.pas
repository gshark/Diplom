Program PB;
var n, p, q, i, j: integer;
begin read (n, p, q);
      for i:= 2 to n-1
      do for j:= 1 to n-2
         do if j < i
            then if (i < j*p) and (i > j*q)
                 then writeln (j, '/', i);
end.
               