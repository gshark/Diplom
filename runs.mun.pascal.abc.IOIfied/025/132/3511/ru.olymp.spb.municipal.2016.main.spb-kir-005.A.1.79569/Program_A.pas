Program GT;
var
k, n, s, i, c, m, x, r:integer;
Begin
Readln(s);
n:=s;
k:=0;
   while n>0 do 
   begin
   n:=n div 10;
   k:=k+1;
   end; 
   n:=s;
     For i:=1 to k do
     Begin
  if n mod 10=0 then 
  begin
  n:=n div 10;
  end
  else
  begin
  break;
  end;
     End;
     n:=s;
      For c:=1 to i-1 do 
      Begin
      n:=n div 10;
      End;
      m:=k-(i-1);
      r:=0;
         For x:=1 to m do 
         Begin
         if n mod 10=0 then
         begin
         r:=r+1;
         n:=n div 10;
         end
         else
         begin
         n:=n div 10;
         end;
         End;
         Writeln(r);
End.