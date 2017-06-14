var
        str:string;
        k,i:integer;
begin
readln(str);

k:=1;
while k>0 do if copy(str,k,1)='0' then delete(str,k,1) else k:=0;

k:=length(str);
while k>0 do if copy(str,k,1)='0' then begin
        delete(str,k,1); k:=k-1; end
        else k:=0;

k:=0;
for i:=1 to length(str) do
if copy(str,i,1)='0' then k:=k+1;

writeln(k);
end.