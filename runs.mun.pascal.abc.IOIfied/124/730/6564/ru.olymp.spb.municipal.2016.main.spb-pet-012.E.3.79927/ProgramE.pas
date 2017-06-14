var r,c,i,j,u,lom: uint64; q,metall: byte; n: array [1..100,1..2,1..2] of uint64;
begin 
read(r,c,q);
for i:=1 to q do read(n[i,1,1]);
metall:=1;
for i:=1 to c do begin
  u:=r;
  if i<r then u:=i;
  for j:=1 to u do begin
     for lom:=1 to q do begin
  if metall=n[lom,1,1] then begin n[lom,1,2]:=j; n[lom,2,2]:=i-j+1; end; metall+=1; end; end; end;
    
for i:=1 to r-1 do begin
for j:=1 to r-i do begin
for lom:=1 to q do begin
  if metall=n[lom,1,1] then begin n[lom,1,2]:=j+i; n[lom,2,2]:=c-j+1; end; metall+=1; end; end; end;
  
  
  
  for i:=1 to q do
  writeln (n[i,1,2],' ',n[i,2,2]); end.

