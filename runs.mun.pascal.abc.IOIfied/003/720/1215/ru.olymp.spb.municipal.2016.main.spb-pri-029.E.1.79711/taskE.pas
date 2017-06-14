  const n=100;
  var r,c,q,i,h,j,num,numj: integer;
  a: array [,] of integer;
  b: array [1..n] of integer;
begin
  read(r,c,q);
  for h:=1 to q do read(b[h]);
  SetLength(a,r,c);
  num:=0;
  for numj:=0 to c+(r-1)-1 do
  begin
    j:=numj;
    i:=0;
    for k:integer:=1 to r do
    begin
      if (j<c) and (j>-1) and (i<r) and (i>-1) then
      begin
        num:=num+1;
        a[i,j]:=num;
      end;
      i:=i+1;
      j:=j-1;
    end; 
  end;
  for h:=1 to q do
    for i:=0 to r-1 do
      for j:=0 to c-1 do
        if a[i,j]=b[h] then writeln(i+1,' ',j+1);
end.