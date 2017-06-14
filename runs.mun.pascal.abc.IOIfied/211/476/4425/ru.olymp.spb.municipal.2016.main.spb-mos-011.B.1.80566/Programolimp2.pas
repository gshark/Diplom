program one;
var i,k,j:integer;
 a,b,p,q,n :real;
 m:array [1..490,1..2] of real;
begin
readln(n,p,q);
a:=1; b:=q; 
repeat
 if (a/b < 1/q) then
    if (a/b >1/p) then begin
       i:=i+1; 
       m[i,1]:=a;
       m[i,2]:=b;
       a:=a+1;
    end
                  else
       a:=a+1
                else begin
    b:=b+1;
    a:=1;
    end;
until b>=n;
for j:=1 to i do
for k:=1 to i do
 if (m[k,1]/m[k,2])>(m[k+1,1]/m[k+1,2]) then begin
                                        a:=m[k,1];
                                        m[k,1]:=m[k+1,1];
                                        m[k+1,1]:=a;
                                        a:=m[k,2];
                                        m[k,2]:=m[k+1,2];
                                        m[k+1,2]:=a;
                                        end;

for k:=1 to i do
 write(m[k,1],'/',m[k,2],' ');
end.