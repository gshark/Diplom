program zadacha_A;
var
  kk: array [1..10] of integer;
  a, b, i1, i2, i3, k, long: integer;
begin
  readln(k);
  a:=1;
  long:=0;
  b:=0;
  while a<=k do
    begin
      a:=a*10;
      long:=long+1;
    end;
  for i1:=1 to long do
    begin
      a:=a div 10;
      kk[i1]:=(k div a);
      k:=k mod a;
    end;
  i2:=long;
  while kk[i2]=0 do i2:=i2-1;
  for i3:=i2 downto 1 do
    if kk[i3]=0 then b:=b+1;
  write(b);
  readln;
end.
