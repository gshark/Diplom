Program nuli;
var
k:string;
kachestvo,dlina:integer;
Begin
read(k);
kachestvo:=0;
dlina:=Length(k);

for i:integer:=dlina downto 1 do
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
dlina:=Length(k);

if k[1]='0' then
Begin
for i:integer:=1 to dlina do
Begin
  if k[i]<>'0' then 
  Begin
    for j:integer:=i to dlina do
      Begin
        if k[j]='0' then 
        Begin
        kachestvo:=kachestvo+1;
        End
      End;
  End
End;
End
else
Begin
for i:integer:=1 to dlina do
Begin
  if k[i]='0' then 
  Begin
  kachestvo:=kachestvo+1;
  End
End;
End;
writeln(kachestvo);
End.