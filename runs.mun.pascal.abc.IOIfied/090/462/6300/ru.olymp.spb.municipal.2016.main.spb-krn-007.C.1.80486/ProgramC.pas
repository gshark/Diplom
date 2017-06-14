program C;
var a:array[1..100,1..100] of char;
    kod,recod:char;
    n,i,j,k:byte;
    pravda:boolean;
begin
readln(n);
kod:='a';
a[1,1]:=kod;
a[1,n]:=kod;
a[n,1]:=kod;
a[n,n]:=kod;
for i:=2 to n-1 do
for j:=2 to n-1 do
  begin
  if (a[i-1,j-1]=kod) or (a[i-1,j+1]=kod) or (a[i+1,j+1]=kod) or (a[i+1,j+1]=kod) then
  a[i,j]:=kod;
  end;
recod:='a';
kod:='b';
if n mod 2=0 then begin
for k:=2 to n div 2 do
  begin
  for i:=1 to n do
  for j:=1 to n do
  if a[i,j]<>'a' then
    begin
    pravda:=true;
    if (i=1) and (j<>1) and (j<>n) then begin
    if (a[i+1,j]=recod) or (a[i,j+1]=recod) or (a[i,j-1] =recod) then a[i,j]:=kod; pravda:=false; end;
    if (i=n) and (j<>1) and (j<>n) then begin
    if (a[i-1,j]=recod) or (a[i,j+1]=recod) or (a[i,j-1] =recod) then a[i,j]:=kod; pravda:=false; end;
    if (j=1) and (i<>1) and (i<>n) then begin
    if (a[i+1,j]=recod) or (a[i-1,j]=recod) or (a[i,j+1]=recod) then a[i,j]:=kod; pravda:=false; end;
    if (j=n) and (i<>1) and (i<>n) then begin
    if (a[i+1,j]=recod) or (a[i-1,j]=recod) or (a[i,j-1]=recod) then a[i,j]:=kod; pravda:=false; end;
    if pravda then
    if (a[i,j+1]=recod) or (a[i,j-1]=recod) or (a[i+1,j]=recod) or (a[i-1,j]=recod) then
    a[i,j]:=kod;
    end;
  recod:=kod;
  if kod='z' then kod:='a' else inc(kod);
  end; end
else  
for k:=2 to (n div 2+1) do
  begin
  for i:=1 to n do
  for j:=1 to n do
  if a[i,j]<>'a' then
    begin
    pravda:=true;
    if (i=1) and (j<>1) and (j<>n) then begin
    if (a[i+1,j]=recod) or (a[i,j+1]=recod) or (a[i,j-1] =recod) then a[i,j]:=kod; pravda:=false; end;
    if (i=n) and (j<>1) and (j<>n) then begin
    if (a[i-1,j]=recod) or (a[i,j+1]=recod) or (a[i,j-1] =recod) then a[i,j]:=kod; pravda:=false; end;
    if (j=1) and (i<>1) and (i<>n) then begin
    if (a[i+1,j]=recod) or (a[i-1,j]=recod) or (a[i,j+1]=recod) then a[i,j]:=kod; pravda:=false; end;
    if (j=n) and (i<>1) and (i<>n) then begin
    if (a[i+1,j]=recod) or (a[i-1,j]=recod) or (a[i,j-1]=recod) then a[i,j]:=kod; pravda:=false; end;
    if pravda then
    if (a[i,j+1]=recod) or (a[i,j-1]=recod) or (a[i+1,j]=recod) or (a[i-1,j]=recod) then
    a[i,j]:=kod;
    end;
  recod:=kod;
  if kod='z' then kod:='a' else inc(kod);
  end;  
for i:=1 to n do
for k:=1 to n do
if k=n then writeln else
write(a[i,k]);
end.