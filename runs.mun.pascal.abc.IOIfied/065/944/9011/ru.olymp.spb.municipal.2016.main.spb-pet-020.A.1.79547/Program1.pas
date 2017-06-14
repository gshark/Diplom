var m, i: integer;
    a: string;

begin
read (a);
m:=0;
while (ord(a[1])=ord('0')) do
  begin
    delete (a,1,1);
  end;
while (ord(a[length(a)])=ord('0')) do
    begin
    delete (a,(length(a)),1);
  end;
for i := 1 to length(a) do
  begin
    if ord(a[i]) = ord('0') then
      m += 1;
  end;
write (m);
end.


