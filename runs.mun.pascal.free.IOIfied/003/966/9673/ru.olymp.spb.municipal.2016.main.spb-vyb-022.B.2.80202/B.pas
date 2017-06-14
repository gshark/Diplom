var
n,p,q,i,j,k,ti,tj:integer;
ai:array[1..100] of integer;
aj:array[1..100] of integer;
begin
cls;
k:=1;
    read(n,p,q);
    for i:=1 to n do
    begin
        for  j:=1 to n do
        begin
            if (((j/i)>1/p) and ((j/i)<1/q)) then
            begin
            ai[k]:=i;
            aj[k]:=j;
            inc(k);
            end;
        end;
    end;
for i:=1 to k-1 do
for j:=i+1 to k do
if (ai[i]<>0) and (ai[j]<>0) then
     if ((aj[i]/ai[i])>(aj[j]/ai[j])) then
     begin
     ti:=ai[i];
     ai[i]:=ai[j];
     ai[j]:=ti;
     
     tj:=aj[i];
     aj[i]:=aj[j];
     aj[j]:=tj;
     end;
for i:=1 to k do
if (i>1) then begin
if (ai[i]<>0) and (ai[i]<>0) then
   if  (aj[i]/ai[i]<>aj[i-1]/ai[i-1])   then
   begin write(aj[i]); write('/'); writeln(ai[i]);end;
end else
begin write(aj[i]); write('/'); writeln(ai[i]);            end;
end.
