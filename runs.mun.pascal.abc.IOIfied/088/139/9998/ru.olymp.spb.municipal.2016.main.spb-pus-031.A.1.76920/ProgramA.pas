var i, j, n,t: int64;
       s : string;
       f : boolean;

begin
 readln(s);
 n := 0;
 
 t:=1;
 while s[t] = '0' do t +=1;
 
 for i:=t to length(s) do
 begin
  if s[i] = '0' then
  begin
    f := false;
    for j:=i+1 to length(s) do
     if s[j] <> '0' then f := true;
    if f = true then inc(n);
end;
 end;
 
 writeln(n);
end.