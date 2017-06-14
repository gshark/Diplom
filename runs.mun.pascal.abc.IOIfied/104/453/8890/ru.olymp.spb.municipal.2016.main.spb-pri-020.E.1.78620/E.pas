Program E5;
  VAR T: ARRAY[1..1000,1..1000] of integer;
  VAR Q: ARRAY[1..1000] of Integer;
  VAR dh,h,i,j,r,c,d: Integer;
begin
readln (r,c,d);
For i:=1 to d do
read(Q[i]);
h:=1;
dh:=0;
T[1,1]:=1;
i:=2;
For j:=1 to r do
  begin
  dh:=j;
  While i<=c do
   begin
   if i<=r
   then
   dh:=dh+1;
   h:=h+dh;
   T[i,j]:=h;
  end;
  end;
For h:=1 to d do
   For i:=1 to c do
    For j:=1 to r do
     if Q[h]=T[i,j]
     then
     writeln(i,j);
  end.