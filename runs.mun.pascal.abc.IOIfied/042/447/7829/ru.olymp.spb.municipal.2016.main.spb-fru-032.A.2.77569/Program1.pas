Program nuli;
var
k:string;
kachestvo,p:integer;
Begin
read(k);
kachestvo:=0;
p:=0;

for i:integer:=1 to Length(k) do
Begin
   if k[i]='0' then 
   Begin
   p:=p+1;
   End
   else
   begin
   break;
   end;
End;
delete(k,1,p);

for i:integer:=Length(k) downto 1 do
Begin
   if k[i]='0' then 
   Begin
   delete(k,i,1)
   End
   else
   begin
   break;
   end
End;

writeln(k);

for j:integer:=1 to Length(k) do
  Begin
  if k[j]='0' then 
  Begin
  kachestvo:=kachestvo+1;
  End
End;
 
writeln(kachestvo);
End.