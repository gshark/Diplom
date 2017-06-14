program DuD;
var 
a,b,c,d,e,i,j,n,k,q,p:integer;
u:array[1..10100,1..2]of integer;
begin
readln(n,q,p);
a:=1;
for i:=2 to n do begin
  for j:=1 to i do begin
    if (j/i>1/q)and(j/i<1/p) then begin 
    
    u[a,1]:=j;
    u[a,2]:=i;
    a:=a+1;
    end;
    end;
 end;
for i:=1 to a-1 do begin 
  for j:=1 to a-1 do begin
    if u[j,1]/u[j,2]>u[j+1,1]/u[j+1,2] then  begin 
      swap(u[j,1],u[j+1,1]);
      swap(u[j,2],u[j+1,2]);
    end;
end;
end;
for i:=1 to a-1 do writeln(u[i,1],'/',u[i,2]);
end.