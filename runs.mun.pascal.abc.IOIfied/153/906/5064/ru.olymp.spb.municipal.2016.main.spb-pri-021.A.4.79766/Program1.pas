program good;
var k,i,n:integer; t:text;f:string;

begin
read(k);

for i:=1 to 9 do
if (k mod 10)=0 then k:=k div 10
                else break;
str(k,f);

n:=0;
for i:=1 to length(f) do
begin
if (k mod 10)=0  then begin  n:=n+1; k:=k div 10; end
                 else k:=k div 10;

end;
write(n);
end.