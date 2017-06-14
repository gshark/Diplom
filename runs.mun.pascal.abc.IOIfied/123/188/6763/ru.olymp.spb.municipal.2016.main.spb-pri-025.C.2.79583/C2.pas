program z1;
var i,j,n,s:integer;
    a:array [1..100,1..100] of char;

begin
 readln(n);
 for i:=1 to n do
 begin
  for j:=1 to n do
   a[i,j]:='.';
 end;
 
 for i:=1 to n do
 begin
  for j:=1 to n do
   begin
   if i=j then a[i,j]:=chr(ord('a'));
   s:=n+1-j;
   if i=s then a[i,j]:=chr(ord('a'));
   if (a[i,j]='.')and(s<=j) then 
   begin
   if (i>j)and((ord('a')+i-j)<=(ord('z'))) then begin a[i,j]:=chr(ord('a')+i-j);
                                                     a[j,i]:=chr(ord('a')+i-j); end;
   if (i>j)and((ord('a')+i-j)>(ord('z'))) then begin a[i,j]:=chr(ord('a')+i-j-26);
                                                     a[j,i]:=chr(ord('a')+i-j-26); end;     
   if (i<s)and((ord('a')+s-i)<=(ord('z'))) then begin a[i,j]:=chr(ord('a')+s-i);
                                                     a[j,i]:=chr(ord('a')+s-i); end;
   if (i<s)and((ord('a')+s-i)>(ord('z'))) then begin a[i,j]:=chr(ord('a')+s-i-26);
                                                     a[j,i]:=chr(ord('a')+s-i-26); end;    
   end;
   
   if (a[i,j]='.')and(s>j) then 
   begin
   if (i<j)and((ord('a')+j-i)<=(ord('z'))) then begin a[i,j]:=chr(ord('a')+j-i);
                                                     a[j,i]:=chr(ord('a')+j-i); end;
   if (i<j)and((ord('a')+j-i)>(ord('z'))) then begin a[i,j]:=chr(ord('a')+j-i-26);
                                                     a[j,i]:=chr(ord('a')+j-i-26); end;     
   if (i>s)and((ord('a')+s-i)<=(ord('z'))) then begin a[i,j]:=chr(ord('a')+i-s);
                                                     a[j,i]:=chr(ord('a')+i-s); end;
   if (i>s)and((ord('a')+i-s)>(ord('z'))) then begin a[i,j]:=chr(ord('a')+i-s-26);
                                                     a[j,i]:=chr(ord('a')+i-s-26); end; 
   end;
   end;
 end;
   
 for i:=1 to n do
 begin
  for j:=1 to n do
   write (a[i,j]);
 writeln;
 end;
end.