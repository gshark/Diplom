const Debug = 0;
var NullStartCount,NullEndCount,Count,Num,i:longint;
    s: string;
begin
read(Num);
s:=IntToStr(Num);
NullStartCount:=0;
i:=1;
while s[i]='0' do
  begin
    NullStartCount:=NullStartCount+1;
    i:=i+1;
  end;
i:=length(s);

while s[i]='0' do
  begin
    NullEndCount:=NullEndCount+1;
    i:=i-1;
  end;
Count:=0;
for i:=1 to length(s) do
  begin
    if s[i]='0'then Count:=Count+1;
  end;
if Debug = 1 then write('Count = ',Count,'NullEndCount = ',NullEndCount,'NullStartCount = ',NullStartCount);
if NullStartCount<>length(s) then
  write(Count-NullEndCount-NullStartCount)
else write('0');
end.