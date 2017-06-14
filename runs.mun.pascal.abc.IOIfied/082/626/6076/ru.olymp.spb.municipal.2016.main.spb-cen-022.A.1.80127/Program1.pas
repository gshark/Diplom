var s,s1:string;i,k,n,m:integer;
begin
read(k);
s:=inttostr(k);
s1:='';
m:=0;
n:=0;
for i:=length(s) downto 1 do
  begin
    if m=0 then
      begin
        if s[i]<>'0' then
          begin
            m:=1;
          end;
      end;
    if m=1 then s1:=s1+s[i];
 end;
for i:=1 to length(s1) do
  if s1[i]='0' then
    n:=n+1;
writeln(n);    
end. 