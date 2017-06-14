var
a,a1:array of real;
a2:array of real;
n,p,q:real;
s:string;
begin
readln(n,p,q);
for var i:=1 to Trunc(n)-1 do begin
for var i1:=i to Trunc(n)-1 do begin
if(i1 mod i <> 0)then begin
if((i*p) > i1) and ((i*q) < i1)then begin
SetLength(a,Length(a)+1);
SetLength(a1,Length(a1)+1);
a[Length(a)-1]:=i;
a1[Length(a1)-1]:=i1;
end;
end;
end;
end;
var w:real;
var q1:integer;
w:=10;
q:=0;
SetLength(a2,Length(a));
for var i:=0 to Length(a2)-1 do a2[i]:= a[i]/a1[i];
for var i1:=0 to Length(a2)-1 do begin
for var i:=0 to Length(a2)-1 do begin
if(a2[i]<w)then begin
w:=a2[i];
q1:=i;
end;
end;
if(q1 < Length(a)-1)then begin
s:=a[q1]+'/'+a1[q1];
writeln(s);
a2[q1]:=15;
w:=10-q1;
end else begin
s:=a[q1]+'/'+a1[q1];
write(s);
end;
end;
end.