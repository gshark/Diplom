Program A1;
  VAR S:String;
  VAR n,k,i,a,b:Integer;
begin
n:=0;
k:=0;
readln(S);
i:=length(S);
while S[i]='0' do
begin
i:=i-1;
k:=k+1;
end;
For b:=1 to length(S) do
if S[b]='0' 
then
n:=n+1;
n:=n-k;
writeln(n);
end.  
 
  