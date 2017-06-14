program one;
var x,y,j,i,a,r,c,q,k :integer; 
begin
readln(r,c,q);
for i:=1 to q do begin
 j:=1;
 x:=1;
 y:=1;
 read(a);
 while j<>a do begin
  x:=x+y;
  j:=j+1;
   if x>c then begin
          y:=x-c+1;
          x:=c;
          end
          else
          y:=1;
  while (x<>1) and (y<>r) and (j<>a) do begin  
   x:=x-1;
   y:=y+1;
   j:=j+1;
  end;
  end;
  write(' ',y,' ',x,' ');
end;
end.