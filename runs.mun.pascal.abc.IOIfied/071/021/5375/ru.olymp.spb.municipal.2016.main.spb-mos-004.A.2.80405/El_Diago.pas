program DuD;
const s:string='zabcdefghijklmnopqrstuvwxyz222';
var
a:array[1..104,1..104]of integer;
b,c,d,i,n,j:integer;
begin
readln(n);
for i:=1 to trunc(n/2) do begin
  for j:=1 to trunc(n/2) do begin
    a[i,j]:=abs(i-j)+1;
  end;
end;
if n=1 then writeln('a')
else begin
if n mod 2 = 1 then
begin
  d:=trunc(n/2)+1;
  for i:=1 to d do begin
    a[d,i]:=d-i+1;
    a[i,d]:=d-i+1;
  end;
  for i:=1 to d do begin
  for j:=1 to n do begin
    if not(j>d) then write(s[a[i,j] mod 26+1])
    else begin
      a[i,j]:=a[i,2*d-j];
      write(s[a[i,2*d-j] mod 26+1]);
    end;
    end;
  writeln;
end;

for i:= d+1 to n do begin
for j:= 1 to n do begin
write(s[a[2*d-i,j] mod 26+1]);
end;
writeln;
end;
end
else begin
d:=trunc(n/2);
for i:=1 to d do begin
    a[d,i]:=d-i+1;
    a[i,d]:=d-i+1;
  end;
  for i:=1 to d do begin
  for j:=1 to n do begin
    if not(j>d) then write(s[a[i,j] mod 26+1])
    else begin
      a[i,j]:=a[i,2*d-j+1];
      write(s[a[i,2*d-j+1] mod 26+1]);
    end;
    end;
  writeln;
end;

for i:= d+1 to n do begin
for j:= 1 to n do begin
write(s[a[2*d-i+1,j]mod 26+1]);
end;
writeln;
end;
end;
end;

end.