program Three;
var n, a, b, c, i, j: integer;

Begin
readln(n);
for j:=1 to n do begin
for i:=1 to n do begin
If (J+i=n+1) or (j=i) then
 write ('a');
 If   (i+j=n) or (abs(j-i)=1) or (abs(j-i)=3) then
  write ('b') else
 If (i mod 2 =1) and (j mod 2=1) and (abs(j-i)=2) then
  write ('c');

 end;
writeln(); 
 end;
 
 end.
