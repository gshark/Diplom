program c;
var 
a: array [1..100,1..100] of string[1];
n,i,t,z,j:byte;
kl:integer;

begin
readln(n);
t:=ord('a');
z:=ord('z');
for i:=1 to n do 
   begin
   a[i,i]:='a';
   a[i,n+1-i]:='a';
   kl:=kl+2;
   end;
   kl:=kl-1;
inc(t);  
while (t<=z) and (kl<n*n) do
  begin
  for i:=1 to n do
  for j:=1 to n do
      if (a[i,j]<>'') then if ord(a[i,j][1])=t-1 then
         begin
         if (j>1) then
           begin
           if a[i,j-1]='' then
             begin a[i,j-1]:=chr(t);
             inc(kl);
             end;
             end
         else if j<n then
           if a[i,j+1]='' then
              begin
              a[i,j+1]:=chr(t);
              inc(kl);
              end;
             end;
             inc(t);
             end;
     for i:=1 to n do
     begin
     for j:=1 to n do
     write(a[i,j]);
     writeln;
     end;
  end.
  