var
k,f,i,m,g:integer;
begin
f:=0;
m:=1;
readln(k);
 if (k mod 10)=0 then
   begin
   for i:=1 to k do
      begin
      k:=(k div 10);
      if (k mod 10)<>0 then break;
      end;
   end;
g:=k;
    for i:=1 to g do
    begin
      if ((g div 10)<>0) then m:=m+1;
      g:=(g div 10);
      if ((g div 10)=0) then break;
end;
if (k mod 10) <> 0 then
   begin 
   for i:= 1 to m do 
      begin
      k:=k div 10;
      if (k mod 10)=0 then f:=f+1;
      end;
   end;
writeln(f-1);
if (k=0) then f:=0;
end.
   
