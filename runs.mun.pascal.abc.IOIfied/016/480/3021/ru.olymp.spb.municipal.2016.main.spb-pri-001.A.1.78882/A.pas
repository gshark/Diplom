program first;

Var
   a, b, c, d, i, f, g:Integer;

Begin
     Readln(a);
     
     b:=a;
     c:=0;
     f:=0;
     
     while b mod 10 = 0 do
     begin
          b := b div 10;
     end;

     d:=b;

     while b <> 0 do
     begin
         b:=b div 10;
         c:=c+1;
     end;
     
     for i:=1 to c do
     begin
         g:=d mod 10;
         d:=d div 10;
         
         if g = 0 then
         begin
             f:=f+1;
         end;
     end;
     
     Write(f);
end.