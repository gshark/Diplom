 const v=50000;
var n,p,q,i,j,d,z:integer;
s:boolean;
a,b:array[1..v] of integer;
r:array[1..v] of real;
m:array[1..v] of integer;

procedure qs(n,k:integer);
var i,j,cc:integer;
c,o:real;
begin
  i:=n;
  j:=k;
  o:=r[i];
  repeat
    while r[i]<o do i:=i+1;
    while r[j]>o do j:=j-1;
    if i<=j then begin
      c:=r[i];
      r[i]:=r[j];
      r[j]:=c;

      cc:=m[i];
      m[i]:=m[j];
      m[j]:=cc;

      i:=i+1;
      j:=j-1;
    end
  until i>=j;
  if n<j then qs(n,j);
  if i<k then qs(i,k);
end;

begin
  read(n,p,q);
  z:=0;
  for i:=1 to n do begin
    for j:=n downto 1 do begin
      s:=false;
      for d:=2 to n do begin
         if (i mod d =0) and (j mod d =0) then begin s:=true; break; end;
      end;
      if (s=false) and (j<i*p) and (i*q<j) then begin

        z:=z+1;a[z]:=i;b[z]:=j;

      end;
    end;
  end;

  for i:=1 to z do m[i]:=i;
  for i:=1 to z do r[i]:=a[i] / b[i];
  qs(1,z);

  for i:=1 to z do writeln(a[m[i]],'/',b[m[i]]);
end.