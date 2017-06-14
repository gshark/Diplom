program qq;
var x, k, n, MN, d, i:integer;
begin    
readln (x);
d:=1;
for i:=1 to 9 do
begin
   d:=d*10;
   if (x mod d=x) then
   begin
      n:=i-2;
      break
   end;
end;
d:=1;
MN:=0;
for i:=0 to n do
begin
d:=d*10;
   if (MN=0) then
   begin
      if (x mod d>0) then
         MN:=1;
   end
   else begin
      if (x mod d<d div 10) then
         k:=k+1;
   end;
end;
writeln (k);
end.