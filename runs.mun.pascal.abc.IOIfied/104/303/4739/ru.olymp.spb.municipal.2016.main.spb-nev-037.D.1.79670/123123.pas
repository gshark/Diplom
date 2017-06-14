var
a:array of integer;
n,k,w,q,m,l:integer;


begin
l:=1;
w:=0;
q:=0;
m:=0;
n:=0;

readln(n,k);
SetLength(a,n);

for var i:=0 to n-1 do a[i]:=i+1;

for var i:=0 to n-1 do begin

for var i21:=0 to n-2 do begin
w:=w+a[i21]*a[i21+1];
end;
if(w mod k = 0)then q:=q+1;
w:=0;

if(l = 0)then begin
m:=a[l];
a[l]:=a[n-1];
a[n-1]:=m;
l:=l+1;
end;

if(l = n-1)then begin
m:=a[l];
a[l]:=a[0];
a[0]:=m;
l:=0;
end;


if(l <> 0) and (l<> n-1)then begin
m:=a[l];
a[l]:=a[l-1];
a[l-1]:=m;
l:=l+1;
end;

if(l >= n-1)then l:=0;

end;

writeln(2*q);
end.