Program zzz;
var
  A,B:array[1..9] of integer;
  n,p,q,i,j : integer;
begin
  read(n,p,q);
  for i:=1 to 9 do
  A[i]:=random(9)+1;
  for i:=1 to 9 do
  B[i]:=random(n)+1;
  for i:=1 to 9 do begin
  for j:=1 to 9 do begin
  if (A[i] mod B[j] <> 0) and (A[i] div B[j] <1)  then
  writeln(A[i],'/',B[j]);
  end;
  end;
end.  
   