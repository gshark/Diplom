const n=10000;
var a:array[1..n,1..n] of integer;
b:array[1..100] of integer;
r,c:longint;
q,i,j,ii,jj,p,jmax,imax:integer;
begin
  readln(r,c,q);
  for i:=1 to q do read(b[i]);

  i:=1;j:=1;p:=1;jmax:=1;imax:=1;
  repeat
    {writeln('__________________');
    for ii:=1 to r do begin
       for jj:=1 to c do write(a[ii,jj],' ') ;
       writeln
     end;
     writeln('_________________');
     readln;}
    a[i,j]:=p;
    p:=p+1;
    if (j-1>=1) and (i+1<=r) then begin
      i:=i+1;
      j:=j-1;
    end
    else if jmax+1 <=c then begin
      i:=1 ; jmax:=jmax+1; j:=jmax
    end
    else  begin
      imax:=imax+1;i:=imax;j:=c;
    end
  until (i>c) ;
   for ii:=1 to q do begin
     for i:=1 to r do
     for j:= 1 to c do if b[ii]=a[i,j] then writeln(i,' ',j);
   end;
end.
