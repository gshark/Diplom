var n,p,q,i,j,z,z1:integer;
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
read(n,p,q);
for i:=2 to n do
              for j:=1 to i-1 do begin
                                 z:=j*p;
                                 z1:=j*q;
                                 if (z>i)and(i>z1)and(NOD(i,j)=1) 
                                 then writeln(j,'/',i);
                                 end;
END.