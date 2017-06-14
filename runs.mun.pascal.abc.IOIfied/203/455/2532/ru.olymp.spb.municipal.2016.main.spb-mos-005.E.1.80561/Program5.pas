var x,y,f,g,r,c,q,l:integer;
begin
read(r,c,q);
var r1:=r;
var c1:=c;
y:=max(c,r);
f:=max(c,r);
var k:=1;
read(x);
while x<>q do begin
read(x);
if k>y then  begin f-=1;r-=1;c-=1 end;
if (k>r) or (k>c) then g:=min(r,c)
    else g:=k;
   
for var i:= y+1-f to g do begin
     l:= k-i+1;
    writeln(i,' ',l);end;
 k+=1; 
end;
if r1>c1 then writeln(r1-1,' ',c1 ) else writeln(r1,' ',c1-1);
write(r1,' ',c1)
end.