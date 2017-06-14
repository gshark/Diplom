program BB;
var n,p,q,m,b,k,i,z,o,zn,f:byte;
begin
readln(n,p,q);
for z:=2 to n do
for i:=1 to z do
  begin
  for k:=z+1 to z*p*q do
  if (k mod z=0) and (k mod p=0) and (k mod q=0) then break;
  m:=k div q;
  b:=k div p;
  o:=k div z;
  if (i*o<m) and (i*o>b) then
    begin
    zn:=i*o;
    for f:=i*o downto 2 do
    if (zn mod f=0) and (o mod f=0) then
      begin
      zn:=zn div f;
      o:=o div f;
      end;
    writeln(zn,'/',z);
    end;
  end;
  end.
