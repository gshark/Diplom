program abc;
var a,b,n,s:integer;
begin
readln(a,b);




  for i:integer:=1 to a do
  begin
  for k:integer:=1 to a do
    if i<>k then
    s:=s+i*k;
  if s mod b = 0 then inc(n);
  end;
  

writeln(2*n);
end.
  
    

        