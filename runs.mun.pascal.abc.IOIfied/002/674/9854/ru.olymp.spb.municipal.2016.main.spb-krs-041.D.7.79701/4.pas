program w4;
var n1,n2,l:integer;
k:integer;
begin
read(n1,k);
n2:=n1*(n1-1);
if n1>1 then begin
if n1 mod 2<>0 then l:=0 else l:=1;
if (n2-2)mod k <>0 then k:=0 else
k:=((n2-2) div k)+l*(k-1) ;end
else k:=0;
write(k);
end.