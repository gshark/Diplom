var
a: array [0..9] of integer;
k, n, t, f, s, c, z, I : integer;
begin
read (k); f:=10;
for n:=1 to 9 do begin
if k div f <> 0 then t:=t+1;
f:=f*10
end;
t:=t+1;
f:=1;
for n:=1 to t do begin
s:=k div f; if s mod 10 = 0 then c:=c+1;
f:=f*10;
a[n]:=s;
end;
for n:=1 to t do begin
if a[n] mod 10 = 0 then z:=z+1 else break;
end;
I:=c-z;
write(I);


end.