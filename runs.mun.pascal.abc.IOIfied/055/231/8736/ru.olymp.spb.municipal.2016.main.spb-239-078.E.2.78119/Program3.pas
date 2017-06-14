var
  k, i,l,r,c,j: longint;
  s:longint;
  a: array [1..9999,1..9999] of longint;
  a1:array of longint;

begin
k:=4;
  read(r,c);
a[1,1] := 1;
a[1,2] := 2;
a[1,3] := 4;
a[r,c]:= c*r;
a[r-1,c]:=r*c-2;
a[r,c-1]:=r*c-1;
for i:=3 to c do begin a[1,i]:=k; k:=k+3; end;
  for i:=2 to r do 
  for j:=1 to c-1 do a[i,j]:=a[i-1,j+1]+1;
  read(s);
  setlength(a1,s);
  k:=s;
    for i:=0 to s-1 do read(a1[i]);
  for l:=0 to k-1 do begin

  for i:=1 to r do 
  for j:=1 to c do if a1[l]=a[i,j] then writeln(i,' ' ,j);
  end;
end.