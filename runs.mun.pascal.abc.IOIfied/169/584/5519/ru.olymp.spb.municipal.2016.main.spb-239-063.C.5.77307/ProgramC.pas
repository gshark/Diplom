


var
a:array[0..101,0..101] of char;
i,j,n,z:integer;
c,c2:char;
b:boolean;
begin
readln(n);
z:=-1;
for i:=0 to 101 do
  for j:=1 to 101 do
    a[i,j]:='0';

for i:=1 to n do begin a[i,i]:='a'; a[i,n-i+1]:='a'; z:=z+2; end;
b:=true;
c:='a';
c2:= Chr(ord(c)+1);
//writeln(z);   
while(b) do begin
b:=false;
for i:=1 to n do begin
  for j:=1 to n do begin
     if c = a[i,j] then begin
      //writeln(i,' ',j);
        if a[i,j-1] = '0' then begin  a[i,j-1]:=c2; inc(z); b:=true; end;   
        if a[i,j+1] = '0' then begin a[i,j+1]:=c2;inc(z); b:=true; end;   
         if a[i-1,j] = '0' then begin a[i-1,j]:=c2;inc(z);b:=true;  end;   
         if a[i+1,j] = '0' then begin a[i+1,j]:=c2;inc(z);b:=true; end;   
     end;
end;
end;

if c = 'z' then c:='a' else c:= Chr(ord(c)+1);
if c = 'z' then c2:='a' else c2:= Chr(ord(c)+1);
end;







for i:=1 to n do begin
  for j:=1 to n do
    write(a[i,j]);
writeln;
end;
end.