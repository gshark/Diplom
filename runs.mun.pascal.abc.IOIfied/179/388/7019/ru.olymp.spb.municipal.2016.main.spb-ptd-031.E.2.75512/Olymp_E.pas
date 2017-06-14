Program PE;
var r, c, q, r0, c0, i, x: integer;
    n: array [1..100] of integer;
begin read (r, c, q); 
      for i:= 1 to q
      do read (n[i]);
      r0:= 1;
      c0:= 1;
      for i:= 1 to q
      do begin writeln (r0, ' ', c0);
               if (c0 = 1) or (r0 = r)
               then begin x:= c0+r0;
                          if x <= c
                          then begin c0:= x;
                                     r0:= 1
                               end
                          else begin r0:= (x)-(c-1);
                                     c0:= c                                     
                               end
                    end
               else begin c0:= c0-1;
                          r0:= r0+1
                    end;
         end;
end.