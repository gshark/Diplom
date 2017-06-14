var n,p,q,ch,zn,ch1,zn1,ch2,zn2,i,kol,num:integer;
a:array[1..1000] of string;
s:string;
f:real;
begin
readln(n,p,q);
ch:=1;
zn:=1;

kol:=1;
num:=1;
for ch:=1 to 100 do
 for zn:=1 to n do
 begin
  f:=ch/zn;
  ch1:=ch;
  zn1:=zn;
  ch2:=ch;
  zn2:=zn;
  if (f>1/p) and (f<1/q) then
    begin
     while ch1<>zn1 do
      if ch1>zn1 then ch1:=ch1-zn1
       else
        zn1:=zn1-ch1;
    ch2:=ch2 div ch1;
    zn2:=zn2 div zn1;
    a[num]:=a[num]+ch2+'/'+zn2;
    inc(num);
    
    end;
  end;

 for i:=n-1 downto 1 do
 begin
  if (a[kol]<>a[i]) and (kol<>i) then 
      writeln(a[kol]);
  inc(kol);
 end;

end. 