program C;
var
img:array[1..100,1..100] of char;
i,j,n,l:integer;

begin
readln(n);
l:= ord('a');
if(n mod 2 = 0) then
begin
for i:= 1 to n div 2 do
 begin
     for j:= 1 to n div 2 do
      begin
       img[j,i]:= chr(l+abs(i-j)); 
      end;
     for j:= n div 2 + 1 to n do
      begin
       img[j,i]:=chr(l+abs((n-i+1)-j));
      end;
 end;
for i:= n div 2 + 1 to n do
 begin
  for j:= 1 to n div 2 do
      begin
       img[j,i]:= chr(l+abs(n-i+1-j)); 
      end;
     for j:= n  div 2 + 1 to n do
      begin
       img[j,i]:=chr(l+abs(i-j));
      end; 
 end;
end
else
 begin
 for i:= 1 to n div 2 do
 begin
     for j:= 1 to n div 2 do
      begin
       img[j,i]:= chr(l+abs(i-j)); 
      end;
     for j:= n div 2 + 1 to n do
      begin
       img[j,i]:=chr(l+abs((n-i+1)-j));
      end;
 end;
 for j:=1 to n do 
  img[j,n div 2 + 1]:= chr(l+abs((n-i)-j));
 for i:= n div 2 + 2 to n do
 begin
  for j:= 1 to n div 2 do
      begin
       img[j,i]:= chr(l+abs(n-i+1-j)); 
      end;
     for j:= n  div 2 + 1 to n do
      begin
       img[j,i]:=chr(l+abs(i-j));
      end; 
 end;
 end;
for i:=1 to n do
begin
     for j:=1 to n do write(img[j,i]);
     writeln()
end;     
end.