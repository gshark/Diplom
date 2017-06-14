Uses Crt;
Var n, k, m, i, ii: integer;
Begin
   Clrscr;
   Readln (k);
   i:=k;
   n:=0;
   m:=0;
   ii:=0;
   While i<>0 do
   Begin
      n:=n+1;
      i:= i div 10;
   End;
   for i:=1 to n do
   Begin
      if ii=0 then
      Begin
         if k mod 10 <> 0 then ii:=ii+1;
         k:=k div 10;
      End
      else
      Begin
         if k mod 10 = 0 then m:=m+1;
         k:=k div 10;
      End;
   End;
   Write (m);
End.
