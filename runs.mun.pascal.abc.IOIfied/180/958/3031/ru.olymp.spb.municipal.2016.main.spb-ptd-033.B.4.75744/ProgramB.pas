var n,p,q,i,j,g,ch,z,ch1,z1:integer;
    max,min:real;
function NOD(x,y:integer):integer;
var c:integer;
begin 
while x<>y do begin
              if x>y then x:=x-y
              else y:=y-x;
              
              end;
NOD:=x;
end;
BEGIN
read(n,p,q);min:=0;
if (p<>0)and(q<>0)and(n<>0) then begin
for g:=1 to n  do begin  max:=1;
for i:=2 to n do begin 
              for j:=1 to i-1 do begin
                                 if (j*p>i)and(i>j*q)and(NOD(i,j)=1)and (j/i<max)and(j/i>min) then begin max:=j/i; ch:=j;z:=i end;
                                 end;
                 end;
if (ch<>ch1)and(z<>z1) then
writeln(ch,'/',z);
min:=ch/z;ch1:=ch;z1:=z
end;end;
END.