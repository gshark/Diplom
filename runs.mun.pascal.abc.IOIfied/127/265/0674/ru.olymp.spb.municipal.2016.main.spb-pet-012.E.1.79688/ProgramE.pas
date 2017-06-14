var r,c,i,j,u: uint64; q,k,metall,cur: byte; a: array [1..1000,1..1000] of uint64; n: array [1..100] of uint64;
begin 
read(r,c,q);
for i:=1 to q do read(n[i]);
metall:=1;
for i:=1 to c do begin
  u:=r;
  if i<r then u:=i;
  for j:=1 to u do begin
    a[j,i-j+1]:=metall; metall+=1; end; end;
    
for i:=1 to r-1 do begin
for j:=1 to r-i do begin
a[i+j,c-j+1]:=metall; metall+=1; end; end;


cur:=1;
for k:=1 to q do
for i:=1 to r do
 for j:=1 to c do 
  if a[i,j]=n[cur] then begin writeln (i,' ',j); cur+=1; break; break; end;
  end.