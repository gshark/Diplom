var
n,p,q,i,j,m,k,flag,s:integer;
d1,d2,d3,sr,min:real;
dr:array[1..1000] of real;
begin
k:=1;
read(n,p,q);
d1:=1/p;
d3:=1/q;
for i:=1 to n do
  for j:=1 to n do 
    if i<j then 
    begin
      sr:=i/j;
      if (sr<d3) and (sr>d1) then 
      begin
        dr[k]:=i;
        dr[k+1]:=j;
        k:=k+2;
        end;
      end;
for i:=1 to 999 do
for j:=1 to 999 do
if (dr[i]/dr[i+1]=dr[j]/dr[j+1]) and (i<>j) and (dr[i]<>0) then
begin
  dr[j]:=0;
  dr[j+1]:=0;
end; 
s:=0;
i:=1;
while dr[i]<>0 do begin
s:=s+1;
i:=i+1;
end;
min:=dr[1]/dr[2];
flag:=0;
while flag=0 do 
begin
flag:=1;
for i:=1 to s do
  if dr[i]<>0 then flag:=0;  
  if flag<>1 then
  begin
    for i:=1 to s do
    if i mod 2=1 then 
    begin
      if dr[i]<>0 then
      if dr[i]/dr[i+1]<min then
      begin
        min:=dr[i]/dr[i+1];
        m:=i;
      end;
    end;
      writeln(dr[m],'/',dr[m+1]); 
      dr[m]:=0;
      dr[m+1]:=0;
      min:=1;
  end;
end;
end.  
