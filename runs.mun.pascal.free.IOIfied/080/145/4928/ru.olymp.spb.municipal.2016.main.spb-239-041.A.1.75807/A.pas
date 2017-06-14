program A;
 var
     s:string;
     n:int64 ;
begin


readln(s);
while s[length(s)]='0' do
begin
delete(s,length(s),1);
end;
   n:=0;
while (pos('0',s)<>0) do
begin
  inc(n);
  delete(s,pos('0',s),1);
end;

  write(n);
readln();
readln();


end.

